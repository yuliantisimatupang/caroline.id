*** Settings ***
Library  SeleniumLibrary
Variables  ../Locators/LocatorGlobal.py
Variables  ../TestData/TestdataGlobal.py

*** Keywords ***
Click Button Simpan
    Capture Page Screenshot
    Click Button  ${simpan}
Verify Berhasil Create
    Sleep    2s
    Wait Until Element Is Visible  ${Ya_Mengerti_Create}  timeout=10s
    Log  Formulir telah berhasil dikirimkan
    Capture Page Screenshot
    Sleep    2s
    Click Element  ${Ya_Mengerti_Create}
    Sleep    2s
    Capture Page Screenshot
Search Blank search
    Click Element  ${input_search}
    Set Focus To Element  ${input_search}
    Press Keys  ${input_search}  ENTER
    Capture Page Screenshot
Search By Simbol
    Input Text  ${input_search}  ${simbol}
    Press Keys  ${input_search}  ENTER
    Capture Page Screenshot
Click Button Edit
    #Wait Until Element Is Visible  ${button_edit}  timeout=10s
    Click Button  ${button_edit}
Click Button Update
    Wait Until Element Is Visible  ${update}  timeout=10s
    Sleep    3s
    Click Button  ${update}
    Capture Page Screenshot
Verify Berhasil Edit
    Wait Until Element Is Visible  ${Ya_Mengerti_Update}  timeout=10s
    Capture Page Screenshot
    Sleep    2s
    Click Element  ${Ya_Mengerti_Update}
    Sleep    2s
    Capture Page Screenshot
Verify Berhasil Delete
    Wait Until Element Is Visible  ${Ya_Mengerti_Delete}  timeout=10s
    Capture Page Screenshot
    Sleep    2s
    Click Element  ${Ya_Mengerti_Delete}
    Capture Page Screenshot
    Close Browser
Click Button filter
    Wait Until Element Is Visible  ${button_filter}  timeout=10s
    Click Element  ${button_filter}
    Capture Page Screenshot
Filter by Status Aktif
    Wait Until Element Is Visible  ${dropdown_status}  timeout=10s
    Click Element  ${dropdown_status}
    Click Element  ${status_aktif}
    Capture Page Screenshot
    Sleep    2s
Filter by Status Non Aktif
    Wait Until Element Is Visible  ${dropdown_status}  timeout=10s
    Click Element  ${dropdown_status}
    Click Element  ${status_non_aktif}
    Capture Page Screenshot
    Sleep    2s
Filter by All Status 
    Wait Until Element Is Visible  ${dropdown_status}  timeout=10s
    Click Element  ${dropdown_status}
    Click Element  ${semua_status_aktif}
    Capture Page Screenshot
     Sleep    2s
CLick Button Tampilkan
    Click Element  ${button_tampilkan}
    Capture Page Screenshot
Mengaktifkan Status
    Log  Element is visible: ${status_off}
    Capture Page Screenshot
    Click Element  ${status_off}
    Wait Until Element Is Visible  ${Ya_aktifkan}
    Capture Page Screenshot
    Click Button  ${Ya_aktifkan}
    Log  Element is visible: ${status_on}
    Capture Page Screenshot
Menonaktifkan Status
    Log  Element is visible: ${status_on}
    Capture Page Screenshot
    Click Element  ${status_on}
    Wait Until Element Is Visible  ${Ya_nonaktifkan}
    Capture Page Screenshot
    Click Button  ${Ya_nonaktifkan}
    Log  Element is visible: ${status_off}
    Capture Page Screenshot
Switch Status
    Log  Element is visible: ${switch_detail_on_off}
    Capture Page Screenshot
    Click Element  ${switch_detail_on_off}
Aktifkan Status
    Wait Until Element Is Visible  ${Ya_aktifkan}
    Capture Page Screenshot
    Click Button  ${Ya_aktifkan}
    Log  Element is visible: ${status_on}
    Capture Page Screenshot
Nonaktifkan Status
    Click Button  ${Ya_nonaktifkan}
    Log  Element is visible: ${status_off}
    Capture Page Screenshot
Verify Field Harus diisi
    Wait Until Page Contains    ${verify_wajib_isi}
    Capture Page Screenshot
Verify Terjadi Kesalahan
    Wait Until Page Contains    ${verify_terjadi_kesalahan}
    Capture Page Screenshot
Pilih Size Table
    Scroll Element Into View  ${dropdown_size_table}
    Wait Until Element Is Visible  ${dropdown_size_table}
    Click Element  ${dropdown_size_table}
    Click Element  ${size_table_20}
Verify List Data
    Wait Until Element Is Visible  ${tabel_20}
    Page Should Contain Element    ${tabel_20}
    Capture Page Screenshot
Verify Page Transition
    Click Element    ${page2}
    Location Should Be    ${URL_Page2_cms}
Click Button Ya,Hapus
    Wait Until Element Is Visible  ${Ya_hapus}  timeout=10s
    Click Element  ${Ya_hapus} 
View Data
    Click Element  ${button_view}
    Capture Page Screenshot
Click Button Kembali
    Click Element  ${button_kembali}
    Capture Page Screenshot
Delete dari View Detail
    Click Element  ${button_view}
    Capture Page Screenshot
    Wait Until Element Is Visible  ${delete_dari_view}  timeout=10s
    Click Element  ${delete_dari_view}
    Capture Page Screenshot
Click Ya Hapus dari View
    Wait Until Element Is Visible  ${ya_hapus_view}  timeout=10s
    Click Element  ${ya_hapus_view}