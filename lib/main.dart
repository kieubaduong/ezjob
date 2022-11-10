import 'dart:convert';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'app/app.dart';
import 'app/core/values/app_colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initData();
  configLoadingBar();
  // runApp(const MyApp());

  runApp(
    DevicePreview(
      builder: (context) => const MyApp(),
    ),
  );
}

initData() async {
  var pref = await SharedPreferences.getInstance();
  UserController.instance.isFirstTime = pref.getBool("isFirstTime") ?? true;
  UserController.instance.userToken = pref.getString("user_token") ?? "";
  DarkModeController.ins.isDarkMode.value = pref.getBool("isDark") ?? false;

  if (DarkModeController.ins.isDarkMode.value) {
    Get.changeTheme(AppColors().darkTheme);
  } else {
    Get.changeTheme(AppColors().lightTheme);
  }

  if (UserController.instance.userToken != "") {
    var res = await AuthService.instance
        .getUserData(token: UserController.instance.userToken);
    if (res.statusCode == 200) {
      UserController.instance.currentUser =
          User.fromJson(jsonDecode(res.body)["data"][0]);
    }
  }
}
