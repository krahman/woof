Feature: User page

  Scenario: Viewing application's user page
    Given there's a user called "Siberian" "Husky" having email "siberian.husky@anjing.com"
    When I am on the user page
    Then I should see "Siberian" "Husky" having email "siberian.husky@anjing.com"