*** Settings ***
Library    Collections
Library     OperatingSystem
Library    SeleniumLibrary
Library    BuiltIn
Library    String
Variables    locators.py

*** Variables ***

*** Keywords ***
Select phone model And add to cart
    [Arguments]     @{items_to_add}
    ${list_of_item}    Get WebElements     //h4[@class="card-title"] 
    FOR    ${element}    IN    @{items_to_add}
        FOR    ${item}    IN    @{list_of_item}
            IF    ${element} == ${item.text}
                Click Element    (//a[normalize-space()='${element}']/following::div/button[normalize-space()='Add'])[1]       
            END
        END
    END
    Sleep    5