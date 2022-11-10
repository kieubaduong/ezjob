import 'package:ezjob/app/routers/routes.dart';
import 'package:get/get.dart';
import '../features/my_bottom_bar.dart';

//routes navigation
class AppPages {
  static final pages = [
    //AUTHENTICATION ROUTES
    GetPage(
      name: myBottomBarRoute,
      page: () => const MyBottomBar(),
      transition: Transition.fadeIn,
    ),
  ];
}
