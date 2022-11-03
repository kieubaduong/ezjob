import 'package:cliver_mobile/app/features/buyer/home_screen/home_screen.dart';
import 'package:cliver_mobile/app/features/buyer/order/buyer_order.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../features/chat/screens/conversation_screen.dart';
import '../features/seller/home/seller_home.dart';
import '../features/seller/post/screens/main_page.dart';
import '../features/setting/screens/main_screen.dart';

class BottomBarController extends GetxController {
  static final BottomBarController ins = Get.put(BottomBarController());

  var currentIndex = 0.obs;
  var isSeller = false.obs;
  var pages = [
    BuyerHomeScreen(),
    ConversationScreen(),
    BuyerOrderScreen(),
    ProfileSettingScreen(),
  ].obs;

  changeToSeller() {
    if (isSeller.value) {
      pages.value = [
        Container(),
        ConversationScreen(),
        BuyerOrderScreen(),
        ProfileSettingScreen(),
      ];
    } else {
      pages.value = [
        SellerHome(),
        ConversationScreen(),
        SellerPostHomeScreen(),
        ProfileSettingScreen(),
      ];
    }
    BottomBarController.ins.isSeller.value =
        !BottomBarController.ins.isSeller.value;
  }
}
