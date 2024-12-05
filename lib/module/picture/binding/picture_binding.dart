// file: lib/module/picture/binding/picture_binding.dart
import 'package:get/get.dart';
import '../controller/list_picture_controller.dart';
import '../controller/detail_picture_controller.dart';

class PictureBinding extends Bindings {
  @override
  void dependencies() {
    // Menyuntikkan controller ke dalam halaman sesuai dengan kebutuhan
    Get.lazyPut<ListPictureController>(() => ListPictureController());
    Get.lazyPut<DetailPictureController>(() => DetailPictureController());
  }
}
