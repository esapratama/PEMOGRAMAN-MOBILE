void main() {
  // Membuat record dengan 4 elemen:
  // dua positional ('first', 'last') dan dua named (a: 2, b: true)
  var record = ('first', a: 2, b: true, 'last');
  print(record);

  // Function 'tukar' dengan parameter record bertipe (int, int)
  (int, int) tukar((int, int) record) {
    var (a, b) = record;
    return (b, a);
  }

  // Membuat record mahasiswa dengan field nama (String) dan nim (int)
  (String, int) mahasiswa = ('Esa Pratama Putri', 2341720061);
  print(mahasiswa);

  // Membuat record baru seperti record pertama
  var mahasiswa2 = ('first', a: 2, b: true, 'last');

  // Mengakses isi record dengan positional ($1, $2, dst) dan named (a, b)
  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.a); // Prints 2
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
}
