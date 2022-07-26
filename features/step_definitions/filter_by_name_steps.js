const {Given, When, Then} = require('cucumber');
const { Selector, t } = require('testcafe');

Given ('I open the website', async function(){
    
    await testController.navigateTo("http://computer-database.herokuapp.com");

});

When ('I enter the computer name {string}', async function(computer_name){

    let input = Selector('input#searchbox').with({boundTestRun:testController});
    await testController
    .typeText(input,computer_name);

});

When ('User clicks on filer by name button', async function() {

    let button = Selector('input#searchsubmit').with({boundTestRun:testController});
    await testController
    .click(button);
    
});

Then ('one result is retuened with name Acer Iconia', async function(){
    let section = Selector('section#main').with({boundTestRun:testController});
    await testController.expect(section.innerText).contains('One computer found');
});


When ('enter an invalid computer name {string}', async function(invalid_computer_name){

    let input = Selector('input#searchbox').with({boundTestRun:testController});
    await testController
    .typeText(input,invalid_computer_name);
});

When ('user clicks search', async function() {

    let button = Selector('input#searchsubmit').with({boundTestRun:testController});
    await testController
    .click(button);
    
});

Then ('no result should be retruned', async function(){
    let section = Selector('section#main').with({boundTestRun:testController});
    await testController.expect(section.innerText).contains('No computers found');
});



When ('user clicks add new computer button', async function() {

    let add = Selector('a#add').with({boundTestRun:testController});
    await testController
    .click(add);
});

When ('enter a computer name {string}', async function(computer_name_valid){
    let computer_name = Selector('input#name').with({boundTestRun: testController});
    await testController
    .typeText(computer_name, computer_name_valid)
});

When ('enter Introduced Date {string}', async function(introduced_date){
    let intro_date = Selector('input#introduced').with({boundTestRun: testController});
    await testController
    .typeText(intro_date, introduced_date)
});

When ('enter Discontinued Date {string}', async function(discontinued_date){
    let disc_date = Selector('input#discontinued').with({boundTestRun: testController});
    await testController
    .typeText(disc_date, discontinued_date)
});

When ('choose company', async function(){
    let company = Selector('select#company').with({boundTestRun: testController});
    let company_option = company.find('option');
    await testController
    .click(company)
    .click(company_option.withText('RCA'))
});

When ('create the computer', async function() {

    await testController
    .pressKey("tab");
    await testController
    .wait(2000);
    await testController
    .pressKey("enter");
 
});

Then ('successful computer creation', async function(){
    let successmessage = Selector('div').child('strong').with({boundTestRun: testController})
    await testController.expect(successmessage.innerText).contains('Done!');
});



When ('user clicks add new computer', async function() {

    let add = Selector('a#add').with({boundTestRun:testController});
    await testController
    .click(add);
});

When ('enter all special characters in computer name {string}', async function(computer_name_valid){
    let computer_name = Selector('input#name').with({boundTestRun: testController});
    await testController
    .typeText(computer_name, computer_name_valid)
});

When ('enter Introduced Valid Date {string}', async function(introduced_date){
    let intro_date = Selector('input#introduced').with({boundTestRun: testController});
    await testController
    .typeText(intro_date, introduced_date)
});

When ('enter Discontinued Valid Date {string}', async function(discontinued_date){
    let disc_date = Selector('input#discontinued').with({boundTestRun: testController});
    await testController
    .typeText(disc_date, discontinued_date)
});

When ('choose valid company', async function(){
    let company = Selector('select#company').with({boundTestRun: testController});
    let company_option = company.find('option');
    await testController
    .click(company)
    .click(company_option.withText('RCA'))
});

When ('create the computer with blank name', async function() {

    await testController
    .pressKey("tab");
    await testController
    .wait(2000);
    await testController
    .pressKey("enter");
 
});

Then ('successful computer creation with blank name', async function(){
    let successmessage = Selector('div').child('strong').with({boundTestRun: testController})
    await testController.expect(successmessage.innerText).contains('Done!');
});

When ('go back to add computer page', async function() {

    let add = Selector('a#add').with({boundTestRun:testController});
    await testController
    .click(add);
});

When ('click add computer button', async function() {

    await testController
    .pressKey("tab");
    await testController
    .wait(200);
    await testController
    .pressKey("tab");
    await testController
    .wait(200);
    await testController
    .pressKey("tab");
    await testController
    .wait(200);
    await testController
    .pressKey("tab");
    await testController
    .wait(200);
    await testController
    .pressKey("tab");
    await testController
    .wait(200);
    await testController
    .pressKey("tab");
    await testController
    .wait(200);

    await testController
    .pressKey("enter");
 
});

Then ('validation of computer name mandatory message validation', async function(){
    let validation_msg = Selector('span').with({boundTestRun: testController})
    await testController.expect(validation_msg.innerText).contains('Required');
});

Then ('validation of incorrect date format', async function(){
    let date_filed = Selector('span').nth(1).with({boundTestRun: testController})
    await testController.expect(date_filed.innerText).contains('Date');
});

When ('click add computer button1', async function() {

    await testController
    .pressKey("tab");
    await testController
    .wait(200);
    await testController
    .pressKey("tab");
    await testController
    .wait(200);
    await testController
    .pressKey("tab");
    await testController
    .wait(200);
    await testController
    .pressKey("enter");
 
});

When ('click add computer button2', async function() {

    await testController
    .pressKey("tab");
    await testController
    .wait(200);
    await testController
    .pressKey("tab");
    await testController
    .pressKey("enter");
 
});