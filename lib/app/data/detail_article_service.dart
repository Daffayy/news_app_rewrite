


import 'package:get/get.dart';
import 'package:logger/logger.dart';

class detailArticleService{
  final _connect = Get.find<GetConnect>();

  Future getDetailNews({required String id}) async{
    final response = await _connect.get('posts');
    Logger().d(response);
    if(!response.hasError){
      return response.body!;
    }else{
      throw Get.snackbar('Error', response.statusCode.toString());
    }

  }
}