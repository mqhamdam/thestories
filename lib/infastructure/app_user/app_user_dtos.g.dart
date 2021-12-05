// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_user_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppUserDto _$$_AppUserDtoFromJson(Map<String, dynamic> json) =>
    _$_AppUserDto(
      userAuthID: json['userAuthID'] as String,
      username: json['username'] as String,
      name: json['name'] as String,
      avatarImageURL: json['avatarImageURL'] as String,
      backgroundImageUrl: json['backgroundImageUrl'] as String,
      bio: json['bio'] as String,
      isPremium: json['isPremium'] as bool,
      isPrivate: json['isPrivate'] as bool,
      subscriptionStatus:
          $enumDecode(_$SubscriptionStatusEnumMap, json['subscriptionStatus']),
      storiesCount: json['storiesCount'] as int,
      subscribersCount: json['subscribersCount'] as int,
      subscribedCount: json['subscribedCount'] as int,
    );

Map<String, dynamic> _$$_AppUserDtoToJson(_$_AppUserDto instance) =>
    <String, dynamic>{
      'userAuthID': instance.userAuthID,
      'username': instance.username,
      'name': instance.name,
      'avatarImageURL': instance.avatarImageURL,
      'backgroundImageUrl': instance.backgroundImageUrl,
      'bio': instance.bio,
      'isPremium': instance.isPremium,
      'isPrivate': instance.isPrivate,
      'subscriptionStatus':
          _$SubscriptionStatusEnumMap[instance.subscriptionStatus],
      'storiesCount': instance.storiesCount,
      'subscribersCount': instance.subscribersCount,
      'subscribedCount': instance.subscribedCount,
    };

const _$SubscriptionStatusEnumMap = {
  SubscriptionStatus.subscribed: 'subscribed',
  SubscriptionStatus.requested: 'requested',
  SubscriptionStatus.loading: 'loading',
  SubscriptionStatus.none: 'none',
  SubscriptionStatus.me: 'me',
};
