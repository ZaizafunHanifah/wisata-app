import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wisata_app/app/routes/app_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Aplikasi Wisata Daerah',
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.ROOT,
      getPages: AppPages.pages,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
    );
  }
}
