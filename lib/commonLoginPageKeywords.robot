*** Settings ***
Library    Collections
Library     OperatingSystem
Library    SeleniumLibrary
Library    BuiltIn
Variables    locators.py

*** Variables ***
${error_message_login}    //div[@class='alert alert-danger col-md-12']
${user_name}=    rahulshettyacademy
${invalid_password}=   zaq12wsx
${url}=     https://rahulshettyacademy.com/loginpagePractise/

*** Keywords ***
Fill the login form
    Input Text        ${user_name_dialog_box}    ${user_name}
    Input Password    ${password_dialog_box}    ${invalid_password}
    Click Button    ${signin_button}

Verify error message is correct
    Wait Until Element Is Visible    //strong[normalize-space('Incorrect')]
    ${result}=     Get Text    ${error_message_login}
    Should Be Equal As Strings    ${result}    Incorrect username/password.