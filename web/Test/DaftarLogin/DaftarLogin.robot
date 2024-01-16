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
    Verify Field Wajib diisi
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
*** Keywords ***