*** Settings ***
Library    SeleniumLibrary
Documentation    This sample of Test suit is designed to test Registration Functionality of Facebook.
#Test Setup    Start and Maximize Browser
#Test Teardown   Close Browser Window
Test Timeout    5mins
#default tags   DFLT
#force tags    ALL_TC

*** Variables ***
${Browser}    Chrome
${URL}    http://www.facebook.com

*** Test Cases ***
1.Fields test case
    [Documentation]    This test case is independent from data-base and to test credential inputs such as email and password.
    [Tags]    Smoke
    Start and Maximize Browser
    Enter Username Password Email    Pirooz  Maleki    piroozmoayeri@gmail.com  piroozmoayeri@gmail.com    % Om6894306
    #input text      xpath://input[@name='reg_email__']    piroozmoayeri@gmail.com
    #clear element text  name:reg_email__
    #select checkbox    name:terms
    #click link    xpath://a[text()='Create a Page']

2.Dropdown and radio button test case
    [Documentation]    This test case tests radio button and lists from Registration.
    #[Tags]    Smoke
    #set selenium speed    1seconds
    select from list by value    name:birthday_month    3
    select from list by value    name:birthday_day    25
    select from list by value    name:birthday_year    1990
    select radio button    sex    2
    click button    xpath://input[@type='submit']
    Close Browser Window

*** Keywords ***
Start and Maximize Browser
    [Documentation]    Note that user defined keywords would also be implemented in resources to facilitate group coding experience.
    open Browser    ${URL}  ${Browser}
    maximize browser window

Enter Username Password Email
    [Arguments]    ${firstname}    ${lastname}    ${email}    ${confirmation}    ${password}

    input text    name:firstname    ${firstname}
    input text    name:lastname    ${lastname}
    input text    name:reg_email__    ${email}
    input text    name:reg_email_confirmation__    ${confirmation}
    input text    name:reg_passwd__    ${password}

Close Browser Window
    [Documentation]    This keyword store the title of the page into logs so we could refer to it later on report section.
    ${Title}=  get title
    log  ${Title}
    close browser