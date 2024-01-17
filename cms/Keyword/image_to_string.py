import base64

def image_to_string(file_path):
    with open(file_path, "rb") as image_file:
        encoded_string = base64.b64encode(image_file.read()).decode('utf-8')
    return encoded_string

if __name__ == "__main__":
    file_path = input("Masukkan path file gambar: ")
    result = image_to_string(file_path)
    print("Hasil konversi gambar ke string:")
    print(result)