*** Settings ***
Library    Collections
Library    SeleniumLibrary
Library    BuiltIn
Library    locators.py

*** Keywords ***
Open the browser with the Mortgage payment url
    Create Webdriver    Chrome
    Go To    https://rahulshettyacademy.com/loginpagePractise/

Fill the login form
    Input Text        ${user_name_dialog_box}    rahulshettyacademy
    Input Password    ${password_dialog_box}    zaq12wsx
    Click Button    ${signin_button}

Wait until it checks and display error message
    Wait Until Element Is Visible    //strong[normalize-space('Incorrect')]

Verify error message is correct
    ${result}=     Get Text    //div[@class='alert alert-danger col-md-12']
    Should Be Equal As Strings    ${result}    Incorrect username/password.