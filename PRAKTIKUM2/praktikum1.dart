void main() {
  String test = "test2";

  if (test == "test1") {
    print("Test1");
  } else if (test == "test2") {
    print("Test2");
  } else {
    print("Something else");
  }
  // penjelasan :
  // menggunakan percabangan if-else
  // untuk memeriksa isi variabel dari test. Karena test bernilai “test2”, makan akan
  // dijalankan bagian else if (tset == “test 2”) dan if (teset == “teset2”), sehingga hasil
  // dari kode program Langkah 1 adalah tset 2 dan test again

  if (test == "test2") print("Test2 again");

  // String test = "true";
  // if (test) {
  //   print("Kebenaran");
  // }

  // penjelasan :
  // dikarenakan if harus berupa Boolean (true/false), tapi dalam
  // kode pogram Langkah 2 bertipe string (test)

  String kondisi = "true";
  if (kondisi == "true") {
    print("Kebenaran");
  } else {
    print("Bukan kebenaran");
  }
}
// penjelasan :
// Untuk mengatasi eror tersebut, menggunakan if/else dengan kondisi