Feature: Arrays Practice

  @no-clobber
  Scenario: Practice with Arrays
    Given the file '../methods_and_recursion/mad_libs.rb' exists and is executable
    And The default aruba timeout is 60 seconds
    And I run `../methods_and_recursion/mad_libs.rb` interactively
#    And I wait for stdout to contain "Give me an adjective: "

    When I type "horrible"
#    And I wait for output to contain "Give me another adjective: "

    When I type "smelly"
#    And I wait for output to contain "Give me a noun: "

    When I type "plane"
#    And I wait for output to contain "Give me another noun: "

    When I type "train"
#    And I wait for output to contain "Give me a plural noun: "

    When I type "computers"
#    And I wait for output to contain "Give me a game: "

    When I type "Jeopardy"
#    And I wait for output to contain "Give me another plural noun: "

    When I type "school busses"
#    And I wait for output to contain "Give me a verb ending in 'ing': "

    When I type "yelling"
#    And I wait for output to cont/ain "Give me another verb ending in 'ing': "

    When I type "sleeping"
#    And I wait for output to contain "Give me another plural noun: "

    When I type "bicycles"
#    And I wait for output to contain "Give me another verb ending in 'ing': "

    When I type "swimming"
#    And I wait for output to contain "Give me another noun: "

    When I type "tree"
#    And I wait for output to contain "Give me a plant: "

    When I type "cactus"
#    And I wait for output to contain "Give me a part of the body: "

    When I type "elbow"
#    And I wait for output to contain "Give me a place: "

    When I type "Paris"
#    And I wait for output to contain "Give me another verb ending in 'ing': "

    When I type "dreaming"
#    And I wait for output to contain "Give me another adjective: "

    When I type "awesome"
#    And I wait for input to contain "Give me a number: "

    And I type "566"
#    And I wait for input to contain "Give me another plural noun: "

    And I type "buckets"
#    And I wait for input to contain "Here is your madlib:"

    Then my generated madlib should be complete
