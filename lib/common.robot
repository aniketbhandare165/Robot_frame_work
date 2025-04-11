*** Settings ***
Library     OperatingSystem
Library    SeleniumLibrary

*** Keywords ***
Suite setup task
    ${browser}=     Get Environment Variable    Open Browser    default=chrome
    Set Suite Variable    ${browser}
#    ${local_tmp_path}=    Join Path    %{workspace}    tmp
#    Set Suite Variable   ${local_tmp_path}

Suite teardown task
    Close Browser

Perform test setup tasks
    Create Webdriver    Chrome
    Go To    https://rahulshettyacademy.com/loginpagePractise/

Perform test teardown tasks
    Close All Browsers