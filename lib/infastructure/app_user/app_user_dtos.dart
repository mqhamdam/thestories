import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:thestories/data/dummy_data.dart';
import 'package:thestories/domain/app_user/app_user.dart';
import 'package:thestories/domain/app_user/value_objects.dart';

part 'app_user_dtos.freezed.dart';
part 'app_user_dtos.g.dart';

@freezed
abstract class AppUserDto with _$AppUserDto {
  factory AppUserDto({
    required String userAuthID,
    required String username,
    required String name,
    required String avatarImageURL,
    required String backgroundImageUrl,
    required String bio,
    required bool isPremium,
    required bool isPrivate,
    required SubscriptionStatus subscriptionStatus,
    required int storiesCount,
    required int subscribersCount,
    required int subscribedCount,
  }) = _AppUserDto;

  factory AppUserDto.fromDomain(AppUser appUser) {
    return AppUserDto(
      userAuthID: appUser.userAuthID.getOrCrash(),
      username: appUser.username.getOrCrash(),
      name: appUser.name.getOrCrash(),
      avatarImageURL: appUser.avatarImageURL.getOrCrash(),
      backgroundImageUrl: appUser.backgroundImageUrl.getOrCrash(),
      bio: appUser.bio.getOrCrash(),
      isPremium: appUser.isPremium.getOrCrash(),
      isPrivate: appUser.isPrivate.getOrCrash(),
      subscriptionStatus: appUser.subscriptionStatus,
      storiesCount: appUser.storiesCount,
      subscribersCount: appUser.subscribersCount,
      subscribedCount: appUser.subscribedCount,
    );
  }
  factory AppUserDto.fromJson(Map<String, dynamic> json) =>
      _$AppUserDtoFromJson(json);
  
}

extension AppUserDtoX on AppUserDto {
  AppUser toDomain() {
    return AppUser(
      userAuthID: UserAuthID(userAuthID),
      username: Username(username),
      name: Name(name),
      avatarImageURL: AvatarImageURL(avatarImageURL),
      backgroundImageUrl: BackgroundImageUrl(backgroundImageUrl),
      isPremium: IsPremium(isPremium: isPremium),
      isPrivate: IsPrivate(isPrivate: isPrivate),
      bio: Bio(bio),
      subscriptionStatus: subscriptionStatus,
      storiesCount: storiesCount,
      subscribedCount: subscribedCount,
      subscribersCount: subscribersCount,
    );
  }
}
