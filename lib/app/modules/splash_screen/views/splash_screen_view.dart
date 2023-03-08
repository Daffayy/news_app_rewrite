import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:news_app_revision_v2/app/routes/app_pages.dart';

import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  const SplashScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: (){
            Get.toNamed(Routes.ARTICLE_SCREEN);
          },
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(image: AssetImage('assets/images/star_1.png')),
                Text(
                    'StarNews',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
          ),
        ),
      ),
    );
  }
}
