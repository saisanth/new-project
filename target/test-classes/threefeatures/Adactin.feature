Feature: Login the ADACTIN website

  Scenario Outline: Fill all the details and check whether SEARCH HOTEL is displayed 
    Given user is on the adactin home page
    When user should enter "<username>" and "<password>" and click LOGIN
    And user should enter "<Location>","<Hotels>","<Room Type>","<No of Rooms>","<Check in Date>","<Check out Date>","<Adults per Room>" and Click search
    Then user should confirm whether "select hotel" is displayed in next page

    Examples: 
      | username   | password     | Location    | Hotels         | Room Type    | No of Rooms | Check in Date | Check out Date | Adults per Room | 
      | santh1494  | iphone@1411S | London      | Hotel Sunshine | Standard     | 1 - One     | 26/09/2021    | 27/09/2021     | 1 - One         |


Feature: Login the ADACTIN website

  Scenario Outline: Fill only mandatory fields and check whether SEARCH HOTEL is displayed 
    Given user is on the adactin home page
    When user should enter "<username>" and "<password>" and click LOGIN
    And user should enter "<Location>","<Hotels>","<Room Type>","<No of Rooms>","<Check in Date>","<Check out Date>","<Adults per Room>" and Click search
    Then user should confirm whether "select hotel" is displayed in next page

    Examples: 
      | username   | password     | Location    | Hotels         | Room Type    | No of Rooms | Check in Date | Check out Date | Adults per Room | 
      | santh1494  | iphone@1411S | London      | Hotel Sunshine | Standard     | 1 - One     | 26/09/2021    | 27/09/2021     | 1 - One         |      
      
      
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

Feature: Login the ADACTIN website

  Scenario Outline: without filling location, check whether any location error message is getting displayed
  
    Given user is on the adactin home page
    When user should enter "<username>" and "<password>" and click LOGIN
    And user should not enter any fields
    And user should click search
    Then user should confirm whether "Please select a location" is displayed 

    Examples: 
      | username  | password      | 
      | santh1494 | iphone@1411S  | 
      
      
      
      
      
      
      
            