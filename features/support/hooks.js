
const fs = require('fs');
const createTestCafe = require('testcafe');
const testControllerHolder = require('./testControllerHolder');
const {AfterAll, setDefaultTimeout, Before, After} = require('cucumber');
const timeout = 100000;
let cafeRunner = null;



function createTestFile() {
    fs.writeFileSync('cucumbertest.js',
        'import testControllerHolder from "./features/support/testControllerHolder.js";\n\n' +
        'fixture("cucumberfixture")\n' +
        'test\n' +
        '("test", testControllerHolder.capture)')
}


function runTest(browser) {
    createTestCafe('localhost', 1337, 1338)
        .then(function(tc) {
            cafeRunner = tc;
            const runner = tc.createRunner();
            return runner
                .src('./cucumbertest.js')
                .screenshots('reports/screenshots/', true)
                .browsers(browser)
                .run();
        });

}

setDefaultTimeout(timeout);



Before(function() {

    runTest('firefox');

    createTestFile();

    return this.waitForTestController.then(function(testController) {

        return testController.maximizeWindow();

    });

});



After(function() {

    fs.unlinkSync('cucumbertest.js');

    testControllerHolder.free();

});


AfterAll(function() {

    let intervalId = null;

    function waitForTestCafe() {

        intervalId = setInterval(checkLastResponse, 500);

    }

    function checkLastResponse() {

        if (testController.testRun.lastDriverStatusResponse === 'test-done-confirmation') {

            cafeRunner.close();

            process.exit();

        }

    }

    waitForTestCafe();

});