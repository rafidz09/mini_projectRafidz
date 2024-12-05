import 'package:dio/dio.dart';

class PictureService {
  final Dio _dio = Dio();

  Future<List<dynamic>> getPicture() async {
    try {
      final response = await _dio.get('https://picsum.photos/v2/list');
      return response.data;
    } catch (e) {
      throw Exception(e);
    }
  }


}
