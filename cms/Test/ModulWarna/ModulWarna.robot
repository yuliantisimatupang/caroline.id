*** Settings ***
Documentation  modul warna
Library  SeleniumLibrary
Resource  ../../Resources/GlobalResources.robot
Resource  ../../Resources/modulWarnaResources.robot

*** Test Cases ***
Verify Successful Menampilkan list data Warna
    [documentation]  This test case verifies that user is able to show list data warna
    [tags]  show
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Warna
    Close Browser
Verify Successful Create Data Warna
    [documentation]  This test case verifies that user is able to create new warna
    [tags]  add
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Warna
    Click Button Create Warna
    Input Create Kode Warna
    Input Create Nama Warna
    Input Create Hex Warna
    Click Button Simpan
    Verify Berhasil Create
    Close Browser
Verify Berhasil Menonaktifkan Status
    [documentation]  This test case verifies that user is able to Unactivate Status
    [tags]  filter
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Warna
    Menonaktifkan Status
    Close Browser
Verify Berhasil Mengaktifkan Status
    [documentation]  This test case verifies that user is able to Activate Status
    [tags]  filter
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Warna
    Mengaktifkan Status
    Close Browser
Verify Successful Edit Data Warna
    [documentation]  This test case verifies that user is able to edit warna
    [tags]  add
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Warna
    Click Button Edit
    Input Edit Kode Warna
    Input Edit Nama Warna
    Input Edit Hex Warna
    Click Button Update
    Verify Berhasil Edit
    Close Browser
Verify Successful Search By Kode Warna
    [documentation]  This test case verifies that user is able to Search by Kode Warna
    [tags]  search
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Warna
    Search By Code Warna
    Close Browser
Verify Successful Search By Nama Warna
    [documentation]  This test case verifies that user is able to Search by Nama Warna
    [tags]  search
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Warna
    Search By Nama Warna
    Close Browser
Verify Successful Delete Data Warna
    [documentation]  This test case verifies that user is able to delete data warna
    [tags]  delete
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Warna
    Click Button Delete Warna
    Verify Berhasil Delete
    Close Browser
*** Keywords ***