import 'package:dio/dio.dart';

class APIService {
  static String baseUrl = 'https://www.googleapis.com/books/v1/';
  final Dio dio;

  APIService({required this.dio});

  Future<Map<String, dynamic>> get(String url) async{
    return await dio.get(baseUrl + url).then((value) => value.data); 
  }
}