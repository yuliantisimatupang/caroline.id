*** Settings ***
Library  SeleniumLibrary
Library    String
Variables  ../Locators/LocatorGroup.py
Variables  ../Locators/LocatorGlobal.py
Variables  ../TestData/TestdataGroup.py

*** Variables ***
${max_length}    2

*** Keywords ***
Click Modul Group
    Click Element  ${modul_group}
    Capture Page Screenshot
Click Button Create Group
    Click Button  ${button_create}
Input Fields Group
    ${random_text}      Generate Random String    ${max_length}
    Input Text   ${input_kode_group}  ${kode_group}${random_text}
    Input Text   ${input_nama_group}  ${nama_group}
    Capture Page Screenshot
    Click Element  ${button_tambah} 
    #Wait Until Element Is Visible  ${input_cari_customer}  timeout=10s
    #Sleep  3s
    #Click Element  ${input_cari_customer}
    #Input Text  ${input_cari_customer}  ${customer}
    #Press Keys  ${input_cari_customer}  ENTER
    Capture Page Screenshot
    Click Element  ${checkbox1}
    Click Element  ${checkbox2}
    Capture Page Screenshot
    Click Element  ${button_tambahkan}
    Capture Page Screenshot
Input Fields Group Tanpa Data Customer
    ${random_text}      Generate Random String    ${max_length}
    Input Text   ${input_kode_group}  ${kode_group} ${random_text}
    Input Text   ${input_nama_group}  ${nama_group}
    Capture Page Screenshot
Click Button Delete Group
    Click Element  ${aksi_group}
    Click Element  ${button_delete}
    Capture Page Screenshot
    Click Element  ${YaHapus_group}
View Data Group
    Click Element  ${button_view}
    Capture Page Screenshot
    Click Element  ${button_kembali}
    Capture Page Screenshot
Edit Existing Group
    Click Element  ${button_view}
    Capture Page Screenshot
    Wait Until Element Is Visible  ${edit_existing}  timeout=10s
    Click Element  ${edit_existing}
    Capture Page Screenshot
Tambah Existing Group
    Wait Until Element Is Visible  ${tambah_existing}  timeout=10s
    Sleep  3s
    Click Element  ${tambah_existing} 
    Wait Until Element Is Visible  ${checkbox3}  timeout=10s
    Sleep  3s
    #Click Element  ${input_cari_customer}
    #Input Text  ${input_cari_customer}  ${customer}
    #Press Keys  ${input_cari_customer}  ENTER
    #Capture Page Screenshot
    Click Element  ${checkbox3}
    Capture Page Screenshot
    Sleep  3s
    Click Element  ${button_tambahkan}
Delete Existing Group
    Wait Until Element Is Visible  ${delete_list_customer}  timeout=10s
    Click Element  ${delete_list_customer}
    Capture Page Screenshot
Verify Berhasil Delete Existing
    Wait Until Element Is Visible  ${Ya_Mengerti_Delete_GroupEx}  timeout=10s
    Capture Page Screenshot
    Sleep    2s
    Click Element  ${Ya_Mengerti_Delete_GroupEx}
    Capture Page Screenshot
    Sleep    2s