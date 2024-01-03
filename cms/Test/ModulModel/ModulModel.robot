*** Settings ***
Documentation  modul model
Library  SeleniumLibrary
Resource  ../../Resources/GlobalResources.robot
Resource  ../../Resources/modulMerekModelTypeResources.robot

*** Test Cases ***
Verify Successful Menampilkan list data Model
    [documentation]  This test case verifies that user is able to show list data Merek/Model/Type
    [tags]  show
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Merek/Model/Type
    Click Tab Model
    Close Browser
Verify Successful Create Data Model
    [documentation]  This test case verifies that user is able to create new model
    [tags]  add
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Merek/Model/Type
    Click Tab Model
    Click Button Create Model
    Input Field objek lelang
    Input Field Pilih Merek
    Input Field Nama Model
    Click Button Simpan
    Verify Berhasil Create
    Close Browser
Verify Create Model blank all field (Objek Lelang, Merek, Nama Model)
    [documentation]  This test case verifies that user is unable to create new model when blank all fields
    [tags]  add
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Merek/Model/Type
    Click Tab Model
    Click Button Create Model
    Click Button Simpan
    Verify Field Harus diisi
    Close Browser
Verify Create Model hanya input Objek Lelang
    [documentation]  This test case verifies that user is unable to create new model when only input objek lelang
    [tags]  add
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Merek/Model/Type
    Click Tab Model
    Click Button Create Model
    Input Field objek lelang
    Click Button Simpan
    Verify Field Harus diisi
    Close Browser
Verify Create Model hanya input Objek Lelang dan Merek
    [documentation]  This test case verifies that user is unable to create new model when only input objek lelang and merek
    [tags]  add
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Merek/Model/Type
    Click Tab Model
    Click Button Create Model
    Input Field objek lelang
    Input Field Pilih Merek
    Click Button Simpan
    Verify Field Harus diisi
    Close Browser
Verify Create Model hanya input Objek Lelang dan Model
    [documentation]  This test case verifies that user is unable to create new model when only input objek lelang and model
    [tags]  add
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Merek/Model/Type
    Click Tab Model
    Click Button Create Model
    Input Field objek lelang
    Input Field Nama Model
    Click Button Simpan
    Verify Terjadi Kesalahan
    Close Browser
Verify Successful Edit Data Model
    [documentation]  This test case verifies that user is able to edit data model
    [tags]  edit
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Merek/Model/Type
    Click Tab Model
    Click Button Edit
    Input Edit Field Objek Lelang
    Input Edit Field Pilih Merek
    Input Edit Field Nama Model
    Click Button Update
    Verify Berhasil Edit
    Close Browser
Verify Successful Delete Data Model
    [documentation]  This test case verifies that user is able to delete data model
    [tags]  delete
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Merek/Model/Type
    Click Tab Model
    Click Button Delete Model
    Verify Berhasil Delete
    Close Browser
Verify Edit Data Model Field Null
    [documentation]  This test case verifies that user is unable to edit data model when nama model is null
    [tags]  edit
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Merek/Model/Type
    Click Tab Model
    Click Button Edit
    Hapus Data Field Nama Model
    Click Button Update
    Verify Field Harus diisi
    Close Browser
Verify Successful Search by Nama Merek
    [documentation]  This test case verifies that user is able to Search by Nama Merek
    [tags]  search
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Merek/Model/Type
    Click Tab Model
    Search Nama Merek
    Close Browser
Verify Successful Search by Objek Lelang
    [documentation]  This test case verifies that user is able to Search by Objek lelang
    [tags]  search
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Merek/Model/Type
    Click Tab Model
    Search Objek Lelang
    Close Browser
Verify Successful Search by Simbol
    [documentation]  This test case verifies when user Search by Simbol Nothing Data Present
    [tags]  search
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Merek/Model/Type
    Click Tab Model
    Search By Simbol
    Close Browser
Verify Search Blank search
    [documentation]  This test case verifies when search with blank search nothing happen
    [tags]  search
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Merek/Model/Type
    Click Tab Model
    Search Blank search
    Close Browser
Verify Berhasil Filter by All Status
    [documentation]  This test case verifies that user is able to filter by All status
    [tags]  filter
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Merek/Model/Type
    Click Tab Model
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
    Click Tab Model
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
    Click Tab Model
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
    Click Tab Model
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
    Click Tab Model
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
    Click Tab Model
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
    Click Tab Model
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
    Click Tab Model
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
    Click Tab Model
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
    Click Tab Model
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
    Click Tab Model
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
    Click Tab Model
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
    Click Tab Model
    Click Button filter
    CLick Button Tampilkan
Verify Berhasil Mengaktifkan Status
    [documentation]  This test case verifies that user is able to Activate Status
    [tags]  filter
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Merek/Model/Type
    Click Tab Model
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
    Click Tab Model
    Click Button filter
    Filter by Status Aktif
    CLick Button Tampilkan
    Menonaktifkan Status
    Close Browser