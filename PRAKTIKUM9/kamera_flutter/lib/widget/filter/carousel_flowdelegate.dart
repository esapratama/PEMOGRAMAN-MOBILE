import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show ViewportOffset;

/// Delegate untuk mengatur posisi, skala, dan transparansi item
/// pada carousel filter warna.
class CarouselFlowDelegate extends FlowDelegate {
  CarouselFlowDelegate({
    required this.viewportOffset,
    required this.filtersPerScreen,
  }) : super(repaint: viewportOffset);

  /// Mengatur posisi viewport pada scroll
  final ViewportOffset viewportOffset;

  /// Jumlah filter yang ditampilkan di layar dalam satu waktu
  final int filtersPerScreen;

  @override
  void paintChildren(FlowPaintingContext context) {
    final count = context.childCount;

    // Lebar total area gambar (seluruh container)
    final size = context.size.width;

    // Lebar setiap item filter
    final itemExtent = size / filtersPerScreen;

    // Posisi scroll aktif dalam satuan item (misalnya: 1.3 artinya antara item 1 dan 2)
    final active = viewportOffset.pixels / itemExtent;

    // Index item pertama yang perlu digambar (maksimal 3 item di kiri)
    final min = math.max(0, active.floor() - 3).toInt();

    // Index item terakhir yang perlu digambar (maksimal 3 item di kanan)
    final max = math.min(count - 1, active.ceil() + 3).toInt();

    // Loop menggambar setiap item yang terlihat
    for (var index = min; index <= max; index++) {
      // Posisi item relatif terhadap tengah layar
      final itemXFromCenter = itemExtent * index - viewportOffset.pixels;

      // Hitung seberapa jauh item dari tengah (0.0–1.0)
      final percentFromCenter = 1.0 - (itemXFromCenter / (size / 2)).abs();

      // Skala item (item di tengah lebih besar)
      final itemScale = 0.5 + (percentFromCenter * 0.5);

      // Opacity item (item di tengah lebih terang)
      final opacity = 0.25 + (percentFromCenter * 0.75);

      // Matriks transformasi untuk menggeser dan memperbesar item
      final itemTransform = Matrix4.identity()
        ..translate((size - itemExtent) / 2)
        ..translate(itemXFromCenter)
        ..translate(itemExtent / 2, itemExtent / 2)
        ..multiply(Matrix4.diagonal3Values(itemScale, itemScale, 1.0))
        ..translate(-itemExtent / 2, -itemExtent / 2);

      // Gambar child dengan transformasi dan opacity
      context.paintChild(index, transform: itemTransform, opacity: opacity);
    }
  }

  @override
  bool shouldRepaint(covariant CarouselFlowDelegate oldDelegate) {
    // Repaint bila viewport berubah
    return oldDelegate.viewportOffset != viewportOffset;
  }
}
