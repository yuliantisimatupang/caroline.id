*** Settings ***
Library  SeleniumLibrary
Library    DateTime
Library    OperatingSystem
Variables  ../Locators/LocatorCustomer.py
Variables  ../Locators/LocatorGlobal.py
Variables  ../TestData/TestdataCustomer.py

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
    Wait Until Element Is Visible  ${upload_ktp}
    #Run Keyword Unless    '${file_contents}' == 'None'    Log    Successfully read file contents: ${file_contents}
    #Click Element  ${upload_ktp}
    #${file_contents}=    Run Keyword And Ignore Error    Get File    ${EXECDIR}/cms/Test/ModulCustomer/Test.png    encoding=UTF-8
    #Run Keyword Unless    '${file_contents}' == 'None'    Log    Successfully read file contents: ${file_contents}
    #${file_path}    Get File    ${IMAGE_PATH}  
    #Click Element  ${upload_ktp}
    Choose File  ${upload_ktp}  ${EXECDIR}\cms\Test\ModulCustomer\Test.png
    #Choose File  ${upload_npwp}  ${file_npwp}
    Capture Page Screenshot
    Scroll Element Into View  ${button_selanjutnya}
    Click Element  ${button_selanjutnya}
    Input Text   ${input_nama_bank}  ${nama_bank}
    Input Text   ${input_cabang_bank}  ${cabang_bank}
    Input Text   ${input_no_rekening}  ${no_rekening}
    #Choose File  ${upload_foto_buku_tabungan}  ${file_tabungan}
    Input Text  ${input_catatan}  ${Catatan}
    Capture Page Screenshot
    Wait Until Element Is Enabled  ${button_selanjutnya}  timeout=10s
    Click Element  ${button_selanjutnya2}
    Click Element  ${input_tujuan_beli}
    Click Element  ${digunakan_sendiri}
    Click Element  ${input_sumber_dana}
    Click Element  ${gaji_upah}
    Input Text  ${input_transaksi_untuk}  ${transaksi_untuk}
    Click Element  ${input_jenis_kendaraan}
    Click Element  ${niaga}
    Input Text  ${input_other1}  ${other}
    Input Text  ${input_other2}  ${other}
    Input Text  ${input_other3}  ${other}
    Input Text  ${input_other4}  ${other}
    Input Text  ${input_other5}  ${other}
    Click Element  ${status_on_customer}
    Capture Page Screenshot
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

    
