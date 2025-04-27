*** Settings ***
Resource    ../lib/commonLoginPageKeywords.robot

*** Keywords ***
Validate UnSuccessfull login
    Fill the login form
    Verify error message is correct