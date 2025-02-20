*** Settings ***
Documentation    Martins VG-del 
Library    SeleniumLibrary
Variables    variables.py
Resource    keywords.robot
Test Setup
Test Teardown    Close Browser

*** Test Cases ***