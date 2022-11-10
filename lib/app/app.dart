import 'package:ezjob/app/routers/pages.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'core/utils/localization_service.dart';
import 'core/values/app_colors.dart';
import 'features/my_bottom_bar.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // initialRoute: conversationScreenRoute,
      getPages: AppPages.pages,
      debugShowCheckedModeBanner: false,
      locale: LocalizationService.locale,
      fallbackLocale: LocalizationService.fallbackLocale,
      translations: LocalizationService(),
      theme: AppColors().lightTheme,
      home: SafeArea(
        child: UserController.instance.isFirstTime
            ? const OnBoarding()
            : UserController.instance.userToken.isEmpty
                ? const MyBottomBar() // ? const LoginScreen()
                : const MyBottomBar(),
      ),
      builder: EasyLoading.init(),
      darkTheme: AppColors().darkTheme,
    );
  }
}
