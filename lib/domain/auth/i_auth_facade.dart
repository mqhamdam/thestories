

import 'package:dartz/dartz.dart';
import 'package:thestories/domain/auth/auth_failure.dart';
import 'package:thestories/domain/auth/value_objects.dart';

abstract class IAuthFacade {
  Future<void> getCurrentUser();
  Future<Either<AuthFailure,Unit>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });
  Future<void> signOut();
}