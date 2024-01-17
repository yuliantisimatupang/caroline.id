*** Settings ***
Library  SeleniumLibrary
Library    DateTime
Library    OperatingSystem
Library  Process
Variables  ../Locators/LocatorCustomer.py
Variables  ../Locators/LocatorGlobal.py
Variables  ../TestData/TestdataCustomer.py
Variables  ../TestData/TestdataGlobal.py

*** Variables ***
${image_path}   ${EXECDIR}\\JBA\\cms\\DataFiles\\Test.png
*** Variables ***

*** Keywords ***
Click Modul Customer
    Click Element  ${modul_customer}
    Capture Page Screenshot
Click Button Create Customer
    Wait Until Element Is Visible  ${button_create}  timeout=10s
    Click Button  ${button_create}

Input Fields Customer
    Input Text   ${input_no_customer_jba}  ${no_customer_jba}
    Click Element  ${input_pilih_tipe_customer}
    Click Element  ${tipe_customer_perorang}
    Click Element  ${input_pilih_membership}
    Click Element  ${membership_regular}
    Input Text   ${input_nama_depan}  ${nama_depan}
    Input Text   ${input_nama_belakang}  ${nama_belakang}
    Input Text   ${input_no_ponsel}  ${no_ponsel}
    Input Text   ${input_email}  ${email}
    Input Text   ${input_no_ponsel}  ${no_ponsel}
    Input Text   ${input_tempat_lahir}  ${tempat_lahir}
    Input Text   ${input_tanggal_lahir}  ${tanggal_lahir}
    Capture Page Screenshot
    Click Element  ${input_jenis_kelamin}
    Click Element  ${wanita}
    Input Text   ${input_nama_kota}  ${kota}
    Input Text   ${input_alamat}  ${alamat}
    Input Text   ${input_no_ktp}  ${no_ktp}
    Input Text   ${input_no_npwp}  ${no_npwp}
Unggah File Menggunakan JavaScript
    Log   ${CURDIR}
    ${image_path1}    Set Variable   ${CURDIR}\\Test1.png
    ${image_path2}  Normalize Path   ${image_path1}
    Scroll Element Into View  ${upload_ktp}
    Wait Until Element Is Visible    ${upload_ktp}   timeout=10s
    Set Focus To Element  ${upload_ktp}
    #Execute JavaScript  document.querySelector('${upload_ktp}').style.display = 'block';  # Membuat tombol unggah terlihat
    #Execute JavaScript  document.querySelector('${upload_ktp}').click();  # Klik tombol unggah
    Execute JavaScript  document.querySelector('${upload_ktp}').style.display = 'block';  # Membuat elemen input file terlihat
    Execute JavaScript  document.querySelector('${upload_ktp}').setAttribute('value', '${image_path2}');  # Set nilai elemen input file
Click Button Ya Simpan
    Click Button  ${button_ya_simpan}
Click Button Cek Lagi
    Click Button  ${button_cek_lagi}
Click Button Delete Customer
    Click Element  ${aksi_customer}
    Click Element  ${button_delete}
    Capture Page Screenshot
    Click Element  ${Ya_Hapus}
Click Button Selanjutnya Page 1
    Click Element  ${button_selanjutnya}
Click Button Selanjutnya Page 2
    Click Element  ${button_selanjutnya2}
Export Customer CSV
    Click Element   ${icon_export}
    Wait Until Element Is Visible  ${dropdown_pilih_format}  timeout=10s
    Capture Page Screenshot
    Click Element   ${dropdown_pilih_format}
    Wait Until Element Is Visible  ${file_csv}  timeout=10s
    Click Element   ${file_csv}
    Capture Page Screenshot
    Click Element   ${button_export}
    Capture Page Screenshot
    Sleep  3s
    Capture Page Screenshot
Export Customer PDF
    Click Element   ${icon_export}
    Wait Until Element Is Visible  ${dropdown_pilih_format}  timeout=10s
    Capture Page Screenshot
    Click Element   ${dropdown_pilih_format}
    Wait Until Element Is Visible  ${file_pdf}  timeout=10s
    Click Element   ${file_pdf}
    Capture Page Screenshot
    Click Element   ${button_export}
    Capture Page Screenshot
    Sleep  3s
    Capture Page Screenshot
Export Customer Excel
    Click Element   ${icon_export}
    Wait Until Element Is Visible  ${dropdown_pilih_format}  timeout=10s
    Capture Page Screenshot
    Click Element   ${dropdown_pilih_format}
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
Download format template CSV
    Click Element   ${icon_download}
    Wait Until Element Is Visible  ${download_csv}  timeout=10s
    Capture Page Screenshot
    Click Element   ${download_csv}
    Capture Page Screenshot
    Sleep  3s
    Capture Page Screenshot
Resend Password Customer
    Wait Until Element Is Visible  ${icon_resend_password}  timeout=10s
    Capture Page Screenshot
    Click Element   ${icon_resend_password}
    Capture Page Screenshot
    Wait Until Element Is Visible  ${ya_mengerti_resend}  timeout=10s
    Click Element  ${ya_mengerti_resend}
    Capture Page Screenshot
View Data Customer
    Click Element  ${button_view_customer}
    Capture Page Screenshot

    
