*** Settings ***
Resource    ../lib/commonLoginPageKeywords.robot


*** Keywords ***
Validate UnSuccessfull login
    Open the browser with the Mortgage payment url
    Fill the login form
    wait until it checks and display error message
    Verify error message is correct