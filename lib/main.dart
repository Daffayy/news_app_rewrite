import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:news_app_revision_v2/app/modules/article_screen/views/article_screen_view.dart';

import 'app/initializer.dart';
import 'app/routes/app_pages.dart';

Future <void> main() async {
  await Initializer.init();
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
