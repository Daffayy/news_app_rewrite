import 'package:get/get.dart';

class DetailArticleScreenController extends GetxController {
  RxBool isLoading = false.obs;
  RxList<DetailArticleScreenController> detailNews =
  <DetailArticleScreenController>[].obs;
  final detailArticleService = Dea

  @override
  void onInit() {
    super.onInit();
    final args = Get.arguments;
    id = args['id'];
    getDetailNews();
  }
  Future <void> getDetailNews () async {
    isLoading(true);
    try {
      final response = await newsService.getNews();
      response.map((v) {
        Logger().d(v);
        final news = ListNewsModel.fromJson(v);
        listNews.add(news);
      }).toList();
      isLoading(false);
    } catch (e) {
      isLoading(false);
      print(e.toString());
    }
  }

}
