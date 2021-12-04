import 'package:dartz/dartz.dart';
import 'package:thestories/domain/auth/value_validators.dart';
import 'package:thestories/domain/core/value_failure.dart';
import 'package:thestories/domain/core/value_object.dart';

class EmailAddress extends ValueObject<String> {
  const EmailAddress._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String emailAddress) {
    return EmailAddress._(validateEmailAddress(emailAddress));
  }
}

class Password extends ValueObject<String> {
  const Password._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String password) {
    return Password._(validatePassword(password));
  }
}
