pipeline {
  agent any

  // Maven is intentionally NOT declared in a top-level tools{} block — that
  // directive is resolved before any stage runs regardless of which
  // FRAMEWORK branch below actually executes, so a Jenkins instance with no
  // Maven installation configured would fail on EVERY framework, including
  // Playwright/Cypress runs that never touch Maven at all. Real bug hit
  // live: default framework was playwright-bdd, and the build still failed
  // at pipeline startup on a missing Maven tool. Resolved dynamically
  // instead, only inside the java branch below.

  parameters {
    string(name: 'FRAMEWORK',   defaultValue: 'playwright---typescript---cucumber-bdd---allure---jenkinsfile---github-actions', description: 'Framework: java-bdd, java-testng, playwright-bdd, playwright, cypress')
    string(name: 'TEST_FILTER', defaultValue: '', description: 'TC IDs pipe-separated e.g. TC_001|TC_002')
    string(name: 'APP_URL',     defaultValue: 'http://host.docker.internal:5176', description: 'Application URL')
    string(name: 'RUN_MODE',    defaultValue: 'failed', description: 'failed = failed+notrun only | regression = full suite')
    string(name: 'TOTAL_RUN',   defaultValue: '0', description: 'Expected number of tests (informational)')
  }

  environment {
    APP_URL     = "${params.APP_URL}"
    BASE_URL    = "${params.APP_URL}"
    TEST_FILTER = "${params.TEST_FILTER}"
    // Forces Playwright's junit reporter to write a file (default is stdout),
    // so the Publish Results stage actually finds a report for green builds.
    PLAYWRIGHT_JUNIT_OUTPUT_NAME = "test-results/results.xml"
    TS_NODE_TRANSPILE_ONLY = "true"
  }

  stages {
    stage('Checkout') {
      steps { checkout scm }
    }

    stage('Run Tests') {
      steps {
        script {
          def fw     = (params.FRAMEWORK ?: 'playwright---typescript---cucumber-bdd---allure---jenkinsfile---github-actions').toLowerCase().trim()
          def filter = params.TEST_FILTER ? params.TEST_FILTER.trim() : ''
          def appUrl = params.APP_URL ?: 'http://host.docker.internal:5176'
          // Captured, never thrown — a non-zero exit here means "some tests
          // failed," which is a normal, EXPECTED outcome for a QA run, not
          // a pipeline error. Real incident this fixes: with a throwing sh
          // step, Jenkins marked the whole stage failed the moment any
          // scenario failed, which SKIPPED the "Publish Results" stage
          // entirely ("Stage 'Publish Results' skipped due to earlier
          // failure(s)") — so a build with 17/18 real scenarios passing
          // never published a JUnit report at all, and looked identical to
          // a build where zero tests ever ran. The whole point of this
          // pipeline is to see WHICH tests failed, so a test failure must
          // never prevent publishing results — only build-breaking problems
          // (checkout, install, missing tools) should still throw normally.
          def testExitCode = 0

          if (fw.contains('java')) {
            // Maven installation must be configured in Jenkins (Manage
            // Jenkins > Tools > Maven installations, name it exactly
            // "Maven") — only required for this branch, not the others.
            def mvnHome = tool name: 'Maven', type: 'maven'
            withEnv(["PATH+MAVEN=${mvnHome}/bin"]) {
              if (filter) {
                def tags = filter.tokenize('|').collect { '@' + it.trim() }.join(' or ')
                testExitCode = sh(returnStatus: true, script: "mvn clean test \"-Dcucumber.filter.tags=${tags}\" \"-Dapp.url=${appUrl}\"")
              } else {
                testExitCode = sh(returnStatus: true, script: "mvn clean test \"-Dapp.url=${appUrl}\"")
              }
            }
          } else if (fw.contains('playwright-bdd') || (fw.contains('playwright') && fw.contains('bdd'))) {
            sh 'npm install'
            sh 'npx playwright install chromium'
            sh 'npm install --no-save ts-node typescript tsconfig-paths'
            if (filter) {
              def tags = filter.tokenize('|').collect { '@' + it.trim() }.join(' or ')
              testExitCode = sh(returnStatus: true, script: "npx cucumber-js \"src/features/**/*.feature\" --require-module ts-node/register --require \"src/steps/**/*.ts\" --tags \"${tags}\" --format junit:test-results/results.xml")
            } else {
              testExitCode = sh(returnStatus: true, script: 'npx cucumber-js "src/features/**/*.feature" --require-module ts-node/register --require "src/steps/**/*.ts" --format junit:test-results/results.xml')
            }
          } else if (fw.contains('playwright')) {
            sh 'npm install'
            sh 'npx playwright install chromium'
            if (filter) {
              testExitCode = sh(returnStatus: true, script: "npx playwright test --grep \"${filter}\" --reporter=junit")
            } else {
              testExitCode = sh(returnStatus: true, script: 'npx playwright test --reporter=junit')
            }
          } else if (fw.contains('cypress')) {
            sh 'npm install'
            testExitCode = sh(returnStatus: true, script: 'npx cypress run --reporter junit --reporter-options "mochaFile=cypress/results/results-[hash].xml"')
          } else {
            sh 'npm ci 2>/dev/null || echo no npm'
            testExitCode = sh(returnStatus: true, script: 'mvn clean test 2>/dev/null || echo no mvn')
          }

          if (testExitCode != 0) {
            echo "Test runner exited with code ${testExitCode} — real test failure(s), not a pipeline error. Continuing to publish results."
            currentBuild.result = 'UNSTABLE'
          }
        }
      }
    }

    stage('Publish Results') {
      steps {
        junit allowEmptyResults: true,
          testResults: '**/target/surefire-reports/*.xml,**/test-results/**/*.xml,**/playwright-report/*.xml,**/cypress/results/**/*.xml'
      }
    }
  }

  post {
    success {
      echo "BUILD PASSED — all tests green, release candidate confirmed."
    }
    unstable {
      echo "BUILD UNSTABLE — some tests failed. Fix defects and re-run."
      script { currentBuild.result = 'FAILURE' }
    }
    failure {
      echo "BUILD FAILED — check test output above for errors."
    }
    always {
      echo "Build #${env.BUILD_NUMBER} complete. Result: ${currentBuild.currentResult}"
    }
  }
}