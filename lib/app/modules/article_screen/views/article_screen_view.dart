import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:news_app_revision_v2/app/routes/app_pages.dart';
import 'package:skeletons/skeletons.dart';

import '../controllers/article_screen_controller.dart';
import '../widget/news_card.dart';

class ArticleScreenView extends GetView<ArticleScreenController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffededed),
      appBar: AppBar(
        backgroundColor: Color(0xffededed),
        elevation: 0,
        title: Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text('StarNews',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Color(0xff000000)
            ),
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Obx(() => SingleChildScrollView(
        child: controller.isLoading.value
            ? SkeletonListTile(hasSubtitle: true, padding: EdgeInsets.all(30),)
            : Column(
          children: [
            ...controller.listNews.reversed.map(
                  (item) => NewsCard(
                title: item.title,
                description: item.body,
                id: item.id.toString(),
              ),
            )
          ],
        ),
      )),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            Get.toNamed(Routes.SPLASH_SCREEN);
          },
        backgroundColor: Color(0xffd9d9d9),
        foregroundColor: Color(0xff000000),
        child: Icon(Icons.add),
      ),
    );
  }
}
