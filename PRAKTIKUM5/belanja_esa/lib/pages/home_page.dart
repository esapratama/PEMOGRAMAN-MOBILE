import 'package:belanja_esa/models/item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Item> items = [
    Item(
      name: 'Coklat',
      price: 150000,
      image: 'images/coklat.jpeg',
      stock: 90,
      rating: 5.0,
    ),
    Item(
      name: 'Matcha',
      price: 190000,
      image: 'images/matcha.jpeg',
      stock: 67,
      rating: 4.9,
    ),
    Item(
      name: 'Almond',
      price: 200000,
      image: 'images/almond.jpeg',
      stock: 10,
      rating: 5.0,
    ),
    Item(
      name: 'Tepung',
      price: 80000,
      image: 'images/tepung.jpeg',
      stock: 15,
      rating: 4.8,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping List'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          // Bagian produk (GridView)
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(8),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // dua kolom
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                childAspectRatio: 0.75,
              ),
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/item', arguments: item);
                  },
                  child: Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Image.asset(item.image, fit: BoxFit.cover),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                item.name,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text('Rp ${item.price}'),
                              Text('Stok: ${item.stock}'),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 16,
                                  ),
                                  Text(item.rating.toString()),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),

          // Footer dengan Nama & NIM
          Container(
            color: Colors.blue.shade50,
            padding: const EdgeInsets.all(12),
            child: const Text(
              'By. Esa Pratama Putri - 2341720061',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
