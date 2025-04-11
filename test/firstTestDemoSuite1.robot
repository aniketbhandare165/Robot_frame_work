*** Settings ***
Library    SeleniumLibrary
Resource    ./login_page_test.robot
Resource    ../lib/common.robot
Suite Setup    Suite setup task
Suite Teardown    Suite teardown task
Test Setup    Perform test setup tasks
Test Teardown   Perform test teardown tasks

*** Variables ***

*** Test Cases ***
test_case1
    [Documentation]    first login page test case
    Validate UnSuccessfull login


    
