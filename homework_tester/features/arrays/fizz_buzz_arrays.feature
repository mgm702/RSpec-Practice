Feature: Sample Feature

  Scenario: Sample Scenario
    Given the file '../arrays/fizz_buzz_array.rb' exists and is executable
    And I run `../arrays/fizz_buzz_array.rb`

    Then the the FizzBuzz output should be shown
