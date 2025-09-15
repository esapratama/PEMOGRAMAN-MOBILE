// void main() {
// langkah 1

//   var gifts = {
//     // Key:    Value
//     'first': 'partridge',
//     'second': 'turtledoves',
//     'fifth': 1,
//   };

//   var nobleGases = {2: 'helium', 10: 'neon', 18: 2};

//   print(gifts);
//   print(nobleGases);

// penjelasan :

// langkah 3
//   var mhs1 = Map<String, String>();
//   gifts['first'] = 'partridge';
//   gifts['second'] = 'turtledoves';
//   gifts['fifth'] = 'golden rings';

//   var mhs2 = Map<int, String>();
//   nobleGases[2] = 'helium';
//   nobleGases[10] = 'neon';
//   nobleGases[18] = 'argon';

// penjelasan :
// }

// Tambahkan elemen nama dan NIM Anda
// pada tiap variabel di atas (gifts, nobleGases, mhs1, dan mhs2).
// Dokumentasikan hasilnya dan buat laporannya!
void main() {
  var gifts = {
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings',
    'nama': 'Esa Pratama',
    'nim': '2241760123',
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 'argon',
    20: 'Esa Pratama',
    21: '2241760123',
  };

  print(gifts);
  print(nobleGases);

  var mhs1 = Map<String, String>();
  mhs1['nama'] = 'Esa Pratama';
  mhs1['nim'] = '2241760123';
  print(mhs1);

  var mhs2 = Map<int, String>();
  mhs2[1] = 'Esa Pratama';
  mhs2[2] = '2241760123';
  print(mhs2);
}
