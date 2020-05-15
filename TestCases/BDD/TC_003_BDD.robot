*** Settings ***

Resource    ../../Resources/Resources_For_TC_006-9.robot

*** Variables ***

*** Test Cases ***
Test Case in BDD Format
    Given Start Browser and Maximize
    When Create Folder at Runtime    ABCD    XYZM
    Then concatenate Username and Password    Testing    World

