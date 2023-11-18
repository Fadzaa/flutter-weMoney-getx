import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:we_money_getx/app/features/saving_page/saving_page_view.dart';
import 'package:we_money_getx/app/index.dart';
import 'package:we_money_getx/app/features/profile_screen/profile_screen_view.dart';
import 'package:we_money_getx/common/routes/app_pages.dart';

import 'app/features/profile_screen/profile_screen_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'WeMoney',
        theme: ThemeData(
          // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          // useMaterial3: true,
        ),
        initialRoute: AppPages.INITIAL,
        getPages: AppPages.routes
    );
  }
























}
