*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    Chrome
${URL}    http://www.thetestingworld.com/testings


*** Test Cases ***
Robot First Test Case
    open Browser    ${URL}  ${Browser}
    maximize browser window
    Enter Username Password Email    Testing    testingworldindia@gmail.com    123456

#Robot Second Test Case
    #open Browser    ${URL}  ${Browser}
    #maximize browser window
    #set selenium speed    2seconds
    #select from list by index    name:sex    2
    #select from list by value    name:sex    1
    #select from list by label    name:    Female
    #input text      name:fld_username    TestingWorld
    #input text      xpath://input[@name='fld_email']    piroozmoayeri@gmail.com
    #clear element text  name:fld_username
    #select radio button    add_type    office
    #select checkbox    name:terms
    #click link    xpath://a[text()='Read Detail']
    ##click button    xpath://input[@type='submit']
    #close browser


#TC_001 Browser Start and CLose
#   Open Browser    ${URL}    ${Browser}
#  Close Browser


*** Keywords ***
Enter Username Password Email
    [Arguments]    ${username}    ${email}    ${password}
    input text    name:fld_username    ${username}
    input text    name:fld_email    ${email}
    input text    name:fld_password    ${password}