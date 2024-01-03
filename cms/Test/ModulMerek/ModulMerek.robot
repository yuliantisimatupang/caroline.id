*** Settings ***
Documentation  modul merek
Library  SeleniumLibrary
Resource  ../../Resources/GlobalResources.robot
Resource  ../../Resources/modulMerekModelTypeResources.robot

*** Test Cases ***
Verify Successful Menampilkan list data Merek
    [documentation]  This test case verifies that user is able to show list data Merek
    [tags]  show
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Merek/Model/Type
    Click Tab Merek
    Close Browser
Verify Successful Create Data Merek
    [documentation]  This test case verifies that user is able to create new merek
    [tags]  add
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Merek/Model/Type
    Click Tab Merek
    Click Button Create
    Input Field objek lelang
    Input Field Nama Merek
    Click Button Simpan
    Verify Berhasil Create
    Close Browser
Verify Create Data Merek Hanya Input Nama Merek
    [documentation]  This test case verifies that user is unable to create merek if only input nama merek
    [tags]  add
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Merek/Model/Type
    Click Tab Merek
    Click Button Create
    Input Field Nama Merek
    Click Button Simpan
    Verify Field Harus diisi
    Close Browser
Verify Create Data Merek Hanya Input Objek Lelang
    [documentation]  This test case verifies that user is unable to create merek if only input objek lelang
    [tags]  add
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Merek/Model/Type
    Click Tab Merek
    Click Button Create
    Input Field objek lelang
    Click Button Simpan
    Verify Field Harus diisi
    Close Browser
Verify Create Data Merek Blank field Objek Lelang dan Merek
    [documentation]  This test case verifies that user is unable to create merek if Blank field Objek Lelang and Merek
    [tags]  add
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Merek/Model/Type
    Click Tab Merek
    Click Button Create
    Click Button Simpan
    Verify Field Harus diisi
    Close Browser
Verify Successful Search by Nama Merek
    [documentation]  This test case verifies that user is able to Search by Nama Merek
    [tags]  search
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Merek/Model/Type
    Click Tab Merek
    Search Nama Merek
    Close Browser
Verify Successful Search by Objek Lelang
    [documentation]  This test case verifies that user is able to Search by Objek lelang
    [tags]  search
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Merek/Model/Type
    Click Tab Merek
    Search Objek Lelang
    Close Browser
Verify Successful Search by Simbol
    [documentation]  This test case verifies when user Search by Simbol Nothing Data Present
    [tags]  search
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Merek/Model/Type
    Click Tab Merek
    Search By Simbol
    Close Browser
Verify Search Blank search
    [documentation]  This test case verifies when search with blank search nothing happen
    [tags]  search
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Merek/Model/Type
    Click Tab Merek
    Search Blank search
    Close Browser
Verify Successful Edit Data Merek
    [documentation]  This test case verifies that user is able to edit data
    [tags]  edit
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Merek/Model/Type
    Click Tab Merek
    Click Button Edit
    Input Edit Field Objek Lelang
    Input Edit Field Nama Merek
    Click Button Update
    Verify Berhasil Edit
    Close Browser
Verify Edit data merek dengan field merek null
    [documentation]  This test case verifies that user is unable to edit merek when data null
    [tags]  edit
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Merek/Model/Type
    Click Tab Merek
    Click Button Edit
    Hapus Data Field Nama Merek
    Click Button Update
    Verify Field Harus diisi
    Close Browser
Verify Successful Delete Data Merek
    [documentation]  This test case verifies that user is able to delete data merek
    [tags]  delete
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Merek/Model/Type
    Click Tab Merek
    Click Button Delete Merek
    Verify Berhasil Delete
    Close Browser
Verify Berhasil Filter by All Status
    [documentation]  This test case verifies that user is able to filter by All status
    [tags]  filter
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Merek/Model/Type
    Click Tab Merek
    Click Button filter
    Filter by All Status
    CLick Button Tampilkan
    Close Browser
Verify Berhasil Filter by Status Aktif
    [documentation]  This test case verifies that user is able to filter by status aktif
    [tags]  filter
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Merek/Model/Type
    Click Tab Merek
    Click Button filter
    Filter by Status Aktif
    CLick Button Tampilkan
    Close Browser
Verify Berhasil Filter by Status Non Aktif
    [documentation]  This test case verifies that user is able to filter by status non aktif
    [tags]  filter
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Merek/Model/Type
    Click Tab Merek
    Click Button filter
    Filter by Status Non Aktif
    CLick Button Tampilkan
    Close Browser
Verify Berhasil Filter by Objek Lelang Car
    [documentation]  This test case verifies that user is able to filter by Objek Lelang Car
    [tags]  filter
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Merek/Model/Type
    Click Tab Merek
    Click Button filter
    Filter by Objek Lelang Car
    CLick Button Tampilkan
    Close Browser
Verify Berhasil Filter by Objek Lelang Bike
    [documentation]  This test case verifies that user is able to filter by Objek Lelang Bike
    [tags]  filter
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Merek/Model/Type
    Click Tab Merek
    Click Button filter
    Filter by Objek Lelang Bike
    CLick Button Tampilkan
    Close Browser
Verify Berhasil Filter by All Category Objek Lelang
    [documentation]  This test case verifies that user is able to filter by status non aktif + All Category Objek Lelang
    [tags]  filter
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Merek/Model/Type
    Click Tab Merek
    Click Button filter
    Filter by All Category Objek Lelang
    CLick Button Tampilkan
    Close Browser
Verify Berhasil Filter by All Status + All Category Objek Lelang
    [documentation]  This test case verifies that user is able to filter by All status + All Category Objek Lelang
    [tags]  filter
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Merek/Model/Type
    Click Tab Merek
    Click Button filter
    Filter by All Status
    Filter by All Category Objek Lelang
    CLick Button Tampilkan
    Close Browser
Verify Berhasil Filter by Status Aktif + All Category Objek Lelang
    [documentation]  This test case verifies that user is able to filter by status aktif + All Category Objek Lelang
    [tags]  filter
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Merek/Model/Type
    Click Tab Merek
    Click Button filter
    Filter by Status Aktif
    Filter by All Category Objek Lelang
    CLick Button Tampilkan
    Close Browser
Verify Berhasil Filter by Status Non Aktif + All Category Objek Lelang
    [documentation]  This test case verifies that user is able to filter by status non aktif + All Category Objek Lelang
    [tags]  filter
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Merek/Model/Type
    Click Tab Merek
    Click Button filter
    Filter by Status Non Aktif
    Filter by All Category Objek Lelang
    CLick Button Tampilkan
    Close Browser
Verify Berhasil Filter by All Status + Objek Lelang
    [documentation]  This test case verifies that user is able to filter by All status + Objek Lelang
    [tags]  filter
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Merek/Model/Type
    Click Tab Merek
    Click Button filter
    Filter by All Status
    Filter by Objek Lelang Car
    CLick Button Tampilkan
    Close Browser
Verify Berhasil Filter by Status Aktif + Objek Lelang
    [documentation]  This test case verifies that user is able to filter by status aktif + Objek Lelang
    [tags]  filter
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Merek/Model/Type
    Click Tab Merek
    Click Button filter
    Filter by Status Aktif
    Filter by Objek Lelang Car
    CLick Button Tampilkan
    Close Browser
Verify Berhasil Filter by Status Non Aktif + Objek Lelang
    [documentation]  This test case verifies that user is able to filter by status non aktif + Objek Lelang
    [tags]  filter
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Merek/Model/Type
    Click Tab Merek
    Click Button filter
    Filter by Status Non Aktif
    Filter by Objek Lelang Car
    CLick Button Tampilkan
    Close Browser
Verify Blank filter
    [documentation]  This test case verifies that user is able to Blank filter 
    [tags]  filter
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Merek/Model/Type
    Click Tab Merek
    Click Button filter
    CLick Button Tampilkan
Verify Berhasil Mengaktifkan Status
    [documentation]  This test case verifies that user is able to Activate Status
    [tags]  filter
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Merek/Model/Type
    Click Tab Merek
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
    Click Modul Merek/Model/Type
    Click Tab Merek
    Click Button filter
    Filter by Status Aktif
    CLick Button Tampilkan
    Menonaktifkan Status
    Close Browser