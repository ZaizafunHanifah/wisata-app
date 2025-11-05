import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wisata_app/app/modules/about/about_view.dart';
import 'package:wisata_app/app/modules/gallery/gallery_view.dart';
import 'package:wisata_app/app/modules/home/home_view.dart';
import 'package:wisata_app/app/modules/tickets/tickets_view.dart';
import 'package:wisata_app/app/modules/root/root_controller.dart';

class RootView extends StatelessWidget {
  RootView({Key? key}) : super(key: key);

  final RootController controller = Get.put(RootController());

  final List<Widget> pages = [
    HomeView(),
    TicketsView(),
    GalleryView(),
    AboutView(),
  ];

  final List<String> titles = [
    'Home',
    'Tiket & Harga',
    'Galeri Foto',
    'Tentang Aplikasi',
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final idx = controller.index.value;
      return Scaffold(
        appBar: AppBar(
          title: Text(titles[idx]),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(color: Colors.green),
                child: Text('Aplikasi Wisata Daerah', style: TextStyle(color: Colors.white, fontSize: 18)),
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text('Home'),
                onTap: () {
                  controller.changeIndex(0);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.confirmation_num),
                title: const Text('Tiket & Harga'),
                onTap: () {
                  controller.changeIndex(1);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.photo_library),
                title: const Text('Galeri Foto'),
                onTap: () {
                  controller.changeIndex(2);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.info),
                title: const Text('Tentang Aplikasi'),
                onTap: () {
                  controller.changeIndex(3);
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: IndexedStack(index: idx, children: pages),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          currentIndex: idx,
          onTap: controller.changeIndex,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.grey[700],
          unselectedIconTheme: IconThemeData(color: Colors.grey[700]),
          showUnselectedLabels: true,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.confirmation_num), label: 'Tiket'),
            BottomNavigationBarItem(icon: Icon(Icons.photo_library), label: 'Galeri'),
            BottomNavigationBarItem(icon: Icon(Icons.info), label: 'Tentang'),
          ],
        ),
      );
    });
  }
}
