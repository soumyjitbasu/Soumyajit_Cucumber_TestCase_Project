Feature: Filter

Scenario: P1 Test Cases
    Given I open the website
    
    # SCENARIO 1 - VALID SEARCH
    When I enter the computer name "Acer Iconia"
    And User clicks on filer by name button
    Then one result is retuened with name Acer Iconia

    # SCENARIO 2 - INVALID SEARCH [RETURN NO RESULT]
    And enter an invalid computer name "&*&*&*&"
    And user clicks search
    Then no result should be retruned

    # SCENARIO 3 - ADD A COMPUTER [HAPPY FLOW]
    And user clicks add new computer button
    And enter a computer name "test_computer"
    And enter Introduced Date "2000-06-02"
    And enter Discontinued Date "2022-06-01"
    And choose company
    And create the computer
    Then successful computer creation

    # SCENARIO 4 - ADD COMPUTER MANDATORY FILED VALIDATION
    And go back to add computer page
    And click add computer button
    Then validation of computer name mandatory message validation

