import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

@freezed
class Result<L, R> with _$Result<L, R> {
  const factory Result.success(R value) = _Success<L, R>;
  const factory Result.failure(L error) = _Failure<L, R>;
}
