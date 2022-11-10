import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
