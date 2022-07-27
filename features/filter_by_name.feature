Feature: Test Plan

    Scenario: Bucket of Test Scenarios [Grouped together in one place]
        #comment Soumyajit Test
        Given I open the website

        # SCENARIO 1 - POSITIVE SCENARIO - VALID SEARCH
        When SCENARIO 1 - Valid Search - I enter the computer name "Acer Iconia"
        And SCENARIO 1 - Valid Search - User clicks on filer by name button
        Then SCENARIO 1 - Valid Search - one result is retuened with name Acer Iconia

        # SCENARIO 2 - NEGATIVE SCENARIO - INVALID SEARCH [RETURN NO RESULT]
        And SCENARIO 2 - Invalid Search - enter an invalid computer name "&*&*&*&"
        And SCENARIO 2 - Invalid Search - user clicks search
        Then SCENARIO 2 - Invalid Search - no result should be retruned

        # SCENARIO 3 - POSITIVE SCENARIO - ADD A COMPUTER [HAPPY FLOW]
        And SCENARIO 3 - Computer Add - user clicks add new computer button
        And SCENARIO 3 - Computer Add - enter a computer name "test_computer"
        And SCENARIO 3 - Computer Add - enter Introduced Date "2000-06-02"
        And SCENARIO 3 - Computer Add - enter Discontinued Date "2022-06-01"
        And SCENARIO 3 - Computer Add - choose company
        And SCENARIO 3 - Computer Add - create the computer
        Then SCENARIO 3 - Computer Add - successful computer creation

        # SCENARIO 4 - NEGATIVE SCENARIO - ADD A COMPUTER WITH SPECIAL CHARACTERS - STLL GETS ADDED
        And SCENARIO 4 - Special Character in Computer Name - user clicks add new computer
        And SCENARIO 4 - Special Character in Computer Name - enter all special characters in computer name "!@#$%^"
        And SCENARIO 4 - Special Character in Computer Name - enter Introduced Valid Date "2000-06-02"
        And SCENARIO 4 - Special Character in Computer Name - enter Discontinued Valid Date "2022-06-01"
        And SCENARIO 4 - Special Character in Computer Name - choose valid company
        And SCENARIO 4 - Special Character in Computer Name - create the computer with blank name
        Then SCENARIO 4 - Special Character in Computer Name - successful computer creation with blank name

        # SCENARIO 5 - NEGATIVE SCENARIO - ADD COMPUTER WITH ONLY DATA, NOT OTHER DATA - STILL GETS ADDED
        And SCENARIO 5 - Negative Computer Add Scenario - user clicks add new computer
        And SCENARIO 5 - Negative Computer Add Scenario - No computer name "No Other Fields"
        And SCENARIO 5 - Negative Computer Add Scenario - create computer
        Then SCENARIO 5 - Negative Computer Add Scenario - successful computer creation with blank name

        # SCENARIO 6 - NEGATIVE SCENARIO - ADD COMPUTER MANDATORY FILED VALIDATION
        And SCENARIO 6 - Computer Mandatory Field Validation - go back to add computer page
        And SCENARIO 6 - click add computer button
        Then SCENARIO 6 - validation of computer name mandatory message validation

        # SCENARIO 7 - NEGATIVE SCENARIO - DATE FORMAT VALIDATION FOR Introduced and Dicsontinuted Date
        And SCENARIO 7 - DATE FORMAT VALIDATION "Soumyajit Computer"
        And SCENARIO 7 - DATE FORMAT VALIDATION enter Introduced Valid Date "2000-13-02"
        And SCENARIO 7 - click add computer button1
        Then validation of incorrect date format
        And SCENARIO 7 - DATE FORMAT VALIDATION enter Introduced Valid Date "2000-12-02"
        And SCENARIO 7 - DATE FORMAT VALIDATION Discontinued Valid Date "2022-13-01"
        And SCENARIO 7 - click add computer button2
        Then validation of incorrect date format


