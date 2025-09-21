void main() {
  for (int index = 10; index < 27; index++) {
    if (index == 21) {
      // Int index = 10 inisialisasi variabel indes yang bertipe interger dan dimulai dari 10,
      // sedangkan index < 27 adalah kondisi yang Dimana index < 27 dan akan
      // menjalankan isi daari loop.

      break;
    } else if (index > 1 && index < 7) {
      continue;
    }

    print(index);
  }
}
// Break digunakan untuk menghentikan perulangan, sdangkan continue digunakan 
// untuk melewati iterasi, sehingga pogram mencetak angka 10-20 dan berhenti saat 
// mencapai 21 