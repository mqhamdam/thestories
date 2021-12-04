import 'package:dartz/dartz.dart';
import 'package:thestories/domain/core/value_failure.dart';
import 'package:thestories/domain/core/value_object.dart';
import 'package:thestories/domain/core/value_validators.dart';

class UserAuthID extends ValueObject<String> {
  const UserAuthID._(this.value);
  @override
  final Either<ValueFailure<String>, String> value;
}

class Name extends ValueObject<String> {

  factory Name(String name) {
    return Name._(validateStringNotEmpty(name)
        .flatMap((e) => validateStringLength(e, maxLength))
        .flatMap((e) => validateLine(e, maxLines)));
  }

  const Name._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;

  static const int maxLength = 30;
  static const int maxLines = 1;
}

class Username extends ValueObject<String> {
  factory Username(String username) {
    return Username._(
      validateStringNotEmpty(username)
          .flatMap((e) => validateStringLength(e, maxLength))
          .flatMap((e) => validateLine(e, maxLines)),
    );
  }
  const Username._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;

  static const int maxLength = 20;
  static const int maxLines = 1;
}

class AvatarImageURL extends ValueObject<String> {
  const AvatarImageURL._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;

  factory AvatarImageURL(String avatarUrl) {
    return AvatarImageURL._(validateUrl(avatarUrl));
  }
}
