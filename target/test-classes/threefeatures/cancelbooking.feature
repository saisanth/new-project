Feature: login the ADACTIN website

  Scenario Outline: cancel the booking order
  
    Given user is on the adactin home page
    When user should enter "<username>" and "<password>" and click login
    And user should enter "<Location>","<Hotels>","<Room Type>","<No of Rooms>","<Check in Date>","<Check out Date>","<Adults per Room>" and Click search
    And user should select the hotel by entering "<First name>","<Last name>","<Billing address>","<Card no>","<Card type>","<Expiry Month>","<Expiry Year>","<cvv>" and Click book now
    And user should note the order ID and click booked itinerary and enter the order ID in search and click go
    Then user should cancel the booking and confirm "The booking has been cancelled" is displayed
    Examples: 
      | username   | password    | Location    | Hotels         | Room Type    | No of Rooms | Check in Date | Check out Date | Adults per Room |
      | santh1494 | iphone@1411S | London      | Hotel Sunshine | Standard     | 1 - One     | 26/09/2021    | 27/09/2021     | 1 - One         | 
      
      Feature: Login the ADACTIN website

  Scenario Outline: confirming the hotel booking with all fields entered

    Given user is on the adactin home page  
    When user should enter "<username>" and "<password>" and click LOGIN
    And user should click "Booked Itinerary"
    And user should copy any user ID and paste it in search box and click go
    And user should select the order and  click "cancel selected"
    Then user should cancel the booking and confirm "The booking has been cancelled" is displayed 

    Examples: 
      | username   | password     | 
      | santh1494 | iphone@1411S  | 
      