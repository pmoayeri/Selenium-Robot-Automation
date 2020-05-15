*** Settings ***
Library    SeleniumLibrary
#Resource    ../Resources/Resources_For_TC_006-9.robot


*** Variables ***
${Browser}    Chrome
${URL}    http://www.thetestingworld.com/testings



*** Test Cases ***
Robot Fetch Data
    #Create Folder at Runtime
    Open Browser    ${Url}    ${Browser}
    maximize browser window
    ${PageTitle}=    get title
    log    ${PageTitle}
    ${Speed}=    get selenium speed
    log    ${Speed}
    ${Value}    get value    xpath://input[@type='submit']
    log    ${Value}
    ${Text}=    get text    xpath://a[@class='displayPopup']
    log    ${Text}
    select from list by index    name:sex    1
    ${Val}=    get selected list value    name:sex
    log    ${Val}
    ${Text2}=    get selected list label    name:sex
    log    ${Text2}
    ${AllLabels}=    get list items    name:sex
    log    ${AllLabels}
    ${ActualURL}=    get location
    log    ${ActualURL}
    ${PageHTML}=    get source
    log    ${PageHTML}
    ${Attr}=    get element attribute    name:fld_username    class
    log    ${Attr}
    ${cnt}=    get element count    class:field
    log    ${cnt}