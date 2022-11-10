import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'localization_service.dart';

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
