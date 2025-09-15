1. Jelaskan yang dimaksud Functions dalam bahasa Dart!
- function digunakan untuk mengelompokkan kode dan bisa dipakai berulang

2. Jelaskan jenis-jenis parameter di Functions beserta contoh sintaksnya!
- positional parameter, harus diisi sesuai urutan 
    void sayHelo(String name, int age) {print(halo $name, umur $age tahun);}
    void main() { sayHello("esa", 20)};
- optional parameter, ditaruh didalam [] boleh kosong
- name parameter, menggunakan {} 
    void main() { sayHello("esa", 20)};
- default parameter
void sayHello({String name = "Anonim"}) {
  print("Halo $name");
}

void main() {
  sayHello();          
  sayHello(name: "Esa"); 
}

3. Jelaskan maksud Functions sebagai first-class objects beserta contoh sintaknya!
- function yang ada pada dart bersifat data/objek bisa disimpan dalam variabel, menggunakan parameter untuk mengirim, mengembalikan dari fucntion
    void salam(String name) {
  print("Halo $name");
}

void main() {
  var f = salam;   
  f("Esa");        
}

4. Apa itu Anonymous Functions? Jelaskan dan berikan contohnya!
- function tanpa nama
void main() {
  var list = ['Esa', 'Reika', 'Nova'];
  
  list.forEach((nama) {
    print("Halo $nama");
  });
}

5. Jelaskan perbedaan Lexical scope dan Lexical closures! Berikan contohnya!
- lexical scope jika variabel didefisinikan dalam function maka hanya bisa dipakai didalam function tersebut
void main() {
  var nama = "Esa";
  void halo() {
    print("Halo $nama"); // bisa akses 'nama' karena masih dalam scope
  }
  halo();
}

- closure, menggunakan function yang variabel nya bisa mrmanggil diluar scopenya
Function buatPengali(int faktor) {
  return (int angka) => angka * faktor; // ingat faktor walau keluar function
}

void main() {
  var kali2 = buatPengali(2);
  var kali3 = buatPengali(3);

  print(kali2(5)); 
  print(kali3(5)); 
}

6. Jelaskan dengan contoh cara membuat return multiple value di Functions!
- list

List<int> hitung(int a, int b) {
  return [a + b, a * b];
}

void main() {
  var hasil = hitung(3, 4);
  print("Jumlah: ${hasil[0]}, Kali: ${hasil[1]}");
}
