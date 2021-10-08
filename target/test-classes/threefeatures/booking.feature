Feature: login the ADACTIN website

  Scenario Outline: confirming the hotel booking with all fields entered
  
    Given user is on the adactin home page
    When user should enter "<username>" and "<password>" and click login
    And user should enter "<Location>","<Hotels>","<Room Type>","<No of Rooms>","<Check in Date>","<Check out Date>","<Adults per Room>" and Click search
    And user should enter "<First name>","<Last name>","<Billing address>","<Card no>","<Card type>","<Expiry Month>","<Expiry Year>","<cvv>" and Click book now
    Then user should get booking confirmation by checking whether "booking confirmation" is displayed

    Examples: 
      | username   | password     | Location    | Hotels         | Room Type    | No of Rooms | Check in Date | Check out Date | Adults per Room | First name  | Last name | Billing address | Card no          | Card type        | Expiry Month | Expiry Year | cvv  |
      | santh1494  | iphone@1411S | London      | Hotel Sunshine | Standard     | 1 - One     | 26/09/2021    | 27/09/2021     | 1 - One         | prasanth    | s         | periyar nagar   | 1234567890123456 | VISA             | July         |        2021 | 4444 |

      
#Feature: login the ADACTIN website
#
  #Scenario Outline: verify whether all 7 error messages displayed in booking page
  #
    #Given user is on the adactin home page
    #When user should enter "<username>" and "<password>" and click login
    #And user should enter "<Location>","<Hotels>","<Room Type>","<No of Rooms>","<Check in Date>","<Check out Date>","<Adults per Room>" and Click search
    #And user should not enter any fields and just click book now
    #Then user should check whether "please Enter your First Name","please Enter your Last Name","please Enter your Addresss","please Enter your 16 Digit credit card no "
#
    #Examples: 
      #| username   | password     | Location    | Hotels         | Room Type    | No of Rooms | Check in Date | Check out Date | Adults per Room |
      #| santh1494  | iphone@1411S | London      | Hotel Sunshine | Standard     | 1 - One     | 26/09/2021    | 27/09/2021     | 1 - One         |  