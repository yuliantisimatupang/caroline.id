* Settings *
Library  SeleniumLibrary
Library    DateTime
Library    OperatingSystem
Variables  ../Locators/LocatorMOU.py
Variables  ../Locators/LocatorGlobal.py
Variables  ../TestData/TestdataMOU.py
Variables  ../TestData/TestdataGlobal.py


*** Keywords ***
Click Modul MOU
    Click Element  ${modul_mou}
    Capture Page Screenshot
Export MOU CSV
    Click Element   ${icon_export}
    sleep  3s
    Wait Until Element Is Enabled  ${pilih_format_mou}  timeout=10s
    Capture Page Screenshot
    Click Element   ${pilih_format_mou}
    Wait Until Element Is Visible  ${file_csv}  timeout=10s
    Click Element   ${file_csv}
    Capture Page Screenshot
    Click Element   ${button_export}
    Capture Page Screenshot
    Sleep  3s
    Capture Page Screenshot
Export MOU PDF
    Click Element   ${icon_export}
    Wait Until Element Is Enabled  ${pilih_format_mou}  timeout=10s
    Capture Page Screenshot
    Click Element   ${pilih_format_mou}
    Wait Until Element Is Visible  ${file_pdf}  timeout=10s
    Click Element   ${file_pdf}
    Capture Page Screenshot
    Click Element   ${button_export}
    Capture Page Screenshot
    Sleep  3s
    Capture Page Screenshot
Export MOU Excel
    Click Element   ${icon_export}
    Wait Until Element Is Enabled  ${pilih_format_mou}  timeout=10s
    Capture Page Screenshot
    Click Element   ${pilih_format_mou}
    Wait Until Element Is Visible  ${file_excel}  timeout=10s
    Click Element   ${file_excel}
    Capture Page Screenshot
    Click Element   ${button_export}
    Capture Page Screenshot
    Sleep  3s
    Capture Page Screenshot
Verify Text Not Present Test
    ${text_found}=    Run Keyword And Return Status    Wait Until Page Contains    ${TEXT_TO_NOT_CONTAIN}    10s
    Run Keyword Unless    ${text_found}    Log    Text '${TEXT_TO_NOT_CONTAIN}' is not present on the page
    Run Keyword If    ${text_found}    Fail    Text '${TEXT_TO_NOT_CONTAIN}' is present on the page
    Close Browser
View Data MOU
    Click Element  ${button_view_mou}
    Capture Page Screenshot
Click Button Create Mou
    Wait Until Element Is Visible  ${create_mou}  timeout=10s
    Click Element   ${create_mou}
    Capture Page Screenshot
Click Button Simpan Mou
    Wait Until Element Is Visible  ${simpan_mou}  timeout=10s
    Click Element   ${simpan_mou}
    Scroll Element Into View  ${input_tanggal_mulai_mou}
    Sleep  3s
    Capture Page Screenshot

*** Keywords ***
