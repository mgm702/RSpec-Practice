Feature: Sample Feature

  Scenario: Sample Scenario
    Given the file '../methods_and_flow_control/fizz_buzz.rb' exists and is executable
    And I run `../methods_and_flow_control/fizz_buzz.rb`

    Then the the FizzBuzz output should be shown
