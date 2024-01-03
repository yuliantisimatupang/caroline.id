*** Settings ***
Documentation  modul customer
Library  SeleniumLibrary
Resource  ../../Resources/GlobalResources.robot
Resource  ../../Resources/modulCustomerResources.robot

*** Test Cases ***
Verify Successful Menampilkan list data customer
    [documentation]  This test case verifies that user is able to show list data customer
    [tags]  show
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Customer    
    Close Browser
Verify Successful Create Data Customer
    [documentation]  This test case verifies that user is able to create new customer
    [tags]  add
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Customer
    Click Button Create Customer
    Input Fields Customer
    Click Button Simpan
    Click Button Ya Simpan
    Verify Berhasil Create
    Close Browser
Verify tidak dapat create Customer dengan blank all field
    [documentation]  This test case verifies that user tidak dapat create Customer dengan blank all field
    [tags]  add
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Customer
    Click Button Create Customer
    Click Button Selanjutnya Page 1
    Click Button Selanjutnya Page 2
    Click Button Simpan
    Click Button Ya Simpan
    Verify Terjadi Kesalahan Pengisian Formulir
    Close Browser
Verify Successful Delete Data Customer
    [documentation]  This test case verifies that user is able to delete data customer
    [tags]  delete
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Customer
    Click Button Delete Customer
    Verify Berhasil Delete
    Close Browser
*** Keywords ***