import 'package:get/get.dart';
import 'package:mini_projcet/module/picture/binding/picture_binding.dart';
import 'package:mini_projcet/module/picture/view/detail_picture_view.dart';
import 'package:mini_projcet/module/picture/view/list_picture_view.dart';

class AppPages {
  static const String listPictures = '/list';
  static const String detailPicture = '/detail';

  static final routes = [
    GetPage(
      name: listPictures, 
      page: () => ListPictureView(),
      binding: PictureBinding()
    ),
    GetPage(
      name: detailPicture, 
      page: () => DetailPictureView(),
      binding: PictureBinding()
    ),
  ];
}
