import 'package:flutter/material.dart';

class GalleryView extends StatelessWidget {
  GalleryView({Key? key}) : super(key: key);

  final List<String> images = [
    'gambar1.jpg',
    'gambar2.jpg',
    'gambar3.jpg',
    'gambar4.jpg',
    'gambar5.jpg',
    'gambar6.jpg',
    'gambar7.jpg',
    'gambar8.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        children: images
            .map((image) => ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    'assets/images/$image',
                    fit: BoxFit.cover,
                  ),
                ))
            .toList(),
      ),
    );
  }
}
