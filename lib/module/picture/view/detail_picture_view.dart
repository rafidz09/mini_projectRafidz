import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailPictureView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get the arguments passed from the ListPictureView
    final Map<String, dynamic> arguments = Get.arguments;
    final String imageUrl = arguments['imageUrl'];
    final String photographerName = arguments['photographerName'];

    return Scaffold(
      appBar: AppBar(
        title: Text('Detail of $photographerName'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(imageUrl),  // Display the image
            SizedBox(height: 16),
            Text(
              'Photographer: $photographerName',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
