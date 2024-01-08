*** Settings ***
Documentation  modul cabang
Library  SeleniumLibrary
Resource  ../../Resources/GlobalResources.robot
Resource  ../../Resources/modulCabangResources.robot

*** Test Cases ***
Verify Successful Menampilkan list data cabang
    [documentation]  This test case verifies that user is able to show list data cabang
    [tags]  show
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Cabang
    Close Browser
Verify Successful Create Data Cabang
    [documentation]  This test case verifies that user is able to create new cabang
    [tags]  add
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Cabang
    Click Button Add
    Input Fields Cabang
    Click Button Simpan
    Verify Berhasil Create
    Close Browser
Verify Failed Create Data Cabang Duplikat Code
    [documentation]  This test case verifies that user is failed to create new cabang because double code
    [tags]  add duplikat
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Cabang
    Click Button Add
    Input Fields Cabang
    Click Button Simpan
    Verify Data Cabang duplikat Code
    Close Browser
Verify Successful Search by Kode Cabang
    [documentation]  This test case verifies that user is able to Search by Kode Cabang
    [tags]  search
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Cabang
    Search By Code
    Close Browser
Verify Successful Search by Nama Cabang
    [documentation]  This test case verifies that user is able to Search by Nama Cabang
    [tags]  search
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Cabang
    Search By Nama Cabang
    Close Browser
Verify Successful Search by Lokasi Cabang
    [documentation]  This test case verifies that user is able to Search by Lokasi Cabang
    [tags]  search
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Cabang
    Search By Lokasi Cabang
    Close Browser
Verify Successful Search by Nama PIC
    [documentation]  This test case verifies that user is able to Search by Nama PIC
    [tags]  search
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Cabang
    Search By Nama PIC
    Close Browser
Verify Successful Search by Nomor WA PIC
    [documentation]  This test case verifies that user is able to Search by Nomor WA PIC
    [tags]  search
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Cabang
    Search By Nomor PIC
    Close Browser
Verify Successful Search by Simbol
    [documentation]  This test case verifies when user Search by Simbol Nothing Data Present
    [tags]  search
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Cabang
    Search By Simbol
    Close Browser
Verify Search Blank search
    [documentation]  This test case verifies when search with blank search nothing happen
    [tags]  search
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Cabang
    Search Blank search
    Close Browser
Verify Successful Edit Data Cabang
    [documentation]  This test case verifies that user is able to edit cabang
    [tags]  add
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Cabang
    Click Button Edit
    Edit Field-Field Cabang
    Click Button Update
    Verify Berhasil Edit
    Close Browser
Verify Successful Delete Data Cabang
    [documentation]  This test case verifies that user is able to delete data cabang
    [tags]  delete
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Cabang
    Click Button Delete
    Verify Berhasil Delete
    Close Browser
Verify Blank filter
    [documentation]  This test case verifies that user is able to Blank filter 
    [tags]  filter
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Cabang
    Click Button filter
    CLick Button Tampilkan
    Close Browser
Verify Berhasil Filter by All Status
    [documentation]  This test case verifies that user is able to filter by All status
    [tags]  filter
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Cabang
    Click Button filter
    Filter by All Status
    CLick Button Tampilkan
    Close Browser
Verify Berhasil Filter by Status Aktif
    [documentation]  This test case verifies that user is able to filter by status aktif
    [tags]  filter
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Cabang
    Click Button filter
    Filter by Status Aktif
    CLick Button Tampilkan
    Close Browser
Verify Berhasil Filter by Status Non Aktif
    [documentation]  This test case verifies that user is able to filter by status non aktif
    [tags]  filter
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Cabang
    Click Button filter
    Filter by Status Non Aktif
    CLick Button Tampilkan
    Close Browser
Verify Berhasil Mengaktifkan Status
    [documentation]  This test case verifies that user is able to Activate Status
    [tags]  filter
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Cabang
    Click Button filter
    Filter by Status Non Aktif
    CLick Button Tampilkan
    Mengaktifkan Status
    Close Browser
Verify Berhasil Menonaktifkan Status
    [documentation]  This test case verifies that user is able to Unactivate Status
    [tags]  filter
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Cabang
    Click Button filter
    Filter by Status Aktif
    CLick Button Tampilkan
    Menonaktifkan Status
    Close Browser
Verify Menampilkan List Data Sesuai dengan Size Table yang dipilih
    [documentation]  This test case verifies that list data sesuai dengan size table yang dipilih
    [tags]  table
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Cabang
    Pilih Size Table
    Verify List Data
    Close Browser
Verify Memastikan ketika pindah pagination data sesuai
    [documentation]  This test case verifies ketika pindah pagination data sesuai
    [tags]  page
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Cabang
    Verify Page Transition
    Close Browser
*** Keywords ***