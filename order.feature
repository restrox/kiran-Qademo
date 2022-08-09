Feature: Dish order feature

  As a waiter
  I want to order a dish
  So that I can serve it to a customer

  Scenario: Order placement of a multiple dish
    Given the user is a registered waiter
    And the user is logged in
    When the user selects add order
    And the user selects customer 'customer a'
    And the user selects the following dishes:
      | dish   | quantity | remarks |
      | dish a | 1        | Good    |
      | dish b | 2        | Bad     |
      | dish c | 3        | Average |
      | dish d | 4        | Good    |
    And the user confirms the order
    Then the user should see following data in the order history
      | dish   | quantity | remarks |
      | dish a | 1        | Good    |
      | dish b | 2        | Bad     |
      | dish c | 3        | Average |
      | dish d | 4        | Good    |

