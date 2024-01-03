*** Settings ***
Documentation  modul tipe
Library  SeleniumLibrary
Resource  ../../Resources/GlobalResources.robot
Resource  ../../Resources/modulMerekModelTypeResources.robot

*** Test Cases ***
Verify Successful Menampilkan list data Type
    [documentation]  This test case verifies that user is able to show list data Type
    [tags]  show
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Merek/Model/Type
    Click Tab Type
    Close Browser

Verify Successful Create Data Type
    [documentation]  This test case verifies that user is able to create new type
    [tags]  add
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Merek/Model/Type
    Click Tab Type
    Click Button Create
    Input Field objek lelang
    Input Field Pilih Merek
    Input Field Pilih Model
    Input Field Nama Tipe
    Click Button Simpan
    Verify Berhasil Create
    Close Browser
Verify Create Type blank all field (Objek Lelang, Merek, Model, Type)
    [documentation]  This test case verifies that user is unable to create new model when blank all fields
    [tags]  add
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Merek/Model/Type
    Click Tab Type
    Click Button Create Model
    Click Button Simpan
    Verify Field Harus diisi
    Close Browser
Verify Create Type hanya input Objek Lelang
    [documentation]  This test case verifies that user is unable to create new model when only input objek lelang
    [tags]  add
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Merek/Model/Type
    Click Tab Type
    Click Button Create Model
    Input Field objek lelang
    Click Button Simpan
    Verify Field Harus diisi
    Close Browser
Verify Create Type hanya input Objek Lelang, Merek dan Model
    [documentation]  This test case verifies that user is unable to create new model when only input objek lelang, merek and model
    [tags]  add
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Merek/Model/Type
    Click Tab Type
    Click Button Create Model
    Input Field objek lelang
    Input Field Pilih Merek
    Input Field Pilih Model
    Click Button Simpan
    Verify Field Harus diisi
    Close Browser
Verify Create Type hanya input Objek Lelang, Merek dan Type
    [documentation]  This test case verifies that user is unable to create new model when only input Objek Lelang, Merek dan Type
    [tags]  add
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Merek/Model/Type
    Click Tab Type
    Click Button Create Model
    Input Field objek lelang
    Input Field Pilih Merek
    Input Field Nama Tipe
    Click Button Simpan
    Verify Terjadi Kesalahan
    Close Browser
Verify Create Type hanya input Objek Lelang dan Type
    [documentation]  This test case verifies that user is unable to create new model when only input objek lelang and type
    [tags]  add
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Merek/Model/Type
    Click Tab Type
    Click Button Create Model
    Input Field objek lelang
    Input Field Nama Tipe
    Click Button Simpan
    Verify Terjadi Kesalahan
    Close Browser
Verify Create Type hanya input Nama Type
    [documentation]  This test case verifies that user is unable to create new model when only input nama type
    [tags]  add
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Merek/Model/Type
    Click Tab Type
    Click Button Create Model
    Input Field Nama Tipe
    Click Button Simpan
    Verify Field Harus diisi
    Close Browser
Verify Successful Edit Data Type
    [documentation]  This test case verifies that user is able to edit type
    [tags]  edit
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Merek/Model/Type
    Click Tab Type
    Click Button Edit
    Input Edit Field objek lelang
    Input Edit Field Pilih Merek
    Input Edit Field Pilih Model
    Input Edit Field Nama Tipe
    Click Button Update
    Verify Berhasil Edit
    Close Browser
Verify Edit Data Type dengan Field Null
    [documentation]  This test case verifies when user edit type with fields null
    [tags]  edit
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Merek/Model/Type
    Click Tab Type
    Click Button Edit
    Hapus Field Type
    Click Button Update
    Verify Field Harus diisi
    Close Browser
Verify Successful Delete Data Type
    [documentation]  This test case verifies that user is able to delete data type
    [tags]  delete
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Merek/Model/Type
    Click Tab Type
    Click Button Delete Type
    Verify Berhasil Delete
    Close Browser
Verify Successful Search by Nama Merek
    [documentation]  This test case verifies that user is able to Search by Nama Merek
    [tags]  search
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Merek/Model/Type
    Click Tab Type
    Search Nama Merek
    Close Browser
Verify Successful Search by Objek Lelang
    [documentation]  This test case verifies that user is able to Search by Objek lelang
    [tags]  search
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Merek/Model/Type
    Click Tab Type
    Search Objek Lelang
    Close Browser
Verify Successful Search by Simbol
    [documentation]  This test case verifies when user Search by Simbol Nothing Data Present
    [tags]  search
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Merek/Model/Type
    Click Tab Type
    Search By Simbol
    Close Browser
Verify Search Blank search
    [documentation]  This test case verifies when search with blank search nothing happen
    [tags]  search
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Merek/Model/Type
    Click Tab Type
    Search Blank search
    Close Browser
Verify Berhasil Filter by All Status
    [documentation]  This test case verifies that user is able to filter by All status
    [tags]  filter
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Merek/Model/Type
    Click Tab Type
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
    Click Tab Type
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
    Click Tab Type
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
    Click Tab Type
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
    Click Tab Type
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
    Click Tab Type
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
    Click Tab Type
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
    Click Tab Type
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
    Click Tab Type
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
    Click Tab Type
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
    Click Tab Type
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
    Click Tab Type
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
    Click Tab Type
    Click Button filter
    CLick Button Tampilkan
Verify Berhasil Mengaktifkan Status
    [documentation]  This test case verifies that user is able to Activate Status
    [tags]  filter
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Merek/Model/Type
    Click Tab Type
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
    Click Tab Type
    Click Button filter
    Filter by Status Aktif
    CLick Button Tampilkan
    Menonaktifkan Status
    Close Browser