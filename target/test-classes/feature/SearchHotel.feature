Feature: Verifying Adactin Hotel page

  Scenario Outline: Verifying Adactin Search Hotel page by selecting all fields
    Given User is on Adactin Homepage
    When User should login using "<username>" and "<password>"
    And User should enter "<Location>","<Hotels>","<Room Type>","<No of Rooms>","<Check in Date>","<Check out Date>","<Adults per Room>" and Click search
    Then User should verify "Select Hotel" message
 
    Examples: 
      | username  | password     | Location | Hotels         | Room Type | No of Rooms | Check in Date | Check out Date | Adults per Room |
      | santh1494 | iphone@1411S | London   | Hotel Sunshine | Standard  | 1 - One     | 26/09/2021    | 27/09/2021     | 1 - One         | 

      
  Scenario Outline: Verifying Adactin Search Hotel page by selecting only mandatory fields
    Given User is on Adactin Homepage
    When User should login using "<username>" and "<password>"
    And User should enter "<Location>","<No of Rooms>","<Check in Date>","<Check out Date>","<Adults per Room>" and Click search
    Then User should verify "Select Hotel" message
 
   Examples: 
      | username  | password     | Location | No of Rooms | Check in Date | Check out Date | Adults per Room | 
      | santh1494 | iphone@1411S | London   | 1 - One     | 26/09/2021    | 27/09/2021     | 1 - One         | 
      
     Scenario Outline: Verifying Adactin Search Hotel page with invalid checkin and check out dates
    Given User is on Adactin Homepage
    When User should login using "<username>" and "<password>"
    And User should enter "<Location>","<No of Rooms>","<Check in Date>","<Check out Date>","<Adults per Room>" and Click search
    Then User should verify "Check-in Date shall be before than Check-out Date" and  "Check-in Date shall be After than Check-out Date" error message
 
   Examples: 
      | username  | password     | Location | No of Rooms | Check in Date | Check out Date | Adults per Room | 
      | santh1494 | iphone@1411S | London   | 1 - One     | 26/09/2021    | 24/09/2021     | 1 - One         | 
      
        