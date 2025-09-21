void main() {
  // var list = [1, 2, 3];
  // assert(list.length == 3);
  // assert(list[1] == 2);
  // print(list.length);
  // print(list[1]);

  // list[1] = 1;
  // assert(list[1] == 1);
  // print(list[1]);

  // membuat list berisi 5 elemen dengan nilai awal null
  final List list = List.filled(5, null);

  list[1] = "Esa Pratama Putri"; // isi elemen dengan nama
  list[2] = "2341720061S"; // isi elemen dengan nim

  print(list); // menampilkan isi list
}
