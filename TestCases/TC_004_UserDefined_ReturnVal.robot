*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Resources_ReturnVal.robot
Documentation    This File having testcase of testing ABC functionality

Test Timeout    1mins

*** Variables ***
${URL}    http://www.thetestingworld.com/testings
${Browser}    Chrome


*** Test Cases ***
Robot First Test Case
    [Documentation]    This Test case is to check registration functionality of Application
    [Timeout]    20s    Failed to execute First Test case
    ${Res}=    Start Browser and Maximize    ${URL}    ${Browser}
    Log    ${Res}
    #Start Browser and Maximize    ${URL}    ${Browser}
    #Start Browser and Maximize    http://www.thetestingworld.com/testings    Chrome
    Input text    name:fld_username    ${Res}