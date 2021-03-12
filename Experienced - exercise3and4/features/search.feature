Feature: Google Search

  Scenario: Normal search
    Given I am on the Google Home Page
    When I search for 'Watir'
    Then I see over 500000 results

  Scenario: Typo in search
    Given I am on the Google Home Page
    When I search for 'asension'
    Then I am informed that I am shown results for 'ascension'
    And I have the option to search for 'asension' instead

  # TODO: Complete the scenario
  Scenario: Convert 10 inches to meters
    Given I am on the Google Home Page
    When I search for '10 inches'
    And I select 'Meter' as target unit
    Then I am shown that '10' inches is equal to '0.254' meter





