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
    Capture Page Screenshot
Click Button Delete Group
    Click Element  ${aksi_group}
    Click Element  ${button_delete}
    Capture Page Screenshot
    Click Element  ${Ya_Hapus}
View Data Group
    Click Element  ${button_view}
    Capture Page Screenshot
    Click Element  ${button_kembali}




