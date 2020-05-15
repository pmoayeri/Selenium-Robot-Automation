*** Settings ***
Library  SeleniumLibrary


*** Variables ***
#${URL}    http://www.thetestingworld.com/testings
#${Browser}    Chrome


*** Keywords ***
Start Browser and Maximize
    [Arguments]    ${UserURL}    ${InputBrowser}
    Open Browser    ${UserURL}    ${InputBrowser}
    maximize browser window