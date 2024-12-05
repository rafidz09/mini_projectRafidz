// file: lib/module/picture/widget/list_content_widget.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/list_picture_controller.dart';

class ListContentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ListPictureController controller = Get.find();

    return Obx(() {
      return ListView.builder(
        itemCount: controller.pictureList.length,
        itemBuilder: (context, index) {
          final photo = controller.pictureList[index];
          return ListTile(
            title: Text(photo.photographer),
            leading: Image.network(photo.url),
            onTap: () {
              // Navigasi ke halaman detail
              Get.toNamed('/detail', arguments: photo);
            },
          );
        },
      );
    });
  }
}
