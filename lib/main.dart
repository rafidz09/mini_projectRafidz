import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mini_projcet/route/app_pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.listPictures,
      getPages: AppPages.routes,
    );
  }
}
