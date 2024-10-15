*** Settings ***
Documentation  Beli
Library  SeleniumLibrary
Resource  ../../resources/pageBeli/pagebeliMobilBekas.resource.robot
Resource  ../../resources/pageBeli/pagebeliPreorder.resource.robot
Resource    ../../resources/pageBeli/pagebeliSimulasiBudget.resource.robot


*** Test Cases ***
# Verify Masuk Halaman Beli
#     [documentation]  This test case verifies that user is able to cari merek & model
#     [tags]  search
#     Open Browser  ${URL}  ${BROWSER}
#     Maximize Browser Window
#     Masuk halaman Beli
#     Close Browser
# Verify Filter Beli (masih eror)
#     [documentation]  This test case verifies that user is able to cari merek & model
#     [tags]  search
#     Open Browser  ${URL}  ${BROWSER}
#     Maximize Browser Window
#     Masuk halaman Beli
#     Filter Beli
# Verify Succesful pilih unit
#     [documentation]  
#     [tags]  search
#     Open Browser  ${URL}  ${BROWSER}
#     Maximize Browser Window
#     Masuk halaman Beli
#     Lakukan scroll ke harga
#     Pilih Unit
#     Close Browser
# # Verify Succesful pilih lokasi
# #     [documentation]  This test case verifies that user is able to cari merek & model
# #     [tags]  search
# #     Open Browser  ${URL}  ${BROWSER}
# #     Maximize Browser Window
# #     Pilih Pop up Lokasi
# #     Close Browser
# # Verify Succesful pilih filter kiri
# #     [documentation]  This test case verifies that user is able to cari merek & model
# #     [tags]  search
# #     Open Browser  ${URL}  ${BROWSER}
# #     Maximize Browser Window
# #     Masuk halaman Beli
# #     Lakukan scroll ke merek
# #     Pilih Filter Kiri
# #     Close Browser
# Verify Succesfull Cek Sekarang
#     [documentation] 
#     [tags]  search
#     Open Browser  ${URL}  ${BROWSER}
#     Maximize Browser Window
#     Masuk halaman Beli
#     Lakukan scroll ke harga
#     Pilih Unit
#     Lakukan scroll ke detail spesifikasi
#     Cek Sekarang
#     Lakukan klik on test drive
#     Cek Sekarang + Test Drive
#     Click Konfirmasi 1
# Verify Succesfull Cek Sekarang + Tukar Tambah
#     [documentation]
#     [tags]  search
#     Open Browser  ${URL}  ${BROWSER}
#     Maximize Browser Window
#     Masuk halaman Beli
#     Lakukan scroll ke harga
#     Pilih Unit
#     Lakukan scroll ke detail spesifikasi
#     Cek Sekarang
#     # Lakukan klik on test drive
#     lakukan klik on tukar tambah
#     # Lakukan scroll ke tukar tambah
#     # Cek Sekarang + Tukar Tambah
#     # Click Konfirmasi 2
# # # Verify Succesfull Cek Sekarang dari Bokmark
# #     [documentation]  This test case verifies that user is able to cari merek & model
# #     [tags]  search
# #     Open Browser  ${URL}  ${BROWSER}
# #     Maximize Browser Window
# #     Cek Sekarang Bookmark
# # verify klik banner
# #     [documentation]  This test case verifies that user is able to cari merek & model
# #     [tags]  search
# #     Open Browser  ${URL}  ${BROWSER}
# #     Maximize Browser Window
# #     Masuk halaman Beli
# #     Pilih tampilkan
# verify succesfull preorder
#     [documentation]  This test case verifies that user is able to cari merek & model
#     [tags]  search
#     Open Browser  ${URL}  ${BROWSER}
#     Maximize Browser Window
#     Masuk halaman Beli
#     # lakukan scroll ke preorder
#     # Preorder Beli
#     Verify sorting by highest price car
#     Verify sorting by lower price car
#     Verify filter by color

# Verify Masuk Halaman Simulasi
#     [documentation]  This test case verifies that user is able to cari merek & model
#     [tags]  search
#     Open Browser  ${URL}  ${BROWSER}
#     Maximize Browser Window
#     Masuk halaman Simulasi
#     Close Browser
# Verify userr succes to input simulasi budget
#     [documentation]  This test case verifies that user is succes input jual
#     [tags]    daftar
#     Open Browser  ${URL}    ${BROWSER} 
#     Maximize Browser Window
#     Masuk halaman Simulasi

# Verify userr succes to input step preorder
#     [documentation]  This test case verifies that user is succes input jual
#     [tags]    daftar
#     Open Browser  ${URL}    ${BROWSER} 
#     Maximize Browser Window
#     Masuk halaman Preorder
#     Click Button Preorder
#     input step preorder
