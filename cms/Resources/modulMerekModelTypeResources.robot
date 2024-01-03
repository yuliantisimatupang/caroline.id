*** Settings ***
Library  SeleniumLibrary
Variables  ../Locators/LocatorGlobal.py
Variables  ../Locators/LocatorMerekModelType.py
Variables  ../TestData/TestDataMerekModelType.py

*** Keywords ***
Click Modul Merek/Model/Type
    Click Element  ${modul_Merek_Model_Type}
    Capture Page Screenshot
Click Tab Merek
    Click Element  ${tab_merek}
    Capture Page Screenshot
Click Tab Model
    Click Element  ${tab_model}
    Capture Page Screenshot
Click Tab Type
    Click Element  ${tab_tipe}
    Capture Page Screenshot
Search Nama Merek
    Input Text  ${input_search}   ${search_nama_merek}
    Press Keys  ${input_search}    ENTER
    Capture Page Screenshot
    Element Should Be Visible    ${edit}
Search Objek Lelang
    Input Text  ${input_search}  ${search_objek_lelang}
    Press Keys  ${input_search}    ENTER
    Capture Page Screenshot
    Element Should Be Visible    ${edit}
Filter by All Category Objek Lelang
    Click Element  ${dropdown_objek_filter}
    Click Element  ${semua_objek_lelang}
    Capture Page Screenshot
Filter by Objek Lelang Car
    Click Element  ${dropdown_objek_filter}
    Click Element  ${filter_car}
    Capture Page Screenshot
Filter by Objek Lelang Bike
    Click Element  ${dropdown_objek_filter}
    Click Element  ${filter_bike}
    Capture Page Screenshot
Click Button Create
    Wait Until Element Is Visible  ${button_create}  timeout=10s
    Click Button  ${button_create}
    Capture Page Screenshot
Input Field objek lelang
    Wait Until Element Is Visible  ${dropdown_objek_lelang_create}  timeout=10s
    Click Element  ${dropdown_objek_lelang_create}
    Wait Until Element Is Visible  ${create_car}  timeout=10s
    Click Element  ${create_car}
Input Field Nama Merek
    Click Element  ${input_nama_merek}
    Input Text   ${input_nama_merek}   ${nama_merek}
    Capture Page Screenshot
Input Edit Field Objek Lelang
    Wait Until Element Is Visible  ${dropdown_objek_edit}  timeout=10s
    Click Element  ${dropdown_objek_edit}
    Click Element  ${edit_bike}
Input Edit Field Nama Merek
    Click Element  ${input_nama_merek_edit}
    Input Text   ${input_nama_merek_edit}   ${nama_merek_edit}
    Capture Page Screenshot
Hapus Data Field Nama Merek
    Click Element  ${input_nama_merek_edit}
    Clear Element Text  ${input_nama_merek_edit}
Click Button Delete Merek
    Click Element  ${aksi_merek}
    Click Element  ${delete_merek_model_type}
    Capture Page Screenshot
    Click Element  ${Ya_hapus_merek_model_type}

#Modul Model
Click Button Create Model
    Wait Until Element Is Visible  ${button_create_model}  timeout=10s
    Click Button  ${button_create_model}
    Capture Page Screenshot
Input Field Pilih Merek
    Click Element  ${pilih_merek}
    Scroll Element Into View  ${create_merek_bmw}
    Click Element  ${create_merek_bmw}
Input Field Nama Model
    Input Text  ${input_nama_model}  ${nama_model}
Input Edit Field Pilih Merek
    Click Element  ${pilih_merek}
    Scroll Element Into View  ${edit_merek_bike}
    Click Element  ${edit_merek_bike}
Input Edit Field Nama Model
    Input Text  ${input_edit_nama_model}  ${nama_model_edit}
Click Button Delete Model
    Click Element  ${aksi_model}
    Click Element  ${delete_merek_model_type}
    Capture Page Screenshot
    Click Element  ${Ya_hapus_merek_model_type}
Hapus Data Field Nama Model
    Click Element  ${input_edit_nama_model}
    Clear Element Text  ${input_edit_nama_model}
#Modul Tipe
Input Field Pilih Model
    Click Element  ${pilih_model}
    Scroll Element Into View  ${input_pilih_model}
    Click Element  ${input_pilih_model}
Input Field Nama Tipe
    Input Text  ${input_tipe}  ${Input_nama_tipe}
Click Button Delete Type
    Click Element  ${aksi_type}
    Click Element  ${delete_merek_model_type}
    Capture Page Screenshot
    Click Element  ${Ya_hapus_merek_model_type}
Input Edit Field Pilih Model
    Click Element  ${pilih_model}
    Click Element  ${input_pilih_model_edit}
Input Edit Field Nama Tipe
    Input Text  ${input_tipe_edit}  ${Input_nama_tipe_edit}
Hapus Field Type
    Click Element  ${input_tipe_edit}
    Clear Element Text  ${input_tipe_edit}