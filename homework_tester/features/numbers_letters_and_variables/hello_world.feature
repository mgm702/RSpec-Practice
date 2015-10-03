Feature: Hello World Homework

  Scenario: Hello World
    Given the file '../numbers_letters_and_variables/hello_world.rb' exists and is executable
    And I run `../numbers_letters_and_variables/hello_world.rb`

    Then the output should contain "Hello World"
