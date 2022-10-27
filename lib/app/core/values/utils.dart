import 'package:cliver_mobile/app/core/utils/localization_service.dart';
import 'package:cliver_mobile/app/core/values/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

void showSnackBar(BuildContext context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(text),
    ),
  );
}

showLanguageDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (builder) {
      return AlertDialog(
        title: Text("Change language".tr),
        content: SizedBox(
          width: double.maxFinite,
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    child: Text(
                        LocalizationService.displayLangList[index]['name']),
                    onTap: () {
                      //Dùng hàm này tiện hơn
                      LocalizationService.changeLocale(LocalizationService
                          .displayLangList[index]['languageCode']);
                      Navigator.pop(context);
                    },
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return const Divider(
                  color: Colors.grey,
                );
              },
              itemCount: LocalizationService.displayLangList.length),
        ),
      );
    },
  );
}

void configLoadingBar() {
  EasyLoading.instance
    ..indicatorType = EasyLoadingIndicatorType.ring
    ..loadingStyle = EasyLoadingStyle.custom
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..backgroundColor = Colors.black.withOpacity(0.1)
    ..indicatorColor = AppColors.primaryColor
    ..userInteractions = false
    ..dismissOnTap = false
    ..textColor = Colors.black;
}

extension GetSize on BuildContext {
  Size get screenSize => MediaQuery.of(this).size;
}
