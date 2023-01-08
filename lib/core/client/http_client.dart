import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_portfolio/core/models/error.dart';
import 'package:my_portfolio/core/models/result.dart';

class HttpClient {
  HttpClient({Dio? dio}) : _dio = dio ?? Dio();

  final Dio _dio;

  Future<Result<AppError, T>> get<T>(Uri uri) async {
    try {
      final response = await _dio.getUri<T>(uri);
      final data = response.data;

      if (data == null) {
        return const Result.failure(AppError(error: 'No data'));
      }

      return Result.success(data);
    } catch (e) {
      return Result.failure(AppError(error: e.toString()));
    }
  }
}

final httpClientProvider = Provider<HttpClient>(
  (ref) => HttpClient(),
);
