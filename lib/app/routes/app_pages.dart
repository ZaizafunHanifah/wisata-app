import 'package:get/get.dart';
import 'package:wisata_app/app/modules/about/about_view.dart';
import 'package:wisata_app/app/modules/detail/detail_view.dart';
import 'package:wisata_app/app/modules/gallery/gallery_view.dart';
import 'package:wisata_app/app/modules/root/root_view.dart';
import 'package:wisata_app/app/modules/tickets/tickets_view.dart';

part 'app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(name: Routes.ROOT, page: () => RootView()),
    GetPage(name: Routes.DETAIL, page: () => DetailView()),
    GetPage(name: Routes.TICKETS, page: () => TicketsView()),
    GetPage(name: Routes.GALLERY, page: () => GalleryView()),
    GetPage(name: Routes.ABOUT, page: () => AboutView()),
  ];
}
