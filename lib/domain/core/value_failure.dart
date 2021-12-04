import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'value_failure.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.exceedingLimit({
    required T failedvalue,
    required int limit,
  }) = ExceedingLimit<T>;

  const factory ValueFailure.empty({
    required T failedValue,
  }) = Emty<T>;

  const factory ValueFailure.invalidEmail({
    required T failedValue,
  }) = InvalidEmail<T>;

  const factory ValueFailure.weakPassword({
    required T failedValue,
  }) = WeakPassword<T>;
  const factory ValueFailure.invalidUrl({
    required T failedValue,
  }) = InvalidUrl;
}
