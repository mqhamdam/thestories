import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:thestories/domain/app_user/value_objects.dart';

part 'app_user.freezed.dart';

@freezed
abstract class AppUser with _$AppUser{
  const factory AppUser({
    required UserAuthID userAuthID,
    required Username username,
    required Name name,
    required AvatarImageURL avatarImageURL,
    required BackgroundImageUrl backgroundImageUrl,
    required IsPremium isPremium,
    required IsPrivate isPrivate,
    required Bio bio,
    required int storiesCount,
    required int subscribersCount,
    required int subscribedCount,
    required SubscriptionStatus subscriptionStatus,
  }) = _AppUser;
}

