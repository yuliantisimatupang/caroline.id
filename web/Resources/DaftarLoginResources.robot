*** Settings ***
Library  SeleniumLibrary
Library    String
Library    XML
Variables  ../Locators/LocatorGlobalWeb.py
Variables  ../Locators/LocatorDaftarLogin.py
Variables  ../TestData/TestdataDaftarLogin.py

*** Keywords ***
Click Button Daftar
    Wait Until Element Is Visible  ${button_daftar}  timeout=10s
    Click Element     ${button_daftar}
    Capture Page Screenshot
Click Button Submit Daftar
    Scroll Element Into View  ${button_submit_daftar}  
    Wait Until Element Is Visible  ${button_submit_daftar}  timeout=10s
    Click Element     ${button_submit_daftar}
    Capture Page Screenshot
Input Fields Daftar Akun
    Wait Until Element Is Visible  ${input_nama_depan}  timeout=10s
    Input Text  ${input_nama_depan}  ${nama_depan}
    Input Text  ${input_nama_belakang}  ${nama_belakang}
    Input Text  ${input_no_hp}  ${no_hp}
    Input Text  ${input_email}  ${email}
    Input Text  ${input_password}  ${password}
    Input Text  ${input_konfir_password}  ${password}
    Click Element  ${checkbox_agree}
    Capture Page Screenshot
    Sleep  20s
Verify Berhasil Daftar Akun
    Sleep  3s
    Wait Until Element Contains    ${text_berhasil_daftar}   Cek Email Anda
    Capture Page Screenshot
    Click Element  ${ya_mengerti_daftar}
    Capture Page Screenshot


