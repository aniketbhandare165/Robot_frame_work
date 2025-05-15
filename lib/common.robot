*** Settings ***
Library     OperatingSystem
Library    SeleniumLibrary
Resource    ./commonLoginPageKeywords.robot

*** Keywords ***
Suite setup task
    ${browser}=     Get Environment Variable    Open Browser    default=chrome
    Set Suite Variable    ${browser}
#    ${local_tmp_path}=    Join Path    %{workspace}    tmp
#    Set Suite Variable   ${local_tmp_path}

# Disable Chrome Password Save Popup
#     ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
#     Call Method    ${options}    add_argument    --disable-save-password-bubble
#     ${prefs}=      Evaluate    {"credentials_enable_service": False, "profile.password_manager_enabled": False}
#     Call Method    ${options}    add_experimental_option    prefs    ${prefs}
#     Create WebDriver    Chrome    options=${options}
#     Go To    https://accounts.google.com

Suite teardown task
    Close Browser

Perform test setup tasks
    [Arguments]    ${url}=None  
    Create Webdriver    Chrome
    Go To    ${url}

Perform test teardown tasks
    Close All Browsers