import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

@freezed
sealed class Result<L, R> with _$Result<L, R> {
  const factory Result.success(R value) = Success<L, R>;
  const factory Result.failure(L error) = Failure<L, R>;
}
