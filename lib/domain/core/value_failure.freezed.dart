// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'value_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

  ExceedingLimit<T> exceedingLimit<T>(
      {required T failedvalue, required int limit}) {
    return ExceedingLimit<T>(
      failedvalue: failedvalue,
      limit: limit,
    );
  }

  Emty<T> empty<T>({required T failedValue}) {
    return Emty<T>(
      failedValue: failedValue,
    );
  }

  InvalidEmail<T> invalidEmail<T>({required T failedValue}) {
    return InvalidEmail<T>(
      failedValue: failedValue,
    );
  }

  WeakPassword<T> weakPassword<T>({required T failedValue}) {
    return WeakPassword<T>(
      failedValue: failedValue,
    );
  }

  InvalidUrl<T> invalidUrl<T>({required T failedValue}) {
    return InvalidUrl<T>(
      failedValue: failedValue,
    );
  }
}

/// @nodoc
const $ValueFailure = _$ValueFailureTearOff();

/// @nodoc
mixin _$ValueFailure<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedvalue, int limit) exceedingLimit,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) weakPassword,
    required TResult Function(T failedValue) invalidUrl,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedvalue, int limit)? exceedingLimit,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? weakPassword,
    TResult Function(T failedValue)? invalidUrl,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedvalue, int limit)? exceedingLimit,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? weakPassword,
    TResult Function(T failedValue)? invalidUrl,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLimit<T> value) exceedingLimit,
    required TResult Function(Emty<T> value) empty,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(WeakPassword<T> value) weakPassword,
    required TResult Function(InvalidUrl<T> value) invalidUrl,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExceedingLimit<T> value)? exceedingLimit,
    TResult Function(Emty<T> value)? empty,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(WeakPassword<T> value)? weakPassword,
    TResult Function(InvalidUrl<T> value)? invalidUrl,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLimit<T> value)? exceedingLimit,
    TResult Function(Emty<T> value)? empty,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(WeakPassword<T> value)? weakPassword,
    TResult Function(InvalidUrl<T> value)? invalidUrl,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;
}

/// @nodoc
abstract class $ExceedingLimitCopyWith<T, $Res> {
  factory $ExceedingLimitCopyWith(
          ExceedingLimit<T> value, $Res Function(ExceedingLimit<T>) then) =
      _$ExceedingLimitCopyWithImpl<T, $Res>;
  $Res call({T failedvalue, int limit});
}

/// @nodoc
class _$ExceedingLimitCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ExceedingLimitCopyWith<T, $Res> {
  _$ExceedingLimitCopyWithImpl(
      ExceedingLimit<T> _value, $Res Function(ExceedingLimit<T>) _then)
      : super(_value, (v) => _then(v as ExceedingLimit<T>));

  @override
  ExceedingLimit<T> get _value => super._value as ExceedingLimit<T>;

  @override
  $Res call({
    Object? failedvalue = freezed,
    Object? limit = freezed,
  }) {
    return _then(ExceedingLimit<T>(
      failedvalue: failedvalue == freezed
          ? _value.failedvalue
          : failedvalue // ignore: cast_nullable_to_non_nullable
              as T,
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ExceedingLimit<T>
    with DiagnosticableTreeMixin
    implements ExceedingLimit<T> {
  const _$ExceedingLimit({required this.failedvalue, required this.limit});

  @override
  final T failedvalue;
  @override
  final int limit;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.exceedingLimit(failedvalue: $failedvalue, limit: $limit)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.exceedingLimit'))
      ..add(DiagnosticsProperty('failedvalue', failedvalue))
      ..add(DiagnosticsProperty('limit', limit));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ExceedingLimit<T> &&
            const DeepCollectionEquality()
                .equals(other.failedvalue, failedvalue) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedvalue), limit);

  @JsonKey(ignore: true)
  @override
  $ExceedingLimitCopyWith<T, ExceedingLimit<T>> get copyWith =>
      _$ExceedingLimitCopyWithImpl<T, ExceedingLimit<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedvalue, int limit) exceedingLimit,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) weakPassword,
    required TResult Function(T failedValue) invalidUrl,
  }) {
    return exceedingLimit(failedvalue, limit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedvalue, int limit)? exceedingLimit,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? weakPassword,
    TResult Function(T failedValue)? invalidUrl,
  }) {
    return exceedingLimit?.call(failedvalue, limit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedvalue, int limit)? exceedingLimit,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? weakPassword,
    TResult Function(T failedValue)? invalidUrl,
    required TResult orElse(),
  }) {
    if (exceedingLimit != null) {
      return exceedingLimit(failedvalue, limit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLimit<T> value) exceedingLimit,
    required TResult Function(Emty<T> value) empty,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(WeakPassword<T> value) weakPassword,
    required TResult Function(InvalidUrl<T> value) invalidUrl,
  }) {
    return exceedingLimit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExceedingLimit<T> value)? exceedingLimit,
    TResult Function(Emty<T> value)? empty,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(WeakPassword<T> value)? weakPassword,
    TResult Function(InvalidUrl<T> value)? invalidUrl,
  }) {
    return exceedingLimit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLimit<T> value)? exceedingLimit,
    TResult Function(Emty<T> value)? empty,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(WeakPassword<T> value)? weakPassword,
    TResult Function(InvalidUrl<T> value)? invalidUrl,
    required TResult orElse(),
  }) {
    if (exceedingLimit != null) {
      return exceedingLimit(this);
    }
    return orElse();
  }
}

abstract class ExceedingLimit<T> implements ValueFailure<T> {
  const factory ExceedingLimit({required T failedvalue, required int limit}) =
      _$ExceedingLimit<T>;

  T get failedvalue;
  int get limit;
  @JsonKey(ignore: true)
  $ExceedingLimitCopyWith<T, ExceedingLimit<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmtyCopyWith<T, $Res> {
  factory $EmtyCopyWith(Emty<T> value, $Res Function(Emty<T>) then) =
      _$EmtyCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$EmtyCopyWithImpl<T, $Res> extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $EmtyCopyWith<T, $Res> {
  _$EmtyCopyWithImpl(Emty<T> _value, $Res Function(Emty<T>) _then)
      : super(_value, (v) => _then(v as Emty<T>));

  @override
  Emty<T> get _value => super._value as Emty<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(Emty<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$Emty<T> with DiagnosticableTreeMixin implements Emty<T> {
  const _$Emty({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.empty(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.empty'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Emty<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  $EmtyCopyWith<T, Emty<T>> get copyWith =>
      _$EmtyCopyWithImpl<T, Emty<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedvalue, int limit) exceedingLimit,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) weakPassword,
    required TResult Function(T failedValue) invalidUrl,
  }) {
    return empty(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedvalue, int limit)? exceedingLimit,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? weakPassword,
    TResult Function(T failedValue)? invalidUrl,
  }) {
    return empty?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedvalue, int limit)? exceedingLimit,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? weakPassword,
    TResult Function(T failedValue)? invalidUrl,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLimit<T> value) exceedingLimit,
    required TResult Function(Emty<T> value) empty,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(WeakPassword<T> value) weakPassword,
    required TResult Function(InvalidUrl<T> value) invalidUrl,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExceedingLimit<T> value)? exceedingLimit,
    TResult Function(Emty<T> value)? empty,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(WeakPassword<T> value)? weakPassword,
    TResult Function(InvalidUrl<T> value)? invalidUrl,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLimit<T> value)? exceedingLimit,
    TResult Function(Emty<T> value)? empty,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(WeakPassword<T> value)? weakPassword,
    TResult Function(InvalidUrl<T> value)? invalidUrl,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Emty<T> implements ValueFailure<T> {
  const factory Emty({required T failedValue}) = _$Emty<T>;

  T get failedValue;
  @JsonKey(ignore: true)
  $EmtyCopyWith<T, Emty<T>> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvalidEmailCopyWith<T, $Res> {
  factory $InvalidEmailCopyWith(
          InvalidEmail<T> value, $Res Function(InvalidEmail<T>) then) =
      _$InvalidEmailCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$InvalidEmailCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidEmailCopyWith<T, $Res> {
  _$InvalidEmailCopyWithImpl(
      InvalidEmail<T> _value, $Res Function(InvalidEmail<T>) _then)
      : super(_value, (v) => _then(v as InvalidEmail<T>));

  @override
  InvalidEmail<T> get _value => super._value as InvalidEmail<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(InvalidEmail<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidEmail<T>
    with DiagnosticableTreeMixin
    implements InvalidEmail<T> {
  const _$InvalidEmail({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.invalidEmail(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.invalidEmail'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InvalidEmail<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith =>
      _$InvalidEmailCopyWithImpl<T, InvalidEmail<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedvalue, int limit) exceedingLimit,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) weakPassword,
    required TResult Function(T failedValue) invalidUrl,
  }) {
    return invalidEmail(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedvalue, int limit)? exceedingLimit,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? weakPassword,
    TResult Function(T failedValue)? invalidUrl,
  }) {
    return invalidEmail?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedvalue, int limit)? exceedingLimit,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? weakPassword,
    TResult Function(T failedValue)? invalidUrl,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLimit<T> value) exceedingLimit,
    required TResult Function(Emty<T> value) empty,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(WeakPassword<T> value) weakPassword,
    required TResult Function(InvalidUrl<T> value) invalidUrl,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExceedingLimit<T> value)? exceedingLimit,
    TResult Function(Emty<T> value)? empty,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(WeakPassword<T> value)? weakPassword,
    TResult Function(InvalidUrl<T> value)? invalidUrl,
  }) {
    return invalidEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLimit<T> value)? exceedingLimit,
    TResult Function(Emty<T> value)? empty,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(WeakPassword<T> value)? weakPassword,
    TResult Function(InvalidUrl<T> value)? invalidUrl,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail<T> implements ValueFailure<T> {
  const factory InvalidEmail({required T failedValue}) = _$InvalidEmail<T>;

  T get failedValue;
  @JsonKey(ignore: true)
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeakPasswordCopyWith<T, $Res> {
  factory $WeakPasswordCopyWith(
          WeakPassword<T> value, $Res Function(WeakPassword<T>) then) =
      _$WeakPasswordCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$WeakPasswordCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $WeakPasswordCopyWith<T, $Res> {
  _$WeakPasswordCopyWithImpl(
      WeakPassword<T> _value, $Res Function(WeakPassword<T>) _then)
      : super(_value, (v) => _then(v as WeakPassword<T>));

  @override
  WeakPassword<T> get _value => super._value as WeakPassword<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(WeakPassword<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$WeakPassword<T>
    with DiagnosticableTreeMixin
    implements WeakPassword<T> {
  const _$WeakPassword({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.weakPassword(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.weakPassword'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WeakPassword<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  $WeakPasswordCopyWith<T, WeakPassword<T>> get copyWith =>
      _$WeakPasswordCopyWithImpl<T, WeakPassword<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedvalue, int limit) exceedingLimit,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) weakPassword,
    required TResult Function(T failedValue) invalidUrl,
  }) {
    return weakPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedvalue, int limit)? exceedingLimit,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? weakPassword,
    TResult Function(T failedValue)? invalidUrl,
  }) {
    return weakPassword?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedvalue, int limit)? exceedingLimit,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? weakPassword,
    TResult Function(T failedValue)? invalidUrl,
    required TResult orElse(),
  }) {
    if (weakPassword != null) {
      return weakPassword(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLimit<T> value) exceedingLimit,
    required TResult Function(Emty<T> value) empty,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(WeakPassword<T> value) weakPassword,
    required TResult Function(InvalidUrl<T> value) invalidUrl,
  }) {
    return weakPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExceedingLimit<T> value)? exceedingLimit,
    TResult Function(Emty<T> value)? empty,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(WeakPassword<T> value)? weakPassword,
    TResult Function(InvalidUrl<T> value)? invalidUrl,
  }) {
    return weakPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLimit<T> value)? exceedingLimit,
    TResult Function(Emty<T> value)? empty,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(WeakPassword<T> value)? weakPassword,
    TResult Function(InvalidUrl<T> value)? invalidUrl,
    required TResult orElse(),
  }) {
    if (weakPassword != null) {
      return weakPassword(this);
    }
    return orElse();
  }
}

abstract class WeakPassword<T> implements ValueFailure<T> {
  const factory WeakPassword({required T failedValue}) = _$WeakPassword<T>;

  T get failedValue;
  @JsonKey(ignore: true)
  $WeakPasswordCopyWith<T, WeakPassword<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvalidUrlCopyWith<T, $Res> {
  factory $InvalidUrlCopyWith(
          InvalidUrl<T> value, $Res Function(InvalidUrl<T>) then) =
      _$InvalidUrlCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$InvalidUrlCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidUrlCopyWith<T, $Res> {
  _$InvalidUrlCopyWithImpl(
      InvalidUrl<T> _value, $Res Function(InvalidUrl<T>) _then)
      : super(_value, (v) => _then(v as InvalidUrl<T>));

  @override
  InvalidUrl<T> get _value => super._value as InvalidUrl<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(InvalidUrl<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidUrl<T> with DiagnosticableTreeMixin implements InvalidUrl<T> {
  const _$InvalidUrl({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.invalidUrl(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.invalidUrl'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InvalidUrl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  $InvalidUrlCopyWith<T, InvalidUrl<T>> get copyWith =>
      _$InvalidUrlCopyWithImpl<T, InvalidUrl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedvalue, int limit) exceedingLimit,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) weakPassword,
    required TResult Function(T failedValue) invalidUrl,
  }) {
    return invalidUrl(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedvalue, int limit)? exceedingLimit,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? weakPassword,
    TResult Function(T failedValue)? invalidUrl,
  }) {
    return invalidUrl?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedvalue, int limit)? exceedingLimit,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? weakPassword,
    TResult Function(T failedValue)? invalidUrl,
    required TResult orElse(),
  }) {
    if (invalidUrl != null) {
      return invalidUrl(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLimit<T> value) exceedingLimit,
    required TResult Function(Emty<T> value) empty,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(WeakPassword<T> value) weakPassword,
    required TResult Function(InvalidUrl<T> value) invalidUrl,
  }) {
    return invalidUrl(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExceedingLimit<T> value)? exceedingLimit,
    TResult Function(Emty<T> value)? empty,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(WeakPassword<T> value)? weakPassword,
    TResult Function(InvalidUrl<T> value)? invalidUrl,
  }) {
    return invalidUrl?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLimit<T> value)? exceedingLimit,
    TResult Function(Emty<T> value)? empty,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(WeakPassword<T> value)? weakPassword,
    TResult Function(InvalidUrl<T> value)? invalidUrl,
    required TResult orElse(),
  }) {
    if (invalidUrl != null) {
      return invalidUrl(this);
    }
    return orElse();
  }
}

abstract class InvalidUrl<T> implements ValueFailure<T> {
  const factory InvalidUrl({required T failedValue}) = _$InvalidUrl<T>;

  T get failedValue;
  @JsonKey(ignore: true)
  $InvalidUrlCopyWith<T, InvalidUrl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
