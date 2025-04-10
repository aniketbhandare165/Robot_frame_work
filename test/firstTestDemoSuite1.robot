*** Settings ***
Library    SeleniumLibrary
Resource    ./login_page_test.robot

*** Variables ***

*** Test Cases ***
test_case1
    [Documentation]    first login page test case
    Validate UnSuccessfull login


    
