import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/list_picture_controller.dart'; // Import the detail controller
import '../view/detail_picture_view.dart';  // Import the detail view

class ListPictureView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ListPictureController controller = Get.find();

    return Scaffold(
      appBar: AppBar(
        title: Text('List of Pictures'),
      ),
      body: Obx(() {
        if (controller.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        }

        if (controller.pictureList.isEmpty) {
          return Center(child: Text('No pictures available.'));
        }

        return ListView.builder(
          itemCount: controller.pictureList.length,
          itemBuilder: (context, index) {
            final photo = controller.pictureList[index];

            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Passing data to the detail page
                        Get.to(() => DetailPictureView(),
                            arguments: {
                              'imageUrl': photo['download_url'],
                              'photographerName': photo['author']
                            });
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12.0),
                        child: Image.network(
                          photo['download_url'],
                          width: double.infinity,
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        photo['author'] ?? 'Unknown Author',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                  ],
                ),
              ),
            );
          },
        );
      }),
    );
  }
}
