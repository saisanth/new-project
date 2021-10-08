Feature: Verifying Adactin Hotel page

  Scenario Outline: Cancel booking in Adactin page by Entering all fields
    Given User is on Adactin Homepage
    When User should login using "<username>" and "<password>"
    And User should enter "<Location>","<Hotels>","<Room Type>","<No of Rooms>","<Check in Date>","<Check out Date>","<Adults per Room>" and Click search
    And User should Book Hotel using "<First name>","<Last name>" and "<Billing address>"
    |card no          | card type        | Expiry month | Expiry year | cvv |
    |1234567890123456 | American Express | january      |        2022 | 111 |
    |1234567890123456 | VISA             | february     |        2021 | 222 |
    |1234567890123456 | Master Card      | march        |        2022 | 333 |
    And User should click "Booked Itinerary" Link
    And User should cancel Booking using OrderId
    Then User should verify "The Booking Has Been Cancelled" message

    Examples: 
      | username  | password     | Location | Hotels         | Room Type | No of Rooms | Check in Date | Check out Date | Adults per Room | First name | Last name | Billing address    | 
      | santh1494 | iphone@1411S | London   | Hotel Sunshine | Standard  | 1 - One     | 26/09/2021    | 27/09/2021     | 1 - One         | prasanth   | santh     | no 2 gandhi street | 
      
  Scenario Outline: Cancel booking in Adactin page by Without Entering any fields
    Given User is on the Adactin home page
    When User should login using "<username>" and "<password>" 
    And User should click "Booked Itinerary" Link
    And User should Cancel Booking using existing orderId
    Then User should verify "The Booking Has Been Cancelled" message

    Examples: 
      | username   | password     | Order Id | 
      | santh1494  | iphone@1411S |  CDBH9843|     
      