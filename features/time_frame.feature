Feature: Time frame

  Scenario: Set end date automatically
    Given I'm logged in as an admin
    When I am in the 'create silent auction' page
    Then I can see the end date set as 2 weeks from now

  Scenario: Automatically close ended auction
    Given there are valid auctions as the following:
      | title        | description      | min_price | created date |
      | imac         | desktop computer | 1000      | 15 days ago  |
      | macbook pro  | laptop computer  | 300       | 14 days ago  |
      | macbook air  | mini computer    | 250       | 10 days ago  |
    When I view all closed auctions
    Then I see the following auction has been closed automatically
      | title        | description      | min_price |
      | imac         | desktop computer | 1000      |