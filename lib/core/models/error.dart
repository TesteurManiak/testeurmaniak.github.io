import 'package:freezed_annotation/freezed_annotation.dart';

part 'error.freezed.dart';

@freezed
abstract class AppError with _$AppError {
  const factory AppError({String? error}) = _AppError;
}
