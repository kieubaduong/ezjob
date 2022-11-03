import 'package:get/get.dart';

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
