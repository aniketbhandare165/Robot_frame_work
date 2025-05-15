*** Settings ***
Resource    ../../lib/commonLoginPageKeywords.robot

*** Keywords ***
Validate UnSuccessfull login
    Fill the login form    user_name=rahulshettyacademy   password=zaq12wsx
    Verify error message is correct