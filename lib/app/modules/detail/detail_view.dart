import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final args = Get.arguments as Map<String, dynamic>? ?? {};
    final title = args['title'] ?? 'Detail Wisata';
    final subtitle = args['subtitle'] ?? 'Deskripsi tempat wisata tidak tersedia.';

    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: args['image']?.isNotEmpty == true
                  ? Image.asset(
                      'assets/images/${args['image']}',
                      height: 200,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    )
                  : Container(
                      height: 200,
                      width: double.infinity,
                      color: Colors.grey[300],
                      child: const Center(child: Icon(Icons.photo, size: 64, color: Colors.white)),
                    ),
            ),
            const SizedBox(height: 12),
            Text(title, style: Theme.of(context).textTheme.headlineSmall),
            const SizedBox(height: 8),
            Text(subtitle, style: Theme.of(context).textTheme.bodyLarge),
            const SizedBox(height: 16),
            const Text('Contoh deskripsi lengkap:', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            const Text('Tempat wisata ini menawarkan pemandangan yang indah, fasilitas memadai, dan akses yang relatif mudah. Cocok untuk wisata keluarga dan fotografi.'),
          ],
        ),
      ),
    );
  }
}
