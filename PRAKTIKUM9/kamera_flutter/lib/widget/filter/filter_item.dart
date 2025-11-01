import 'package:flutter/material.dart';

@immutable
class FilterItem extends StatelessWidget {
  const FilterItem({super.key, required this.color, this.onFilterSelected});

  // Warna filter yang akan ditampilkan
  final Color color;

  // Callback ketika filter dipilih
  final VoidCallback? onFilterSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onFilterSelected, // Dipanggil saat user mengetuk filter
      child: AspectRatio(
        aspectRatio: 1.0, // Menjaga proporsi kotak tetap 1:1
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: ClipOval(
            // Membuat gambar berbentuk lingkaran
            child: Image.network(
              'https://docs.flutter.dev/cookbook/img-files'
              '/effects/instagram-buttons/millennial-texture.jpg',
              color: color.withOpacity(0.5), // Warna filter
              colorBlendMode: BlendMode.hardLight, // Mode campuran warna
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
