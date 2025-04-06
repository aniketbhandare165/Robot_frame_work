*** Settings ***
Documentation    To validate the Login form     
Library    Collections
Library    SeleniumLibrary

*** Test Cases ***
Validate UnSuccessfull login
    Open the browser with the Mortgage payment url
#    Fill the login form
#    wait until it checks and display error message
#    verify error message is correct

*** Keywords ***
Open the browser with the Mortgage payment url
    Create Webdriver    Chrome
    Go To    https://rahulshettyacademy.com/loginpagepractise/