*** Settings ***
Documentation  Homepage Web JBA
Library  SeleniumLibrary
Resource  ../../Resources/GlobalResourcesWeb.robot
Resource  ../../Resources/HomepageResources.robot

*** Test Cases ***
Verify Successful Menampilkan Suggestion Merek dan Model
    [documentation]  This test case verifies that user is able to cari merek & model
    [tags]  search
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Cari Merek dan Model
    Close Browser
Verify Gagal Menampilkan Suggestion Invalid Merek dan Model
    [documentation]  This test case verifies that user is unable to cari merek & model
    [tags]  search
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Cari Invalid Merek dan Model
    Close Browser
Verify Successful Filter Lokasi Lelang Mobil
    [documentation]  This test case verifies that user is able to filter lokasi
    [tags]  filter
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Cari Lokasi
    Click Button Cari Unit
    Close Browser
Verify Successful Filter Date Lelang Mobil
    [documentation]  This test case verifies that user is able to filter date
    [tags]  filter
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    filter date only
    Click Button Cari Unit
    Close Browser
Verify Successful Filter Range Date Lelang Mobil
    [documentation]  This test case verifies that user is able to filter date
    [tags]  filter
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    filter range date
    Click Button Cari Unit
    Close Browser
Verify Successful Filter 1 Merek dan Model Lelang Mobil
    [documentation]  This test case verifies that user is able to filter 1 merek & model
    [tags]  filter
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Filter Satu Merek dan Model
    Click Button Cari Unit
    Close Browser
Verify Successful Filter Multiple Merek dan Model Lelang Mobil
    [documentation]  This test case verifies that user is able to filter Multiple merek & model
    [tags]  filter
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Filter Multiple Merek dan Model
    Click Button Cari Unit
    Close Browser
Verify Successful Filter Semua Merek dan Model Lelang Mobil
    [documentation]  This test case verifies that user is able to filter semua merek & model
    [tags]  filter
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Filter Semua Merek dan Model
    Click Button Cari Unit
    Close Browser
Verify Successful Filter Harga Lelang Mobil
    [documentation]  This test case verifies that user is able to filter harga
    [tags]  filter
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Filter Harga
    Click Button Cari Unit
    Close Browser
Verify Successful Kombinasi Filter Lelang Mobil
    [documentation]  This test case verifies that user is able to Kombinasi filter
    [tags]  filter
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Cari Lokasi 
    filter range date
    Filter Satu Merek dan Model
    Filter Harga
    Click Button Cari Unit
    Close Browser
Verify Successful Filter Lelang Mobil / Search Lelang Mobil
    [documentation]  This test case verifies that user is able to filter by search
    [tags]  filter
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Cari Lokasi by Search
    Filter Merek dan Model by Search
    Click Button Cari Unit
    Close Browser
Verify Successful Filter Lokasi Lelang Motor
    [documentation]  This test case verifies that user is able to filter lokasi
    [tags]  filter
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Switch ke Lelang Motor
    Cari Lokasi
    Click Button Cari Unit
    Close Browser
Verify Successful Filter Date Lelang Motor
    [documentation]  This test case verifies that user is able to filter date
    [tags]  filter
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Switch ke Lelang Motor
    filter date only
    Click Button Cari Unit
    Close Browser
Verify Successful Filter Range Date Lelang Motor
    [documentation]  This test case verifies that user is able to filter date
    [tags]  filter
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Switch ke Lelang Motor
    filter range date
    Click Button Cari Unit
    Close Browser
Verify Successful Filter 1 Merek dan Model Lelang Motor
    [documentation]  This test case verifies that user is able to filter 1 merek & model
    [tags]  filter
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Switch ke Lelang Motor
    Filter Satu Merek dan Model
    Click Button Cari Unit
    Close Browser
Verify Successful Filter Multiple Merek dan Model Lelang Motor
    [documentation]  This test case verifies that user is able to filter Multiple merek & model
    [tags]  filter
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Switch ke Lelang Motor
    Filter Multiple Merek dan Model
    Click Button Cari Unit
    Close Browser
Verify Successful Filter Semua Merek dan Model Lelang Motor
    [documentation]  This test case verifies that user is able to filter semua merek & model
    [tags]  filter
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Switch ke Lelang Motor
    Filter Semua Merek dan Model
    Click Button Cari Unit
    Close Browser
Verify Successful Filter Harga Lelang Motor
    [documentation]  This test case verifies that user is able to filter harga
    [tags]  filter
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Switch ke Lelang Motor
    Filter Harga
    Click Button Cari Unit
    Close Browser
Verify Successful Kombinasi Filter Lelang Motor
    [documentation]  This test case verifies that user is able to Kombinasi filter
    [tags]  filter
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Switch ke Lelang Motor
    Cari Lokasi 
    filter range date
    Filter Satu Merek dan Model
    Filter Harga
    Click Button Cari Unit
    Close Browser
Verify Successful Filter Lelang Motor / Search Lelang Motor
    [documentation]  This test case verifies that user is able to filter by search
    [tags]  filter
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Switch ke Lelang Motor
    Cari Lokasi by Search
    Filter Merek dan Model by Search
    Click Button Cari Unit
    Close Browser
Verify Successful Show Lelang Minggu Ini / Mobil
    [documentation]  This test case verifies Successful Show Lelang Minggu Ini / Mobil
    [tags]  show
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Lelang Minggu Ini / Mobil
    Close Browser
Verify Successful Show Lelang Minggu Ini / Motor
    [documentation]  This test case verifies Successful Show Lelang Minggu Ini / Motor
    [tags]  show
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Lelang Minggu Ini / Motor
    Close Browser
Verify Successful Show Unit Rekomendasi
    [documentation]  This test case verifies Successful Show Unit Rekomendasi
    [tags]  show
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Unit Rekomendasi
    Close Browser
Verify Successful Show Info Penting
    [documentation]  This test case verifies Successful Show Info Penting
    [tags]  show
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Info Penting Lelang
    Close Browser
*** Keywords ***