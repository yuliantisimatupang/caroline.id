*** Settings ***
Library  SeleniumLibrary
Library    String
Library    XML
Variables  ../Locators/LocatorGlobalWeb.py
Variables  ../Locators/LocatorDaftarLogin.py
Variables  ../TestData/TestdataDaftarLogin.py

*** Variables ***
${max_length}    3


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
    FOR    ${index}    IN RANGE    3       
         ${random_text}    Generate Random String    7
        Log    Iteration ${index + 1}: Generated Random Text: ${random_text}
        
    END
    Wait Until Element Is Visible  ${input_nama_depan}  timeout=10s
    Input Text  ${input_nama_depan}  ${random_text}${input_nama_depan}
    Input Text  ${input_nama_belakang}  ${random_text}${input_nama_belakang}
    Input Text  ${input_no_hp}  ${no_hp}${max_length}
    Input Text  ${input_email}  ${random_text}${input_email}
    Input Text  ${input_password}  ${password}
    Input Text  ${input_konfir_password}  ${password}
    Click Element  ${checkbox_agree}
    Capture Page Screenshot
    Sleep  20s
Input Fields Daftar Akun User Tedaftar
    Wait Until Element Is Visible  ${input_nama_depan}  timeout=10s
    Input Text  ${input_nama_depan}  ${nama_depan}
    Input Text  ${input_nama_belakang}  ${nama_belakang}
    Input Text  ${input_no_hp}  ${no_hp}
    ${random_text}      Generate Random String    ${max_length}
    Input Text  ${input_email}  ${email1}
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
Verify User Sudah Ada
    Sleep  3s
    Wait Until Page Contains    ${verify_user_exits}
    Capture Page Screenshot
Click Button Masuk
    Wait Until Element Is Visible  ${button_login}  timeout=10s
    Click Element     ${button_login}
    Capture Page Screenshot
Click Button Submit Masuk
    Scroll Element Into View  ${button_masuk}  
    Wait Until Element Is Visible  ${button_masuk}  timeout=10s
    Click Element     ${button_masuk}
    Capture Page Screenshot
Input Fields Login
    Wait Until Element Is Visible  ${input_email_login}  timeout=10s
    Input Text  ${input_email_login}  ${email_login}
    Input Text  ${input_password_login}  ${password_login}
    Capture Page Screenshot
    Sleep  20s
Verify Berhasil Login
    Sleep  3s
    Wait Until Element Contains  ${verify_selamat_datang}  Selamat Datang
    Capture Page Screenshot