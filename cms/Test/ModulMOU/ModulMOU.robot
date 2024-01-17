* Settings *
Documentation  modul mou
Library  SeleniumLibrary
Resource  ../../Resources/GlobalResources.robot
Resource  ../../Resources/modulMOUResources.robot

*** Test Cases ***
Verify Successful Menampilkan list data MOU
    [documentation]  This test case verifies that user is able to show list data mou
    [tags]  show
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul MOU
    Close Browser
Verify Blank filter
    [documentation]  This test case verifies that user is able to Blank filter 
    [tags]  filter
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul MOU
    Click Button filter
    CLick Button Tampilkan
    Close Browser
Verify Berhasil Filter by All Status
    [documentation]  This test case verifies that user is able to filter by All status
    [tags]  filter
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul MOU
    Click Button filter
    Filter by All Status
    CLick Button Tampilkan
    Close Browser
Verify Berhasil Filter by Status Aktif
    [documentation]  This test case verifies that user is able to filter by status aktif
    [tags]  filter
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul MOU
    Click Button filter
    Filter by Status Aktif
    CLick Button Tampilkan
    Close Browser
Verify Berhasil Filter by Status Non Aktif
    [documentation]  This test case verifies that user is able to filter by status non aktif
    [tags]  filter
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul MOU
    Click Button filter
    Filter by Status Non Aktif
    CLick Button Tampilkan
    Close Browser
Verify Successful View Detail Data Customer
    [documentation]  This test case verifies that user is able to view detail data customer
    [tags]  view
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul MOU
    View Data Customer
    Close Browser
Verify Berhasil Mengaktifkan Status
    [documentation]  This test case verifies that user is able to Activate Status
    [tags]  filter
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul MOU
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
    Click Modul MOU
    Click Button filter
    Filter by Status Aktif
    CLick Button Tampilkan
    View Data Customer
    Switch Status
    Nonaktifkan Status
    Close Browser
Verify Berhasil Mengaktifkan Status dari View
    [documentation]  This test case verifies that user is able to Activate Status from view
    [tags]  filter
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul MOU
    Click Button filter
    Filter by Status Non Aktif
    CLick Button Tampilkan
    View Data Customer
    Switch Status
    Aktifkan Status
    Close Browser
Verify Berhasil Menonaktifkan Status
    [documentation]  This test case verifies that user is able to Unactivate Status
    [tags]  filter
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul MOU
    Click Button filter
    Filter by Status Aktif
    CLick Button Tampilkan
    Menonaktifkan Status
    Close Browser
Verify Successful Search by Simbol
    [documentation]  This test case verifies when user Search by Simbol Nothing Data Present
    [tags]  search
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul MOU
    Search By Simbol
    Close Browser
Verify Search Blank search
    [documentation]  This test case verifies when search with blank search nothing happen
    [tags]  search
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul MOU
    Search Blank search
    Close Browser
Verify Successful Export Customer CSV
    [documentation]  This test case verifies that user is able to export customer csv
    [tags]  export
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul MOU
    Export MOU CSV
    Verify Text Not Present Test
    Close Browser
Verify Successful Export Customer PDF
    [documentation]  This test case verifies that user is able to export customer pdf
    [tags]  export
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul MOU
    Export MOU PDF
    Verify Text Not Present Test
    Close Browser
Verify Successful Export Customer Excel
    [documentation]  This test case verifies that user is able to export customer excel
    [tags]  export
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Modul MOU
    Export MOU Excel
    Verify Text Not Present Test
    Close Browser
*** Test Cases ***
