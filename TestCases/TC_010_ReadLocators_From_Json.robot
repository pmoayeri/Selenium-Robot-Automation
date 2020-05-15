*** Settings ***
Library    SeleniumLibrary
Library    ../ExternalKeywords/Locators.py


*** Variables ***
${Browser}    Chrome
${Url}    http://www.thetestingworld.com/testings



*** Test Cases ***
Robot First Test Case
    [Tags]    Smoke
    open Browser    ${Url}  ${Browser}
    ${username}=    Read Element Locator    Registration.username_textbox_name
    input text    name:${username}    Testing
    ${password}=    Read Element Locator    Registration.password_textbox_name
    input text    name:${password}    123456
    #
    input text    name:fld_email    testingworldindia@gmail.com

Robot Next Test Case
    select radio button    add_type    office

*** Keywords ***
Read Element Locator
    [Arguments]    ${JsonPath}
    ${result} =    read_locator_from_json    ${JsonPath}
    [Return]    ${result}
