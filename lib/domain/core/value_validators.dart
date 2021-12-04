import 'package:dartz/dartz.dart';
import 'package:thestories/domain/core/value_failure.dart';

Either<ValueFailure<String>, String> validateStringNotEmpty(String value) {
  if (value.isEmpty) {
    return left(ValueFailure.empty(failedValue: value));
  } else {
    return right(value);
  }
}

Either<ValueFailure<String>, String> validateStringLength(
    String value, int max) {
  if (value.length > max) {
    return left(ValueFailure.exceedingLimit(failedvalue: value, limit: max));
  } else {
    return right(value);
  }
}

Either<ValueFailure<String>, String> validateLine(String value, int max) {
  int countLine = '\n'.allMatches(value).length;
  if (countLine > max) {
    return left(ValueFailure.exceedingLimit(failedvalue: value, limit: max));
  } else {
    return right(value);
  }
}

Either<ValueFailure<String>, String> validateUrl(String value) {
  const String regex = r""" """;
  if (RegExp(regex).hasMatch(value)) {
    return left(ValueFailure.invalidUrl(failedValue: value));
  } else {
    return right(value);
  }
}
