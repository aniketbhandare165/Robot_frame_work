*** Settings ***
Library    Collections
Library     OperatingSystem
Library    SeleniumLibrary
Library    BuiltIn
Library    String
Variables    locators.py

*** Variables ***


*** Keywords ***
Fill the login form
    [Arguments]    ${user_name}    ${password}
    Input Text        ${user_name_dialog_box}    ${user_name}
    Input Password    ${password_dialog_box}    ${password}
    Click Button    ${signin_button}

Verify error message is correct
    Wait Until Element Is Visible    //strong[normalize-space('Incorrect')]
    ${result}=     Get Text    ${error_message_login}
    Should Be Equal As Strings    ${result}    Incorrect username/password.

Verify successfull login
    Wait Until Element Is Visible    //a[normalize-space()='ProtoCommerce']
    ${title}=     Get Text    ${page_title}
    Should Be Equal As Strings    ${title}    ProtoCommerce

