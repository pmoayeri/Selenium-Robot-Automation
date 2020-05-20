*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Resources_For_TC_006-9.robot
Documentation    This File having testcase of testing ABC functionality
Test Setup    Start Browser and Maximize
Test Teardown   Close Browser Window
Test Timeout    1mins

*** Variables ***
#${URL}    http://www.thetestingworld.com/testings
#${Browser}    Chrome


*** Test Cases ***
Robot First Test Case
    #[Setup]    Start Browser and Maximize
    #[Teardown]    Close Browser Window
    input text    name:fld_username    Testing
    input text    name:fld_email    testingworldindia@gmail.com
    input text    name:fld_password    123456

Robot Next Test Case
   select radio button    add_type    office