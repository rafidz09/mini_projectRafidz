// file: lib/module/picture/widget/detail_content_widget.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/detail_picture_controller.dart';

class DetailContentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<DetailPictureController>();

    return Column(
      children: [
        Image.network(controller.imageUrl.value),  // Menampilkan gambar
        SizedBox(height: 8),
        Text(
          'Photographer: ${controller.photographerName.value}',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
