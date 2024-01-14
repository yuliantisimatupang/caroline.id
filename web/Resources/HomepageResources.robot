*** Settings ***
Library  SeleniumLibrary
Library    String
Library    XML
Variables  ../Locators/LocatorGlobal.py
Variables  ../Locators/LocatorHomepage.py
Variables  ../TestData/TestdataHomepage.py

*** Keywords ***
Cari Merek dan Model
    Wait Until Element Is Visible  ${input_cari_merek_model}  timeout=10s
    Click Element     ${input_cari_merek_model}
    Capture Page Screenshot
    Input Text  ${input_cari_merek_model}  ${search_merek}
    Capture Page Screenshot
Cari Invalid Merek dan Model
    Wait Until Element Is Visible  ${input_cari_merek_model}  timeout=10s
    Click Element     ${input_cari_merek_model}
    Capture Page Screenshot
    Input Text  ${input_cari_merek_model}  ${search_merek_invalid}
    Capture Page Screenshot
    Wait Until Element Is Not Visible  ${AICE}  timeout=5s
Click Button Cari Unit
    Wait Until Element Is Visible  ${button_cari}  timeout=5s
    Click Element  ${button_cari}
    Sleep  5s
    Capture Page Screenshot
Cari Lokasi 
    Wait Until Element Is Visible  ${input_cari_lokasi}  timeout=10s
    Click Element     ${input_cari_lokasi}
    Capture Page Screenshot
    Click Element  ${pilih_semua_lokasi}
    Capture Page Screenshot
filter date only
    Wait Until Element Is Visible  ${input_date}  timeout=10s
    Click Element  ${input_date}
    Capture Page Screenshot
    Wait Until Element Is Visible  ${tanggal_28}  timeout=10s
    Click Element  ${tanggal_28}
    Capture Page Screenshot
    Click Element  ${tanggal_28}
    Capture Page Screenshot
filter range date 
    Wait Until Element Is Visible  ${input_date}  timeout=10s
    Click Element  ${input_date}
    Capture Page Screenshot
    Wait Until Element Is Visible  ${tanggal_28}  timeout=10s
    Click Element  ${tanggal_28}
    Capture Page Screenshot
    Click Element  ${tanggal_29}
    Capture Page Screenshot
Filter Satu Merek dan Model
    Wait Until Element Is Visible  ${input_cari_merek_model}  timeout=10s
    Click Element     ${input_cari_merek_model}
    Capture Page Screenshot
    Click Element  ${AICE}
    Capture Page Screenshot
    Click Element  ${checkbox_semua}
    Capture Page Screenshot
Filter Multiple Merek dan Model
    Wait Until Element Is Visible  ${input_cari_merek_model}  timeout=10s
    Click Element     ${input_cari_merek_model}
    Capture Page Screenshot
    Click Element  ${AICE}
    Capture Page Screenshot
    Click Element  ${checkbox_semua}
    Capture Page Screenshot
    Click Element  ${AICE}
    Click Element  ${ALFA_ROMEO}
    Capture Page Screenshot
    Click Element  ${checkbox_semua}
    Capture Page Screenshot
Filter Semua Merek dan Model
    Wait Until Element Is Visible  ${input_cari_merek_model}  timeout=10s
    Click Element     ${input_cari_merek_model}
    Capture Page Screenshot
    Click Element  ${AICE}
    Capture Page Screenshot
    Click Element  ${checkbox_semua}
    Capture Page Screenshot
    Click Element  ${AICE}
    Click Element  ${ALFA_ROMEO}
    Capture Page Screenshot
    Click Element  ${checkbox_semua}
    Capture Page Screenshot
    Click Element  ${ALFA_ROMEO}
    Click Element  ${AUDI}
    Capture Page Screenshot
    Click Element  ${checkbox_semua}
    Capture Page Screenshot
    Click Element  ${ALFA_ROMEO}
    Click Element  ${BEIJING}
    Capture Page Screenshot
    Click Element  ${checkbox_semua}
    Capture Page Screenshot
    Click Element  ${BEIJING}
    Click Element  ${BIMANTARA}
    Capture Page Screenshot
    Click Element  ${checkbox_semua}
    Capture Page Screenshot
Filter Harga
    Wait Until Element Is Visible  ${input_harga}  timeout=10s
    Click Element     ${input_harga}
    Capture Page Screenshot
    Wait Until Element Is Visible  ${input_dari_harga}  timeout=10s
    Input Text  ${input_dari_harga}  ${dari_harga}
    Input Text  ${input_sampai_harga}  ${sampai_harga}
    Capture Page Screenshot
    Click Element     ${input_cari_merek_model}
Filter Merek dan Model by Search
    Wait Until Element Is Visible  ${input_cari_merek_model}  timeout=10s
    Click Element     ${input_cari_merek_model}
    Capture Page Screenshot
    Input Text  ${input_cari_merek_model}  ${search_merek}
    Capture Page Screenshot
    Click Element  ${AICE}
    Capture Page Screenshot
    Click Element  ${checkbox_semua}
    Capture Page Screenshot
Cari Lokasi by Search
    Wait Until Element Is Visible  ${input_cari_lokasi}  timeout=10s
    Click Element     ${input_cari_lokasi}
    Capture Page Screenshot
    Input Text  ${input_cari_lokasi}  ${lokasi}
    Capture Page Screenshot
    Click Element  ${checkbox_lokasi}
    Capture Page Screenshot
Switch ke Lelang Motor
    Wait Until Element Is Visible  ${lelang_motor}  timeout=10s
    Click Element     ${lelang_motor}
    Capture Page Screenshot
Lelang Minggu Ini / Mobil
    Scroll Element Into View  ${lelang_minggu_ini}
    Sleep  3s
    Capture Page Screenshot
    Execute JavaScript    window.scrollTo(document.body.scrollWidth, 0)
    Sleep  3s
    Capture Page Screenshot
    Wait Until Element Is Visible  ${icon_selengkapnya_lelang}  timeout=10s
    Click Element     ${icon_selengkapnya_lelang}
    Sleep  3s
    Capture Page Screenshot
Lelang Minggu Ini / Motor
    Scroll Element Into View  ${lelang_minggu_ini}
    Sleep  3s
    Capture Page Screenshot
    Click Element  ${lelang_motor}
    Capture Page Screenshot
    Execute JavaScript    window.scrollTo(document.body.scrollWidth, 0)
    Sleep  3s
    Capture Page Screenshot
    Wait Until Element Is Visible  ${icon_selengkapnya_lelang}  timeout=10s
    Click Element     ${icon_selengkapnya_lelang}
    Sleep  3s
    Capture Page Screenshot
Unit Rekomendasi
    Scroll Element Into View  ${unit_rekomendasi}
    Sleep  3s
    Capture Page Screenshot
    Execute JavaScript    window.scrollTo(document.body.scrollWidth, 0)
    Sleep  3s
    Capture Page Screenshot
    Wait Until Element Is Visible  ${icon_selengkapnya_unit}  timeout=10s
    Click Element     ${icon_selengkapnya_unit}
    Sleep  3s
    Capture Page Screenshot