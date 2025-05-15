*** Settings ***
Library    SeleniumLibrary
Resource    ./test_case1/Validate_unsuccessful_login.robot
Resource    ./test_case2/Validate_successful_login.robot
Resource    ./test_case3/Add_to_cart_item.robot
Resource    ../lib/common.robot
Suite Setup    Suite setup task
Suite Teardown    Suite teardown task
Test Setup    Perform test setup tasks     url=https://rahulshettyacademy.com/loginpagePractise/
Test Teardown   Perform test teardown tasks

*** Variables ***

*** Test Cases ***
test_case1
    [Documentation]    first login page test case
    Validate UnSuccessfull login

test_case2
    [Documentation]    validate successfull login
    Validate successfull login

test_case3
    [Documentation]    Add to cart phone
    # [Setup]    Disable Chrome Password Save Popup
    Add to cart item

    
