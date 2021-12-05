// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_user_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppUserDto _$AppUserDtoFromJson(Map<String, dynamic> json) {
  return _AppUserDto.fromJson(json);
}

/// @nodoc
class _$AppUserDtoTearOff {
  const _$AppUserDtoTearOff();

  _AppUserDto call(
      {required String userAuthID,
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
      required int subscribedCount}) {
    return _AppUserDto(
      userAuthID: userAuthID,
      username: username,
      name: name,
      avatarImageURL: avatarImageURL,
      backgroundImageUrl: backgroundImageUrl,
      bio: bio,
      isPremium: isPremium,
      isPrivate: isPrivate,
      subscriptionStatus: subscriptionStatus,
      storiesCount: storiesCount,
      subscribersCount: subscribersCount,
      subscribedCount: subscribedCount,
    );
  }

  AppUserDto fromJson(Map<String, Object?> json) {
    return AppUserDto.fromJson(json);
  }
}

/// @nodoc
const $AppUserDto = _$AppUserDtoTearOff();

/// @nodoc
mixin _$AppUserDto {
  String get userAuthID => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get avatarImageURL => throw _privateConstructorUsedError;
  String get backgroundImageUrl => throw _privateConstructorUsedError;
  String get bio => throw _privateConstructorUsedError;
  bool get isPremium => throw _privateConstructorUsedError;
  bool get isPrivate => throw _privateConstructorUsedError;
  SubscriptionStatus get subscriptionStatus =>
      throw _privateConstructorUsedError;
  int get storiesCount => throw _privateConstructorUsedError;
  int get subscribersCount => throw _privateConstructorUsedError;
  int get subscribedCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppUserDtoCopyWith<AppUserDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppUserDtoCopyWith<$Res> {
  factory $AppUserDtoCopyWith(
          AppUserDto value, $Res Function(AppUserDto) then) =
      _$AppUserDtoCopyWithImpl<$Res>;
  $Res call(
      {String userAuthID,
      String username,
      String name,
      String avatarImageURL,
      String backgroundImageUrl,
      String bio,
      bool isPremium,
      bool isPrivate,
      SubscriptionStatus subscriptionStatus,
      int storiesCount,
      int subscribersCount,
      int subscribedCount});
}

/// @nodoc
class _$AppUserDtoCopyWithImpl<$Res> implements $AppUserDtoCopyWith<$Res> {
  _$AppUserDtoCopyWithImpl(this._value, this._then);

  final AppUserDto _value;
  // ignore: unused_field
  final $Res Function(AppUserDto) _then;

  @override
  $Res call({
    Object? userAuthID = freezed,
    Object? username = freezed,
    Object? name = freezed,
    Object? avatarImageURL = freezed,
    Object? backgroundImageUrl = freezed,
    Object? bio = freezed,
    Object? isPremium = freezed,
    Object? isPrivate = freezed,
    Object? subscriptionStatus = freezed,
    Object? storiesCount = freezed,
    Object? subscribersCount = freezed,
    Object? subscribedCount = freezed,
  }) {
    return _then(_value.copyWith(
      userAuthID: userAuthID == freezed
          ? _value.userAuthID
          : userAuthID // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatarImageURL: avatarImageURL == freezed
          ? _value.avatarImageURL
          : avatarImageURL // ignore: cast_nullable_to_non_nullable
              as String,
      backgroundImageUrl: backgroundImageUrl == freezed
          ? _value.backgroundImageUrl
          : backgroundImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      bio: bio == freezed
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      isPremium: isPremium == freezed
          ? _value.isPremium
          : isPremium // ignore: cast_nullable_to_non_nullable
              as bool,
      isPrivate: isPrivate == freezed
          ? _value.isPrivate
          : isPrivate // ignore: cast_nullable_to_non_nullable
              as bool,
      subscriptionStatus: subscriptionStatus == freezed
          ? _value.subscriptionStatus
          : subscriptionStatus // ignore: cast_nullable_to_non_nullable
              as SubscriptionStatus,
      storiesCount: storiesCount == freezed
          ? _value.storiesCount
          : storiesCount // ignore: cast_nullable_to_non_nullable
              as int,
      subscribersCount: subscribersCount == freezed
          ? _value.subscribersCount
          : subscribersCount // ignore: cast_nullable_to_non_nullable
              as int,
      subscribedCount: subscribedCount == freezed
          ? _value.subscribedCount
          : subscribedCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$AppUserDtoCopyWith<$Res> implements $AppUserDtoCopyWith<$Res> {
  factory _$AppUserDtoCopyWith(
          _AppUserDto value, $Res Function(_AppUserDto) then) =
      __$AppUserDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String userAuthID,
      String username,
      String name,
      String avatarImageURL,
      String backgroundImageUrl,
      String bio,
      bool isPremium,
      bool isPrivate,
      SubscriptionStatus subscriptionStatus,
      int storiesCount,
      int subscribersCount,
      int subscribedCount});
}

/// @nodoc
class __$AppUserDtoCopyWithImpl<$Res> extends _$AppUserDtoCopyWithImpl<$Res>
    implements _$AppUserDtoCopyWith<$Res> {
  __$AppUserDtoCopyWithImpl(
      _AppUserDto _value, $Res Function(_AppUserDto) _then)
      : super(_value, (v) => _then(v as _AppUserDto));

  @override
  _AppUserDto get _value => super._value as _AppUserDto;

  @override
  $Res call({
    Object? userAuthID = freezed,
    Object? username = freezed,
    Object? name = freezed,
    Object? avatarImageURL = freezed,
    Object? backgroundImageUrl = freezed,
    Object? bio = freezed,
    Object? isPremium = freezed,
    Object? isPrivate = freezed,
    Object? subscriptionStatus = freezed,
    Object? storiesCount = freezed,
    Object? subscribersCount = freezed,
    Object? subscribedCount = freezed,
  }) {
    return _then(_AppUserDto(
      userAuthID: userAuthID == freezed
          ? _value.userAuthID
          : userAuthID // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatarImageURL: avatarImageURL == freezed
          ? _value.avatarImageURL
          : avatarImageURL // ignore: cast_nullable_to_non_nullable
              as String,
      backgroundImageUrl: backgroundImageUrl == freezed
          ? _value.backgroundImageUrl
          : backgroundImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      bio: bio == freezed
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      isPremium: isPremium == freezed
          ? _value.isPremium
          : isPremium // ignore: cast_nullable_to_non_nullable
              as bool,
      isPrivate: isPrivate == freezed
          ? _value.isPrivate
          : isPrivate // ignore: cast_nullable_to_non_nullable
              as bool,
      subscriptionStatus: subscriptionStatus == freezed
          ? _value.subscriptionStatus
          : subscriptionStatus // ignore: cast_nullable_to_non_nullable
              as SubscriptionStatus,
      storiesCount: storiesCount == freezed
          ? _value.storiesCount
          : storiesCount // ignore: cast_nullable_to_non_nullable
              as int,
      subscribersCount: subscribersCount == freezed
          ? _value.subscribersCount
          : subscribersCount // ignore: cast_nullable_to_non_nullable
              as int,
      subscribedCount: subscribedCount == freezed
          ? _value.subscribedCount
          : subscribedCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppUserDto implements _AppUserDto {
  _$_AppUserDto(
      {required this.userAuthID,
      required this.username,
      required this.name,
      required this.avatarImageURL,
      required this.backgroundImageUrl,
      required this.bio,
      required this.isPremium,
      required this.isPrivate,
      required this.subscriptionStatus,
      required this.storiesCount,
      required this.subscribersCount,
      required this.subscribedCount});

  factory _$_AppUserDto.fromJson(Map<String, dynamic> json) =>
      _$$_AppUserDtoFromJson(json);

  @override
  final String userAuthID;
  @override
  final String username;
  @override
  final String name;
  @override
  final String avatarImageURL;
  @override
  final String backgroundImageUrl;
  @override
  final String bio;
  @override
  final bool isPremium;
  @override
  final bool isPrivate;
  @override
  final SubscriptionStatus subscriptionStatus;
  @override
  final int storiesCount;
  @override
  final int subscribersCount;
  @override
  final int subscribedCount;

  @override
  String toString() {
    return 'AppUserDto(userAuthID: $userAuthID, username: $username, name: $name, avatarImageURL: $avatarImageURL, backgroundImageUrl: $backgroundImageUrl, bio: $bio, isPremium: $isPremium, isPrivate: $isPrivate, subscriptionStatus: $subscriptionStatus, storiesCount: $storiesCount, subscribersCount: $subscribersCount, subscribedCount: $subscribedCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppUserDto &&
            (identical(other.userAuthID, userAuthID) ||
                other.userAuthID == userAuthID) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.avatarImageURL, avatarImageURL) ||
                other.avatarImageURL == avatarImageURL) &&
            (identical(other.backgroundImageUrl, backgroundImageUrl) ||
                other.backgroundImageUrl == backgroundImageUrl) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.isPremium, isPremium) ||
                other.isPremium == isPremium) &&
            (identical(other.isPrivate, isPrivate) ||
                other.isPrivate == isPrivate) &&
            (identical(other.subscriptionStatus, subscriptionStatus) ||
                other.subscriptionStatus == subscriptionStatus) &&
            (identical(other.storiesCount, storiesCount) ||
                other.storiesCount == storiesCount) &&
            (identical(other.subscribersCount, subscribersCount) ||
                other.subscribersCount == subscribersCount) &&
            (identical(other.subscribedCount, subscribedCount) ||
                other.subscribedCount == subscribedCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      userAuthID,
      username,
      name,
      avatarImageURL,
      backgroundImageUrl,
      bio,
      isPremium,
      isPrivate,
      subscriptionStatus,
      storiesCount,
      subscribersCount,
      subscribedCount);

  @JsonKey(ignore: true)
  @override
  _$AppUserDtoCopyWith<_AppUserDto> get copyWith =>
      __$AppUserDtoCopyWithImpl<_AppUserDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppUserDtoToJson(this);
  }
}

abstract class _AppUserDto implements AppUserDto {
  factory _AppUserDto(
      {required String userAuthID,
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
      required int subscribedCount}) = _$_AppUserDto;

  factory _AppUserDto.fromJson(Map<String, dynamic> json) =
      _$_AppUserDto.fromJson;

  @override
  String get userAuthID;
  @override
  String get username;
  @override
  String get name;
  @override
  String get avatarImageURL;
  @override
  String get backgroundImageUrl;
  @override
  String get bio;
  @override
  bool get isPremium;
  @override
  bool get isPrivate;
  @override
  SubscriptionStatus get subscriptionStatus;
  @override
  int get storiesCount;
  @override
  int get subscribersCount;
  @override
  int get subscribedCount;
  @override
  @JsonKey(ignore: true)
  _$AppUserDtoCopyWith<_AppUserDto> get copyWith =>
      throw _privateConstructorUsedError;
}
