*** Settings ***
Documentation  modul group
Library  SeleniumLibrary
Resource  ../../Resources/GlobalResources.robot
Resource  ../../Resources/modulGroupResources.robot

*** Test Cases ***
Verify Successful Menampilkan list data Group
    [documentation]  This test case verifies that user is able to show list data group
    [tags]  show
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Group
    Close Browser
Verify Successful Create Data Group Dengan Tambah Data Customer
    [documentation]  This test case verifies that user is able to create new group dengan tambah data customer
    [tags]  add
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Group
    Click Button Create Group
    Input Fields Group
    Click Button Simpan
    Verify Berhasil Create
    Close Browser
Verify Successful Menambahkan data customer pada existing group
    [documentation]  This test case verifies that user is able to  menambahkan data customer pada existing group
    [tags]  add
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Group
    Edit Existing Group
    Tambah Existing Group
    Click Button Update
    Verify Berhasil Edit
    Close Browser
Verify Successful delete data customer pada existing group
    [documentation]  This test case verifies that user is able to delete data customer pada existing group
    [tags]  delete
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Group
    Edit Existing Group
    Delete Existing Group
    Click Button Ya,Hapus
    Verify Berhasil Delete Existing
    Click Button Update
    Verify Berhasil Edit
    Close Browser
Verify Successful Edit Kode Group
    [documentation]  This test case verifies that user is able to edit code group
    [tags]  edit
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Group
    Click Button Edit Group
    Input Edit Kode Group
    Click Button Update
    Verify Berhasil Edit
    Close Browser
Verify Successful Edit Nama Group
    [documentation]  This test case verifies that user is able to edit nama group
    [tags]  edit
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Group
    Click Button Edit Group
    Input Edit Nama Group
    Click Button Update
    Verify Berhasil Edit
    Close Browser
Verify Successful Edit Group dari List 
    [documentation]  This test case verifies that user is able to edit group dari List
    [tags]  edit
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Group
    Click Button Edit Group
    Input Edit Kode Group
    Input Edit Nama Group
    Delete Existing Group
    Click Button Ya,Hapus
    Verify Berhasil Delete Existing
    Tambah Existing Group
    Click Button Update
    Verify Berhasil Edit
    Close Browser
Verify Successful Edit Group dari View Detail 
    [documentation]  This test case verifies that user is able to edit group dari view detail
    [tags]  edit
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Group
    Edit Existing Group
    Input Edit Kode Group
    Input Edit Nama Group
    Delete Existing Group
    Click Button Ya,Hapus
    Verify Berhasil Delete Existing
    Tambah Existing Group
    Click Button Update
    Verify Berhasil Edit
    Close Browser
Verify Successful Delete Group dari View Detail 
    [documentation]  This test case verifies that user is able to delete group dari view detail
    [tags]  delete
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Group
    Delete Group dari View Detail
    Click Ya Hapus dari View
    Verify Berhasil Delete
    Close Browser
Verify Successful Delete Data Group
    [documentation]  This test case verifies that user is able to delete data group
    [tags]  delete
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Group
    Click Button Delete Group
    Verify Berhasil Delete
    Close Browser
Verify Successful View Detail Data Group
    [documentation]  This test case verifies that user is able to view detail data group
    [tags]  view
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Group
    View Data Group
    Click Button Kembali
    Close Browser
Verify Create Data Group Tanpa Data Customer
    [documentation]  This test case verifies that user is able to create new group tanpa data customer
    [tags]  add
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Group
    Click Button Create Group
    Input Fields Group Tanpa Data Customer
    Click Button Simpan
    Verify Berhasil Create
    Close Browser
Verify Create group dengan blank field Kode Group dan Nama Group
    [documentation]  This test case verifies that user is unable to create new group dengan blank field Kode Group dan Nama Group
    [tags]  add
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Group
    Click Button Create Group
    Click Button Simpan
    Verify Field Harus diisi
    Close Browser
Verify Blank filter
    [documentation]  This test case verifies that user is able to Blank filter 
    [tags]  filter
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Group
    Click Button filter
    CLick Button Tampilkan
    Close Browser
Verify Berhasil Filter by All Status
    [documentation]  This test case verifies that user is able to filter by All status
    [tags]  filter
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Group
    Click Button filter
    Filter by All Status
    CLick Button Tampilkan
    Close Browser
Verify Berhasil Filter by Status Aktif
    [documentation]  This test case verifies that user is able to filter by status aktif
    [tags]  filter
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Group
    Click Button filter
    Filter by Status Aktif
    CLick Button Tampilkan
    Close Browser
Verify Berhasil Filter by Status Non Aktif
    [documentation]  This test case verifies that user is able to filter by status non aktif
    [tags]  filter
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Group
    Click Button filter
    Filter by Status Non Aktif
    CLick Button Tampilkan
    Close Browser
Verify Berhasil Menonaktifkan Status
    [documentation]  This test case verifies that user is able to Unactivate Status
    [tags]  filter
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Group
    Click Button filter
    Filter by Status Aktif
    CLick Button Tampilkan
    Menonaktifkan Status
    Close Browser
Verify Berhasil Mengaktifkan Status
    [documentation]  This test case verifies that user is able to Activate Status
    [tags]  filter
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Group
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
    Click Modul Group
    Click Button filter
    Filter by Status Aktif
    CLick Button Tampilkan
    View Data Group
    Switch Status
    Nonaktifkan Status
    Close Browser
Verify Berhasil Mengaktifkan Status dari View
    [documentation]  This test case verifies that user is able to Activate Status from view
    [tags]  filter
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul Group
    Click Button filter
    Filter by Status Non Aktif
    CLick Button Tampilkan
    View Data Group
    Switch Status
    Aktifkan Status
    Close Browser
*** Keywords ***