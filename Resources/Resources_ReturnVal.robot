*** Settings ***
Library  SeleniumLibrary


*** Variables ***
#${URL}    http://www.thetestingworld.com/testings
#${Browser}    Chrome


*** Keywords ***
Start Browser and Maximize
    [Documentation]    This keyword is for start Browser and maximize its window
    [Arguments]    ${UserURL}    ${InputBrowser}
    Open Browser    ${UserURL}    ${InputBrowser}
    maximize browser window
    ${Title} =    Get Title
    Log    ${Title}
    [Return]    ${Title}