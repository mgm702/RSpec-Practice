Feature: Sample Feature

  Scenario: Sample Scenario
    Given the file '../methods_and_flow_control/string_practice.rb' exists and is executable
    And I run `../methods_and_flow_control/string_practice.rb`

    Then the output should contain "this is a string to practice with"
    And the output should contain "This is a string to practice with"
    And the output should contain "THIS IS A STRING TO PRACTICE WITH"
    And the output should contain "This is a 'string' to practice with"
    And the output should contain "The string 'this is a string to practice with' has 33 characters"
    And the output should contain "htiw ecitcarp ot gnirts a si siht"
    And the output should contain "practice practice practice!"
