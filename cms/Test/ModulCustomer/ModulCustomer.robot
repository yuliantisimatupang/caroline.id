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
Verify Blank filter
    [documentation]  This test case verifies that user is able to Blank filter 
    [tags]  filter
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Customer
    Click Button filter
    CLick Button Tampilkan
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
Verify Successful View Detail Data Customer
    [documentation]  This test case verifies that user is able to view detail data customer
    [tags]  view
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Customer
    View Data Customer
    Click Button Kembali
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
Verify Berhasil Menonaktifkan Status dari View
    [documentation]  This test case verifies that user is able to Unactivate Status
    [tags]  filter
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Customer
    Click Button filter
    Filter by Status Aktif
    CLick Button Tampilkan
    View Data Customer
    Switch Status
    Nonaktifkan Status
    Close Browser
Verify Berhasil Mengaktifkan Status dari View
    [documentation]  This test case verifies that user is able to Activate Status from view
    [tags]  filter
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Customer
    Click Button filter
    Filter by Status Non Aktif
    CLick Button Tampilkan
    View Data Customer
    Switch Status
    Aktifkan Status
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
Verify Successful Search by Simbol
    [documentation]  This test case verifies when user Search by Simbol Nothing Data Present
    [tags]  search
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Customer
    Search By Simbol
    Close Browser
Verify Search Blank search
    [documentation]  This test case verifies when search with blank search nothing happen
    [tags]  search
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Customer
    Search Blank search
    Close Browser
Verify Successful Delete Data Customer dari list
    [documentation]  This test case verifies that user is able to delete data customer dari list
    [tags]  delete
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Customer
    Click Button Delete Customer
    Verify Berhasil Delete
    Close Browser
Verify Successful Delete Group dari View Detail 
    [documentation]  This test case verifies that user is able to delete group dari view detail
    [tags]  delete
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Customer
    View Data Customer
    Delete dari View Detail
    Click Ya Hapus dari View
    Verify Berhasil Delete
    Close Browser
Verify Successful Export Customer CSV
    [documentation]  This test case verifies that user is able to export customer csv
    [tags]  export
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Customer
    Export Customer CSV
    Verify Text Not Present Test
    Close Browser
Verify Successful Export Customer PDF
    [documentation]  This test case verifies that user is able to export customer pdf
    [tags]  export
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Customer
    Export Customer PDF
    Verify Text Not Present Test
    Close Browser
Verify Successful Export Customer Excel
    [documentation]  This test case verifies that user is able to export customer excel
    [tags]  export
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Customer
    Export Customer Excel
    Verify Text Not Present Test
    Close Browser
Verify Download format template CSV
    [documentation]  This test case verifies that user is able to Download format template CSV
    [tags]  download
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Customer
    Download format template CSV
    Close Browser
Verify Resend Password Customer
    [documentation]  This test case verifies that user is able to resend password customer
    [tags]  download
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Customer
    View Data Customer
    Resend Password Customer
    Close Browser
*** Keywords ***