void main() {
  int counter = 0;

  while (counter < 33) {
    print(counter);
    counter++;
  }
  // Akan terjadi eror, karena variabel counter belum ada
  // Setelah menambahkan variabel counter yang dimulai dari 0
  do {
    print(counter);
    counter++;
  } while (counter < 77);
}
// Saat kode ditambahkan dan dijalankan, loop yang ada akan dijalankan dulu, 
// setelah itu kondisi akan di cek dan berhenti pada counter < 77 
