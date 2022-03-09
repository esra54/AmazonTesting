@demoend2endApi

Feature: Trello api crud operations for board
  Scenario: create_board
    Given Send POST request for create "a" board
    Then  Assert status code 200
    And Assert board name is "a"

    @api2
    Scenario: get_board(read)
      Then read the created board
      And assert board is existed

  @api3
      Scenario: update_board
        Then update the created board name
        And assert board name is updated

    @api4
    Scenario: create list
      Then  from created board ,creates list name as "bugList1"
      Then  Assert status code for list is 200
      And   verifies list is created as "bugList1"

      @api5
      Scenario: create card
      Given creates card "this is my first card with API"
      And   verifies card is created

      @api6
      Scenario: delete_board
       Then delete the created board
       And assert board name is deleted
