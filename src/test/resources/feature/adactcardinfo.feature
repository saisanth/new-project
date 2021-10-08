Feature: Booking and Cancelling the order on Adactin hotel webpage

  Scenario Outline: Fill all the details and get booking confirmation 
  Given User is on Adactin Homepage
  When User should login using "<username>" and "<password>" 
  And User should enter "<Location>","<Hotels>","<Room Type>","<No of Rooms>","<Check in Date>","<Check out Date>","<Adults per Room>" and Click search
  And User should select the hotel
  And User should enter "<First name>","<Last name>","<Billing address>"
    |card no          | card type        | Expiry month | Expiry year | cvv |
    |1234567890123456 | American Express | january      |        2022 | 111 |
    |1234567890123456 | VISA             | february     |        2021 | 222 |
    |1234567890123456 | Master Card      | march        |        2022 | 333 |
   
    Then User should verify "Booking Confirmation" as text message
   
    Examples: 
      | username   | password     | Location  | Hotels         | Room Type    | No of Rooms | Check in Date | Check out Date | Adults per Room | First name|Last name|Billing address   |
      | santh1494  | iphone@1411S | London    | Hotel Sunshine | Standard     | 1 - One     | 26/09/2021    | 27/09/2021     | 1 - One         |prasanth   |santh    |no 2 gandhi street|



  Scenario Outline: Verfying Adactin webpage without entering any fields
    Given User is on the Adactin home page
    When User should login using "<username>" and "<password>" 
    And user should search hotel using
    |Location|
    |London  |
   And User should book Hotel without entering any fields
   Then User should verify "Please Enter Your First Name","Please Enter Your Last Name","Please Enter Your Address"


    Examples: 
      | username   | password     |  
      | santh1494  | iphone@1411S |       
      
      
Feature: Login the ADACTIN website

  Scenario Outline: without filling dates,check whether any date error message is getting displayed
  
    Given user is on the adactin home page
    When user should enter "<username>" and "<password>" and click LOGIN
    And user should enter "<Location>" and should not enter CHECKIN DATE AND CHECKOUT DATE
    And user should click search
    Then user should confirm whether "Please select check-In Date" and "Please select Check-Out Date" is displayed 

    Examples: 
      | username  | password      | 
      | santh1494 | iphone@1411S  | 

