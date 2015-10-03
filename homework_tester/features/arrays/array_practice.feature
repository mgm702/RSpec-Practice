Feature: Arrays Practice

  Scenario: Practice with Arrays
    Given the file '../arrays/array_practice.rb' exists and is executable
    And I run `../arrays/array_practice.rb`

    Then the output should contain "1...2...3...4...5...6...7...8...9...10..."
    And the output should contain "T-10, 9, 8, 7, 6, 5, 4, 3, 2, 1...  BLASTOFF!"
    And the output should contain "The last element is 10"
    And the output should contain "The first element is 1"
    And the output should contain "The third element is 3"
    And the output should contain "The element with an index of 3 is 4"
    And the output should contain "The second from last element is 9"
    And the output should contain "The first four elements are '1, 2, 3, 4'"
    And the output should contain "If we delete 5, 6 and 7 from the array, we're left with [1,2,3,4,8,9,10]"
    And the output should contain "If we add 5 at the beginning of the array, we're left with [5,1,2,3,4,8,9,10]"
    And the output should contain "If we add 6 at the end of the array, we're left with [5,1,2,3,4,8,9,10,6]"
    And the output should contain "Only the elements [9, 10] are > 8."
    And the output should contain "If we remove all the elements, then the length of the array is 0"
