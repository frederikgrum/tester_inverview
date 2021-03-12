Feature: EU Countries

  Scenario Outline: Verify joined date
    Given I am on the Google Home Page
    And I have searched for 'the eu members countries'
    And I have selected the list of eu member countries page
    Then Verify '<countries>' is joined 'EU member country: since <date>'
    Examples:
      | countries | date           |
      | bulgaria  | 1 January 2007 |
      | denmark   | 1 January 1973 |




