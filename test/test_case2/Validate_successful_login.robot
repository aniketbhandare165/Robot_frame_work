*** Settings ***
Resource    ../../lib/commonLoginPageKeywords.robot



*** Keywords ***
Validate successfull login
    ${error_message_login}    Set Variable    //div[@class='alert alert-danger col-md-12']
    Fill the login form    user_name=rahulshettyacademy    password=learning
    Verify successfull login 
    
