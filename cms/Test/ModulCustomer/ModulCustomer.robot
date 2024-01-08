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
    Verify Terjadi Kesalahan
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
Verify Berhasil Filter by All Status
    [documentation]  This test case verifies that user is able to filter by All status
    [tags]  filter
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Customer
    Click Button filter
    Filter by All Status
    CLick Button Tampilkan
    Close Browser
Verify Berhasil Filter by Status Aktif
    [documentation]  This test case verifies that user is able to filter by status aktif
    [tags]  filter
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Customer
    Click Button filter
    Filter by Status Aktif
    CLick Button Tampilkan
    Close Browser
Verify Berhasil Filter by Status Non Aktif
    [documentation]  This test case verifies that user is able to filter by status non aktif
    [tags]  filter
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Customer
    Click Button filter
    Filter by Status Non Aktif
    CLick Button Tampilkan
    Close Browser
Verify Berhasil Mengaktifkan Status
    [documentation]  This test case verifies that user is able to Activate Status
    [tags]  filter
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Customer
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
    Click Modul Customer
    Click Button filter
    Filter by Status Aktif
    CLick Button Tampilkan
    Menonaktifkan Status
    Close Browser
*** Keywords ***