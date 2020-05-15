*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Resources1.robot

*** Variables ***
#${URL}    http://www.thetestingworld.com/testings
#${Browser}    Chrome


*** Test Cases ***
Robot First Test Case
    #Start Browser and Maximize    ${URL}    ${Browser}
    Start Browser and Maximize    http://www.thetestingworld.com/testings    Chrome
    Input text    name:fld_username    HelloWolrd
