void main() {
  // Spread operator (...) untuk menggabungkan isi list1 ke dalam list2
  var list1 = [1, 2, 3];
  var list2 = [0, ...list1];
  print(list1);
  print(list2);
  print(list2.length);

  // mengubah isi list
  list1 = [1, 2];
  print(list1);

  // Spread operator dengan tanda tanya (...?)
  // artinya kalau list1 null, tidak akan error
  var list3 = [0, ...?list1];
  print(list3.length);

  // var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  // print(nav);

  bool promoActive = true;
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav); // ketika true [Home, Furniture, Plants, Outlet]

  promoActive = false;
  var nav2 = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav2); // ketika false [Home, Furniture, Plants]

  // var nav2 = [
  //   'Home',
  //   'Furniture',
  //   'Plants',
  //   if (login == 'Manager') 'Inventory',
  // ];
  // print(nav2);

  // Collection if dengan kondisi login
  String login = 'Manager';
  var navForManager = [
    'Home',
    'Furniture',
    'Plants',
    if (login == 'Manager') 'Inventory',
  ];
  print(navForManager); // [Home, Furniture, Plants, Inventory]

  login = 'Staff';
  var navForStaff = [
    'Home',
    'Furniture',
    'Plants',
    if (login == 'Manager') 'Inventory',
  ];
  print(navForStaff); // [Home, Furniture, Plants]

  // Collection for, untuk bikin list dari list lain
  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');
  print(listOfStrings);
}
