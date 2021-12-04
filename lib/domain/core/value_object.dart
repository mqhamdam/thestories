import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:thestories/domain/core/error.dart';
import 'package:thestories/domain/core/value_failure.dart';

@immutable
abstract class ValueObject<T> {
  const ValueObject();

  Either<ValueFailure<T>, T> get value;

  T getOrCrash() {
    return value.fold((l) => throw UnexpectedValueError(l), (r) => r);
  }

  bool isvalid () {
    return value.isRight();
  }
  
  @override
  bool operator ==(Object o) {
    if(identical(this, o)) return true;
    return o is ValueObject<T> && o.value == value; 
  }

  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => 'Value($value)';
}
