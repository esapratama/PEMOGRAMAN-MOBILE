void main() {
  // langkah 1
  var list1 = [1, 2, 3];
  var list2 = [0, ...list1];
  print(list1);
  print(list2);
  print(list2.length);
  // penjelasan :

  // langkah 3
  list1 = [1, 2];
  print(list1);
  var list3 = [0, ...?list1];
  print(list3.length);

  // penjelasan :

  // Tambahkan variabel list berisi NIM Anda menggunakan Spread Operators.
  // Dokumentasikan hasilnya dan buat laporannya

  // langkah 4
  // var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  // print(nav);

  bool promoActive = true;
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav);

  // penjelasan :

  promoActive = false;
  var nav2 = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav2);

  // langkah 5
  // var nav2 = [
  //   'Home',
  //   'Furniture',
  //   'Plants',
  //   if (login == 'Manager') 'Inventory',
  // ];
  // print(nav2);

  // penjelasan :

  String login = 'Manager';
  var navForManager = [
    'Home',
    'Furniture',
    'Plants',
    if (login == 'Manager') 'Inventory',
  ];
  print(navForManager);

  login = 'Staff';
  var navForStaff = [
    'Home',
    'Furniture',
    'Plants',
    if (login == 'Manager') 'Inventory',
  ];
  print(navForStaff);

  // langkah 6
  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');
  print(listOfStrings);
  // penjelasan :
}
