*** Settings ***
Library  SeleniumLibrary
Variables  ../Locators/LocatorWarna.py
Variables  ../Locators/LocatorGlobal.py
Variables  ../TestData/TestdataWarna.py

*** Keywords ***
Click Modul Warna
    Click Element  ${modul_warna}
    Capture Page Screenshot
Click Button Create Warna
    Click Button  ${button_create}
Input Create Kode Warna
    Input Text   ${input_create_code_warna}  ${create_code_warna}
Input Create Nama Warna
    Input Text   ${input_create_nama_warna}  ${create_nama_warna}
Input Create Hex Warna
    Input Text   ${input_create_hex_warna}  ${create_hex_warna}
Input Edit Kode Warna
    Input Text   ${input_edit_code_warna}  ${edit_code_warna}
Input Edit Nama Warna
    Input Text   ${input_edit_nama_warna}  ${edit_nama_warna}
Input Edit Hex Warna
    Input Text   ${input_edit_hex_warna}  ${edit_hex_warna}
Click Button Delete Warna
    Click Element  ${aksi_warna}
    Click Element  ${button_delete}
    Capture Page Screenshot
    Click Element  ${Ya_hapus}
Search By Code Warna
    Input Text  ${input_search}  ${edit_code_warna}
    Press Keys  ${input_search}    ENTER
    Capture Page Screenshot
Search By Nama Warna
    Input Text  ${input_search}  ${edit_nama_warna}
    Press Keys  ${input_search}    ENTER
    Capture Page Screenshot