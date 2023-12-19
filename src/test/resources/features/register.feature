@regression
Feature:NopCommerce demo Login Test
  As a user,I am able to Register successfully


  @author_Naren @smoke  @regression
  Scenario: Verify User Should Navigate To Register Page Successfully
    Given     I am on home page
    When      I Click on Register Link
    Then      I Verify "Register" text

  @author_Naren @sanity
  Scenario Outline: Verify That FirstName LastName EmailPassword And ConfirmPassword Fields Are Mandatory
    Given     I am on home page
    When      I Click on Register Link
    And       Click on "REGISTER" button
    Then      Verify the error message "<errormessage>"
    Examples:  | errorMessage |
    |First name is required.|
    |Last name is required. |
    |Email is required.     |
    |Password is required.  |
    |Password is required.  |

  @author_Naren @regression
  Scenario: Verify That User Should Create Account Successfully
    Given     I am on Home Page
    When      I Click on Register Link
    And       Select gender "male"
    And       Enter firstname "Narendra"
    And       Enter lastname "Dhaduk"
    And       Select day "26"
    And       Select month "04"
    And       Select year "1992"
    And       Enter email "naren123@gmail.com"
    And       Enter password "Naren123"
    And       Enter Confirm Password "Naren123"
    And       Click on "REGISTER" button
    Then      Verify message "Your registration completed"