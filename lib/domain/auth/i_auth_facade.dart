import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:thestories/domain/auth/auth_failure.dart';
import 'package:thestories/domain/auth/value_objects.dart';

abstract class IAuthFacade {
  Future<User?> getCurrentUser();
  Future<void> signOut();
  Stream<User?> authStateChanges();
  
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });
  Future<Either<AuthFailure, Unit>> signinWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });
}
