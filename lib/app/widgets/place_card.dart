import 'package:flutter/material.dart';

class PlaceCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final VoidCallback? onTap;
  final String? imagePath;

  const PlaceCard({
    Key? key, 
    required this.title, 
    required this.subtitle, 
    this.icon = Icons.place, 
    this.onTap,
    this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (imagePath != null && imagePath!.isNotEmpty)
            Image.asset(
              'assets/images/$imagePath',
              height: 160,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ListTile(
            title: Text(title),
            subtitle: Text(subtitle),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: onTap,
          ),
        ],
      ),
    );
  }
}
