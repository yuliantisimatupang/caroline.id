*** Settings ***
Library  SeleniumLibrary
Library    String
Library    XML
# Variables  ../Locators/LocatorGlobalWeb.py
# Variables  ../Locators/LocatorHomepage.py
Variables    ./locator/LocatorHomepage.py

*** Keywords ***

Lakukan Pencarian Pilihan
    # Wait Until Element Is Visible    ${click_searh}
    # Click Element    ${click_searh}
    # # Capture Page Screenshot
    Sleep    6s
    Wait Until Element Is Visible    ${click_pencarian}   
    Click Element    ${click_pencarian}
    Click Element    ${click_pencarianatas}
    Capture Page Screenshot
    Click Element    ${click_rekomendasi}
    Capture Page Screenshot
    Click Element    ${click_kilometer}
    Capture Page Screenshot
    Click Element    ${click_hargaterendah}
    Capture Page Screenshot
    Click Element    ${click_tahunterbaru}

# Scenario Steps di Homepage - Beli Mobil
Click Button Beli
    Wait Until Element Is Visible    ${beli}
    Click Element    ${beli}
Pilih merek dan model
    Wait Until Element Is Visible  ${pilih_merek}
    Click Element     ${pilih_merek}
    # Capture Page Screenshot
Cari Merek dan Model
    Wait Until Element Is Visible  ${input_cari_merek_model}
    Click Element     ${input_cari_merek_model}
    Input Text  ${input_cari_merek_model}  ${search_merek}
    Sleep    3s
    Click Element    ${id_HPpilihMerekmodel}
    Click Element    ${pilih_model}
    Click Button    ${button_simpanMerkModel}
    


Cari Merek dan Model Invalid
    Wait Until Element Is Visible  ${input_cari_merek_model}  timeout=10s
    Click Element     ${input_cari_merek_model}
    Capture Page Screenshot
    Input Text  ${input_cari_merek_model}  ${search_merek_invalid}
    Capture Page Screenshot
Filter Satu Merek dan Satu Model 
    Wait Until Element Is Visible  ${Mazda}  timeout=5s
    Click Element  ${Mazda}
    Capture Page Screenshot
    Click Element  ${Biante}
    Capture Page Screenshot
Filter Harga
    Wait Until Element Is Visible  ${pilih_harga}  timeout=10s
    Click Element     ${pilih_harga}
    Capture Page Screenshot
Filter Tahun
    Wait Until Element Is Visible  ${pilih_tahun}  timeout=10s
    Click Element     ${pilih_tahun}
    Capture Page Screenshot
    Input Text    ${input_min_tahun}    ${min_tahun}
    Capture Page Screenshot
    Input Text    ${input_max_tahun}    ${max_tahun}
    Capture Page Screenshot

Pilih Lokasi
    Wait Until Element Is Visible  ${pilih_lokasi}  timeout=10s
    Click Element     ${pilih_lokasi}
    Capture Page Screenshot
Cari Lokasi
    Wait Until Element Is Visible  ${input_cari_lokasi}  timeout=10s
    Click Element     ${input_cari_lokasi}
    Capture Page Screenshot
    Input Text  ${input_cari_lokasi}  ${search_lokasi}
    Capture Page Screenshot
Cari Lokasi invalid
    Wait Until Element Is Visible  ${input_cari_lokasi}  timeout=10s
    Click Element     ${input_cari_lokasi}
    Capture Page Screenshot
    Input Text  ${input_cari_lokasi}  ${search_lokasi_invalid}
    Capture Page Screenshot
Filter Satu Lokasi
    Wait Until Element Is Visible  ${input_cari_lokasi}  timeout=10s
    Click Element     ${input_cari_lokasi}
    Capture Page Screenshot
    Click Element  ${Jakarta_Pusat}
    Capture Page Screenshot

Click Button Jual
    Wait Until Element Is Visible    ${jual}  timeout=10s
    Click Element    ${jual}
Pilih Merek Jual
    Wait Until Element Is Visible  ${pilih_merek_jual}  timeout=10s
    Click Element     ${pilih_merek_jual}
    Capture Page Screenshot
Cari Merek Jual
    Wait Until Element Is Visible  ${input_cari_merek_jual}  timeout=10s
    Click Element     ${input_cari_merek_jual}
    Capture Page Screenshot
    Input Text  ${input_cari_merek_jual}  ${search_merek}
    Capture Page Screenshot
Click Button Jual Sekarang
    Wait Until Element Is Visible    ${button_jual}  timeout=10s
    Click Element    ${button_jual}
Input Merek Jual
    Wait Until Element Is Visible  ${input_cari_merek_jual}  timeout=10s
    Click Element     ${input_cari_merek_jual}
    Capture Page Screenshot
    Click Element    ${HONDA}
    Click Element    ${ACCORD}
Input Tahun Jual
    Click Element    ${TAHUN}
    Capture Page Screenshot
Input No Hp Jual
    Capture Page Screenshot
    Input Text  ${input_no_hp_jual}  ${nohp}

Click Button Tukar
    Wait Until Element Is Visible    ${tukar}  timeout=10s
    Click Element    ${tukar}

Click Button Tukar Sekarang
    Wait Until Element Is Visible    ${tukar_sekarang}  timeout=10s
    Click Element    ${tukar_sekarang}

Click Lihat Promo
    Wait Until Element Is Visible    ${lihat_promo}  timeout=10s
    Click Element    ${lihat_promo} 

Click Mobil Bekas Pilihan
    Wait Until Element Is Visible    ${pilih_rekomendasi}  timeout=10s
    Click Element    ${pilih_rekomendasi}
    Capture Page Screenshot
    Click Element    ${pilih_mobilterbaru}
    Capture Page Screenshot
    Click Element    ${pilih_hargaterendah}
    Capture Page Screenshot
    Click Element    ${pilih_tahunterbaru}
Click Mobil Sesuai Budget
    Wait Until Element Is Visible    ${dibawah150}  timeout=10s
    Click Element    ${dibawah150}
    Capture Page Screenshot
    Click Element    ${rentang200}
    Capture Page Screenshot
    Click Element    ${rentang250}
    Capture Page Screenshot
    Click Element    ${rentang300}
    Capture Page Screenshot
    Click Element    ${rentangdiatas}
Lakukan scroll to Dengarkan Cerita Pelanggan
    Capture Page Screenshot
    Scroll Element Into View  ${Dengarkancerita}
Click Banner Bosan dengan Mobil Lama
    Wait Until Element Is Visible    ${bannerbeli}  timeout=10s
    Click Element    ${bannerbeli}
    Capture Page Screenshot
    Click Element    ${bannertukar}
