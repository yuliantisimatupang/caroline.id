*** Settings ***
Library  SeleniumLibrary
Variables  ../Locators/LocatorCabang.py
Variables  ../Locators/LocatorGlobal.py
Variables  ../TestData/TestdataCabang.py

*** Keywords ***
Click Modul Cabang
    Click Element  ${modul_cabang}
    Capture Page Screenshot
Click Button Add
    #Wait Until Element Is Visible  ${add_cabang}  timeout=10s
    Click Button  ${add_cabang}
Input Fields Cabang
    Input Text   ${input_kode_cabang}  ${kode_cabang}
    Input Text   ${input_nama_cabang}  ${nama_cabang}
    Input Text   ${input_nama_pic}  ${nama_pic}
    Input Text   ${input_no_pic}  ${no_pic}
    Input Text   ${input_lokasi_cabang}  ${lokasi_cabang}
Verify Data Cabang duplikat Code
    Wait Until Page Contains    ${duplikat_code}
    Capture Page Screenshot
    Close Browser
Search By Code
    Input Text  ${input_search}  ${kode_cabang}
    Press Keys  ${input_search}    ENTER
    Capture Page Screenshot
Search By Nama Cabang
    Input Text  ${input_search}  ${nama_cabang}
    Press Keys  ${input_search}    ENTER
    Capture Page Screenshot
Search By Lokasi Cabang
    Input Text  ${input_search}  ${lokasi_cabang}
    Press Keys  ${input_search}    ENTER
    Capture Page Screenshot
Search By Nama PIC
    Input Text  ${input_search}  ${nama_pic}
    Press Keys  ${input_search}    ENTER
    Capture Page Screenshot
Search By Nomor PIC
    Input Text  ${input_search}  ${no_pic}
    Press Keys  ${input_search}  ENTER
    Capture Page Screenshot
Edit Field-Field Cabang
    #Wait Until Element Is Visible  ${input_edit_kode_cabang}  timeout=10s
    Click Element  ${input_edit_kode_cabang}
    Clear Element Text  ${input_edit_kode_cabang}
    Input Text   ${input_edit_kode_cabang}  ${kode_cabang_edit}
    Click Element  ${input_edit_nama_cabang}
    Clear Element Text  ${input_edit_nama_cabang}
    Input Text   ${input_edit_nama_cabang}  ${nama_cabang_edit}
    Click Element  ${input_edit_nama_pic}
    Clear Element Text  ${input_edit_nama_pic}
    Input Text   ${input_edit_nama_pic}  ${nama_pic_edit}
    Click Element  ${input_edit_no_pic}
    Clear Element Text  ${input_edit_no_pic}
    Input Text   ${input_edit_no_pic}  ${no_pic_edit}
    Click Element  ${input_edit_lokasi_cabang}
    Clear Element Text  ${input_edit_lokasi_cabang}
    Input Text   ${input_edit_lokasi_cabang}  ${lokasi_cabang_edit}
    Capture Page Screenshot
Click Button Delete
    Click Element  ${aksi}
    Click Element  ${delete}
    Capture Page Screenshot
    Click Element  ${Ya_Hapus}





