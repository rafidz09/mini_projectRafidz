// file: lib/module/picture/controller/list_picture_controller.dart
import 'package:get/get.dart';
import '../../../service/picture/picture_service.dart';

class ListPictureController extends GetxController {
  final PictureService _pictureService = PictureService();

  var isLoading = false.obs;
  var pictureList = [].obs;

  @override
  void onInit() {
    super.onInit();
    getPictures();
  }

  // Fungsi untuk mengambil daftar gambar
  Future<void> getPictures() async {
    isLoading(true);
    try {
      final data = await _pictureService.getPicture();
      pictureList.value = data;
    } catch (e) {
      throw Exception(e);
    } finally {
      isLoading(false);
    }
  }
}
