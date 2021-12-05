import 'package:dartz/dartz.dart';
import 'package:thestories/domain/core/value_failure.dart';
import 'package:thestories/domain/core/value_object.dart';
import 'package:thestories/domain/core/value_validators.dart';

enum SubscriptionStatus { subscribed, requested, none, me }

class UserAuthID extends ValueObject<String> {
  factory UserAuthID(String userAuthID) {
    return UserAuthID._(validateStringLength(userAuthID, maxLength));
  }

  const UserAuthID._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;
  static const int maxLength = 1;
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
  factory AvatarImageURL(String avatarUrl) {
    return AvatarImageURL._(validateUrl(avatarUrl));
  }
  const AvatarImageURL._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;
}

class BackgroundImageUrl extends ValueObject<String> {
  factory BackgroundImageUrl(String bgImageUrl) {
    return BackgroundImageUrl._(validateUrl(bgImageUrl));
  }
  const BackgroundImageUrl._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;
}

class Bio extends ValueObject<String> {
  factory Bio(String bio) {
    return Bio._(
      validateLine(bio, maxLines).flatMap(
        (a) => validateStringLength(a, maxLength),
      ),
    );
  }
  const Bio._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;

  static const int maxLength = 100;
  static const int maxLines = 5;
}

class IsPrivate extends ValueObject<bool> {
  factory IsPrivate({required bool isPrivate}) {
    return IsPrivate._(validateBoolean(isPrivate));
  }
  const IsPrivate._(this.value);
  @override
  final Either<ValueFailure<bool>, bool> value;
}

class IsPremium extends ValueObject<bool> {
  factory IsPremium({required bool isPremium}) {
    return IsPremium._(validateBoolean(isPremium));
  }
  const IsPremium._(this.value);
  @override
  final Either<ValueFailure<bool>, bool> value;
}
