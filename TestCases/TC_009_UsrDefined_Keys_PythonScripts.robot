*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Resources_For_TC_006-9.robot


*** Variables ***
${Browser}    Chrome
${URL}    http://www.thetestingworld.com/testings



*** Test Cases ***
Robot Fetch Data
    concatenate Username and Password    Testing    World
    #Create Folder at Runtime    Hello1234    Testing
    Open Browser    ${Url}    ${Browser}
    maximize browser window