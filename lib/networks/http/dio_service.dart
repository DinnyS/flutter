import 'package:dio/dio.dart';
import 'package:flutter_widget_compose/networks/http/http_service.dart';

class DioService extends HttpService {
  late Dio dio;
  String path = '';

  DioService(String url) : super(url) {
    dio = Dio();
  }

  @override
  Future delete(String path) async {
    try {
      final response = await dio.delete('$url$path');
      return response.data;
    } catch (e) {
      print('Error occurred while making DELETE request: $e');
      return null;
    }
  }

  @override
  Future get(String path) async {
    try {
      final response = await dio.get('$url$path');
      if (response.statusCode == 200) {
        return response.data;
      } else {
        print('GET request failed with status code: ${response.statusCode}');
        return null;
      }
    } catch (e) {
      print('Error occurred while making GET request: $e');
      return null;
    }
  }

  @override
  Future patch(String path, data) async {
    try {
      final response = await dio.patch('$url$path', data: data);
      return response.data;
    } catch (e) {
      print('Error occurred while making PATCH request: $e');
      return null;
    }
  }

  @override
  Future post(String path, data) async {
    try {
      final response = await dio.post('$url$path', data: data);
      return response.data;
    } catch (e) {
      print('Error occurred while making POST request: $e');
      return null;
    }
  }

  @override
  Future put(String path, data) async {
    try {
      final response = await dio.put('$url$path', data: data);
      return response.data;
    } catch (e) {
      print('Error occurred while making PUT request: $e');
      return null;
    }
  }
}
