import 'package:flutter/material.dart';

class AboutView extends StatelessWidget {
  const AboutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(Icons.map, size: 100, color: Colors.green),
          const SizedBox(height: 12),
          const Text(
            'Aplikasi Wisata Daerah',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 12),
          const Text(
            'Aplikasi Wisata Daerah merupakan aplikasi berbasis Flutter yang memberikan informasi tempat-tempat wisata populer di Indonesia. Pengguna dapat melihat daftar destinasi wisata, detail dan harga tiket, serta galeri foto menarik. Aplikasi ini dibuat dengan desain sederhana dan navigasi mudah menggunakan Bottom Navigation Bar, sehingga memudahkan pengguna menjelajahi setiap fitur dengan nyaman.',
            textAlign: TextAlign.justify,
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
