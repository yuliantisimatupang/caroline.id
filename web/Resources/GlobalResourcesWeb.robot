*** Settings ***
Library  SeleniumLibrary
Variables  ../Locators/LocatorGlobalWeb.py
Variables  ../TestData/TestdataGlobalWeb.py

*** Variables ***

*** Keywords ***
Verify Field Wajib diisi
    Sleep  3s
    Wait Until Element Contains    ${text_wajib_diisi}    Wajib diisi
    Capture Page Screenshot

*** Keywords ***
