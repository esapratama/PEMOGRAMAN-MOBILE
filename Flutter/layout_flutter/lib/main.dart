import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'WIsata Kota Edinburgh',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  'Edinburgh, Skotlandia',
                  style: TextStyle(color: Colors.grey[500]),
                ),
              ],
            ),
          ),
          Icon(Icons.star, color: Colors.red[500]),
          const Text('41'),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Edinburgh adalah salah satu tujuan wisata terpopuler di Eropa. '
        'Kastil Edinburgh, Istana Holyrood, '
        'dan jalan-jalan bersejarah seperti Royal Mile menjadi daya tarik utama bagi wisatawan. '
        'Selain itu, Edinburgh menawarkan pemandangan yang spektakuler dari bukit-bukit di sekitarnya, '
        'seperti Arthurs Seat dan Calton Hill. '
        'Ditulis oleh, Esa Pratama Putri - 2341720061. ',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(title: const Text('Flutter layout demo')),
        body: ListView(
          children: [
            Image.asset(
              ('images/Edinburgh.jpeg'),
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );

    // return MaterialApp(
    //   title: 'Flutter layout demo',
    //   home: Scaffold(
    //     appBar: AppBar(title: const Text('Flutter layout demo')),
    //     body: Column(children: [titleSection, buttonSection, textSection]),
    //   ),
    // );
  }
}

// import 'package:flutter/material.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter layout: Esa Pratama Putri - 2341720061',
//       home: Scaffold(
//         appBar: AppBar(title: const Text('Flutter layout demo')),
//         body: Column(children: [titleSection,]),
//       ),
//     );
//   }

// Widget titleSection = Container(
//   padding: const EdgeInsets.all(32), // padding 32 sesuai instruksi
//   child: Row(
//     children: [
//       Expanded(
//         /* soal 1 */
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start, // posisi awal kiri
//           children: [
//             /* soal 2 */
//             Container(
//               padding: const EdgeInsets.only(bottom: 8), // padding bawah 8
//               child: const Text(
//                 'Wisata Gunung di Batu',
//                 style: TextStyle(fontWeight: FontWeight.bold),
//               ),
//             ),
//             const Text(
//               'Batu, Malang, Indonesia',
//               style: TextStyle(
//                 color: Colors.grey, // warna abu-abu
//               ),
//             ),
//           ],
//         ),
//       ),
//       /* soal 3 */
//       const Icon(
//         Icons.star,
//         color: Colors.red, // warna merah
//       ),
//       const Text("41"), // teks angka
//     ],
//   ),
// );
