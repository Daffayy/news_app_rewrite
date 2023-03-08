import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/detail_article_screen_controller.dart';

class DetailArticleScreenView extends GetView<DetailArticleScreenController> {
  const DetailArticleScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffededed),
      appBar: AppBar(
        leading: IconButton(
          color: Colors.black,
          icon: Icon(Icons.arrow_back_ios_new_outlined),
          onPressed: (){
            Get.back();
          },
        ),
        backgroundColor: Color(0xffededed),
        elevation: 0,
        title: Text('DetailNews',
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Color(0xff000000)
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Container(
        margin: EdgeInsets.only(right: 25,left: 30),
        height: 138,
        width: 342,
        decoration: BoxDecoration(
          color: Color(0xffd9d9d9),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ListTile(
              title: Text('Qui est esse',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle:
              Text(
                'est rerum tempore vitae\nsequi sint nihil reprehenderit '
                    'dolor beatae ea dolores neque\nfugiat blanditiissasj'
                    'sasasasasasajkjshdjkshjkdHKJSHDKSAHKHDKASDKASJKDHS'
                    'ASJKSJAKDJSAKDASK',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            )
          ],
        ),
      ),
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
