import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../common_widgets/custom_bottom_navigation_bar.dart';
import '../controller/bottom_bar_controller.dart';
import '../core/utils/size_config.dart';
import '../core/values/app_colors.dart';

class MyBottomBar extends StatefulWidget {
  const MyBottomBar({Key? key}) : super(key: key);

  @override
  State<MyBottomBar> createState() => _MyBottomBarState();
}

class _MyBottomBarState extends State<MyBottomBar> {
  @override
  Widget build(BuildContext context) {
    CustomSize().init(context);
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Obx(
        () => BottomBarController
            .ins.pages[BottomBarController.ins.currentIndex.value],
      ),
      bottomNavigationBar: buildBottomNavigation(),
    );
  }

  Widget buildBottomNavigation() {
    return Obx(
      () => BottomNavigationBarCustom(
        showElevation: false,
        itemCornerRadius: 15,
        items: <BottomNavigationBarCustomItem>[
          BottomNavigationBarCustomItem(
            title: 'Home'.tr,
            icon: const Icon(Icons.home_filled),
            inactiveColor: AppColors.secondaryColor,
            activeColor: AppColors.selectedNavBarColor,
            childColor: AppColors.itemChildColor,
          ),
        ],
        onItemSelected: (index) =>
            BottomBarController.ins.currentIndex.value = index,
        selectedIndex: BottomBarController.ins.currentIndex.value,
      ),
    );
  }
}
