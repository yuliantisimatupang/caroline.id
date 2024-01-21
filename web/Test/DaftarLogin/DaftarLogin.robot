*** Settings ***
Documentation  Daftar dan Login Akun Web JBA
Library  SeleniumLibrary
Resource  ../../Resources/GlobalResourcesWeb.robot
Resource  ../../Resources/DaftarLoginResources.robot

*** Test Cases ***
Verify Gagal Daftar Akun karena Fields Mandatory Kosong
    [documentation]  This test case verifies that user is unable to daftar akun karena fields mandatory kosong
    [tags]  daftar
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Button Daftar
    Click Button Submit Daftar
    Verify Field Wajib diisi Daftar Akun

    Close Browser
Verify Berhasil Daftar Akun
    [documentation]  This test case verifies that user is able to daftar akun
    [tags]  daftar
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Button Daftar
    Input Fields Daftar Akun
    Click Button Submit Daftar
    Verify Berhasil Daftar Akun
    Close Browser
Verify Gagal Daftar Akun User Tedaftar
    [documentation]  This test case verifies that user is unable to daftar akun dengan user yang sudah terdaftar
    [tags]  daftar
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Button Daftar
    Input Fields Daftar Akun User Tedaftar
    Click Button Submit Daftar
    Verify User Sudah Ada
    Close Browser
Verify Gagal Daftar Akun Input Email Tidak Sesuai
    [documentation]  This test case verifies that user is unable to daftar akun ketika input email tidak sesuai format
    [tags]  daftar
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Button Daftar
    Input Fields Email Tidak Valid
    Verify Email Tidak Valid
    Close Browser 
Verify Gagal Daftar Akun Input Password Tidak Sesuai
    [documentation]  This test case verifies that user is unable to daftar akun ketika input email tidak sesuai format
    [tags]  daftar
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Button Daftar
    Input Fields Password Tidak Valid
    Verify Password Tidak Valid
    Close Browser
Verify Gagal Login Fields Kosong
    [documentation]  This test case verifies that user is unable to login karena fields mandatory kosong
    [tags]  login
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Button Masuk
    Click Button Submit Masuk
    Verify Field Wajib diisi Login
    Close Browser
Verify Berhasil Login
    [documentation]  This test case verifies that user is able to login
    [tags]  login
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Button Masuk
    Input Fields Login
    Click Button Submit Masuk
    Verify Berhasil Login
    Close Browser
Verify Berhasil Reset Password
    [documentation]  This test case verifies that user is able to reset password
    [tags]  login
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Button Masuk
    Lupa Password
    Close Browser
*** Keywords ***