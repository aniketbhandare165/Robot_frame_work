*** Settings ***
Resource    ../../lib/commonLoginPageKeywords.robot
Resource    ../../lib/commonProtoCommercekeywords.robot

*** Keywords ***
Add to cart item
    Fill the login form    user_name=rahulshettyacademy    password=learning
    Select phone model And add to cart