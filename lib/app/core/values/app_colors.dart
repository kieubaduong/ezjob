import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppColors extends GetxController {
  static const primaryColor = Color.fromRGBO(27, 186, 133, 1.0);
  static const secondaryColor = Color.fromRGBO(179, 178, 178, 1.0);
  static const backgroundColor = Color(0xffF3F5F6);
  static const lightGreyColor = Color.fromRGBO(145, 143, 183, 1);
  static const lightGreenColor = Color.fromRGBO(27, 186, 133, 0.1);
  static const blackColor = Color.fromRGBO(23, 43, 77, 1);
  static const selectedNavBarColor = Color.fromRGBO(28, 185, 134, 1);
  static const unselectedNavBarColor = Color.fromRGBO(179, 178, 178, 1.0);
  static const itemChildColor = Colors.white;
  //==========================================================================//
  //LIGHT THEME
  ThemeData lightTheme = ThemeData.light().copyWith(
    textTheme: ThemeData.light().textTheme.apply(
          fontFamily: "SFProRounded",
        ),
    bottomAppBarColor: backgroundColor,
    scaffoldBackgroundColor: backgroundColor,
    colorScheme: const ColorScheme.light(primary: AppColors.primaryColor),
    hintColor: secondaryColor,
    appBarTheme: const AppBarTheme(
      elevation: 0,
      foregroundColor: Colors.black,
      backgroundColor: backgroundColor,
    ),
    inputDecorationTheme:
        const InputDecorationTheme(fillColor: Colors.white, filled: true),
    tabBarTheme: TabBarTheme(
      labelColor: Colors.black,
      unselectedLabelColor: Colors.black.withOpacity(0.5),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
    listTileTheme: const ListTileThemeData(
      iconColor: Color(0xff818383),
    ),
  );

  //==========================================================================//
  //DARK THEME
  ThemeData darkTheme = ThemeData.dark().copyWith(
    textTheme: ThemeData.dark().textTheme.apply(
          fontFamily: "SFProRounded",
        ),
    bottomAppBarColor: Colors.black,
    scaffoldBackgroundColor: Colors.black,
    colorScheme: const ColorScheme.light(primary: AppColors.primaryColor),
    hintColor: secondaryColor,
    appBarTheme: const AppBarTheme(
      elevation: 0,
      foregroundColor: Colors.white,
      backgroundColor: Colors.black,
    ),
    inputDecorationTheme:
        const InputDecorationTheme(fillColor: Color(0xff292a2a), filled: true),
    tabBarTheme: const TabBarTheme(labelColor: Colors.white),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
    listTileTheme: const ListTileThemeData(
      iconColor: Color(0xff818383),
    ),
  );
}
