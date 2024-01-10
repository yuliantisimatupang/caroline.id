*** Settings ***
Library  SeleniumLibrary
Library    DateTime
Library    OperatingSystem
Library    BuiltIn
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
    #${file_path}    Get File    ${CURDIR}${/}${file_ktp}  
    #Click Element  ${upload_ktp}
    ${image_data}    Set Variable    ${EMPTY}
    ${file_path}    Set Variable    ${file_ktp}  # Replace with your image file path
    Run Keyword And Continue On Failure    Read Binary File   ${file_path}    ${image_data}
    Log    Image Data: ${image_data}
    Choose File  ${upload_ktp}  ${file_path}
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









