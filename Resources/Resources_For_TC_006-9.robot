*** Settings ***
Library    SeleniumLibrary
Library    ../ExternalKeywords/UserKeywords.py


*** Variables ***


*** Keywords ***
Start Browser and Maximize
    Open Browser  https://www.thetestingworld.com/testings  Chrome
    maximize browser window

Close Browser Window
    ${Title}=  get title
    log  ${Title}
    close browser

Before Each Test Suite
        Log    Before Each Test Suite

After Each Test Suite
        Log    After Each Test Suite

Create Folder at Runtime
    [Arguments]    ${foldername}    ${subfoldername}
    create_folder    ${foldername}
    create_sub_folder    ${subfoldername}
    log    "Task Done Successfully"

concatenate Username and Password
    [Arguments]    ${username}    ${password}
    ${resultval}=    concatenate_two_values    ${username}    ${password}
    log    ${resultval}

