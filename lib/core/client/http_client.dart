import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HttpClient {
  HttpClient({Dio? dio}) : _dio = dio ?? Dio();

  final Dio _dio;

  Future<T?> get<T>(Uri uri) async {
    final response = await _dio.getUri<T>(uri);
    return response.data;
  }
}

final httpClientProvider = Provider<HttpClient>(
  (ref) => HttpClient(),
);
