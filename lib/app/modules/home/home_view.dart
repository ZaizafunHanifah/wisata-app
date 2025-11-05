import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wisata_app/app/routes/app_pages.dart';
import 'package:wisata_app/app/widgets/place_card.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  final List<Map<String, String>> places = [
    {
      'title': 'Pantai Indah',
      'subtitle': 'Pantai berpasir putih dengan pemandangan indah',
      'image': 'gambar1.jpg'
    },
    {
      'title': 'Bukit Panorama',
      'subtitle': 'Puncak untuk melihat matahari terbenam',
      'image': 'gambar2.jpg'
    },
    {
      'title': 'Air Terjun Alam',
      'subtitle': 'Air terjun jernih dan sejuk',
      'image': 'gambar3.jpg'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(12),
      itemCount: places.length,
      itemBuilder: (context, index) {
        final p = places[index];
        return PlaceCard(
          title: p['title']!,
          subtitle: p['subtitle']!,
          icon: Icons.place,
          imagePath: p['image'],
          onTap: () {
            Get.toNamed(Routes.DETAIL, arguments: p);
          },
        );
      },
    );
  }
}
