Feature: Number of Seconds

  Scenario: Number of seconds
    Given the file '../numbers_letters_and_variables/number_of_seconds.rb' exists and is executable
    And I run `../numbers_letters_and_variables/number_of_seconds.rb`

    Then the output should contain "There are 60 seconds in a minute"
    And the output should contain "There are 60 minutes in an hour"
    And the output should contain "There are 24 hours in a day"
    And the output should contain "There are 7 days in a week"
    And the output should contain "That means there are:"
    And the output should contain "  3600 seconds in an hour,"
    And the output should match /^  86400 seconds in an? day,$/
    And the output should contain "  604800 seconds in a week"
    And the output should match /^That means when you turn 20, you've been alive for (628992000|631152000|630720000|631152000) seconds,$/
    And the output should match /^and if you make it to 100, you will have lived (3144960000|3155760000|3153600000|3155673600) seconds. Make them count!$/
