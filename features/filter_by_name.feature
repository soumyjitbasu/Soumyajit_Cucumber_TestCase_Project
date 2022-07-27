Feature: Filter

    Scenario: P1 Test Cases
        Given I open the website

        # SCENARIO 1 - POSITIVE SCENARIO - VALID SEARCH
        When I enter the computer name "Acer Iconia"
        And User clicks on filer by name button
        Then one result is retuened with name Acer Iconia

        # SCENARIO 2 - NEGATIVE SCENARIO - INVALID SEARCH [RETURN NO RESULT]
        And enter an invalid computer name "&*&*&*&"
        And user clicks search
        Then no result should be retruned

        # SCENARIO 3 - POSITIVE SCENARIO - ADD A COMPUTER [HAPPY FLOW]
        And user clicks add new computer button
        And enter a computer name "test_computer"
        And enter Introduced Date "2000-06-02"
        And enter Discontinued Date "2022-06-01"
        And choose company
        And create the computer
        Then successful computer creation

        # SCENARIO 4 - NEGATIVE SCENARIO - ADD A COMPUTER WITH SPECIAL CHARACTERS - STLL GETS ADDED
        And user clicks add new computer
        And enter all special characters in computer name "!@#$%^"
        And enter Introduced Valid Date "2000-06-02"
        And enter Discontinued Valid Date "2022-06-01"
        And choose valid company
        And create the computer with blank name
        Then successful computer creation with blank name

        # SCENARIO 5 - NEGATIVE SCENARIO - ADD COMPUTER WITH ONLY DATA, NOT OTHER DATA - STILL GETS ADDED
        And user clicks add new computer
        And enter all special characters in computer name "No Other Fields"
        And create the computer with blank name
        Then successful computer creation with blank name

        # SCENARIO 6 - NEGATIVE SCENARIO - ADD COMPUTER MANDATORY FILED VALIDATION
        And go back to add computer page
        And click add computer button
        Then validation of computer name mandatory message validation

        # SCENARIO 7 - NEGATIVE SCENARIO - DATE FORMAT VALIDATION FOR Introduced and Dicsontinuted Date
        And enter all special characters in computer name "Soumyajit Computer"
        And enter Introduced Valid Date "2000-13-02"
        And click add computer button1
        Then validation of incorrect date format
        And enter Introduced Valid Date "2000-12-02"
        And enter Discontinued Valid Date "2022-13-01"
        And click add computer button2
        Then validation of incorrect date format

