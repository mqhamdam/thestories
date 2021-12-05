import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:thestories/domain/auth/auth_failure.dart';
import 'package:thestories/domain/auth/i_auth_facade.dart';
import 'package:thestories/domain/auth/value_objects.dart';

@lazySingleton
class FirebaseAuthFacade implements IAuthFacade {
  const FirebaseAuthFacade(this._firebaseAuth);
  final FirebaseAuth _firebaseAuth;

  @override
  Future<User?> getCurrentUser() async => _firebaseAuth.currentUser;

  @override
  Future<void> signOut() async => _firebaseAuth.signOut();
  
  @override
  Stream<User?> authStateChanges() => _firebaseAuth.authStateChanges();
  
  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    final String emailAddressStr =
        emailAddress.value.getOrElse(() => 'INVALID-EMAIL');
    final String passwordStr =
        password.value.getOrElse(() => 'INVALID-PASSWORD'); // weak password
    try {
      return await _firebaseAuth
          .createUserWithEmailAndPassword(
            email: emailAddressStr,
            password: passwordStr,
          )
          .then((value) => right(unit));
    } on FirebaseAuthException catch (authException) {
      switch (authException.code) {
        case 'email-alread-in-use':
          return left(const AuthFailure.emailAlreadyInUser());
        case 'invalid-email':
          return left(const AuthFailure.invalidEmail());
        case 'weak-password':
          return left(const AuthFailure.weakPassword());
        default:
          return left(const AuthFailure.serverAuthError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signinWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    final String emailAddressStr =
        emailAddress.value.getOrElse(() => 'INVALID-EMAIL');
    final String passwordStr =
        password.value.getOrElse(() => 'INVALID-PASSWORD');
    try {
      return await _firebaseAuth
          .signInWithEmailAndPassword(
            email: emailAddressStr,
            password: passwordStr,
          )
          .then((value) => right(unit));
    } on FirebaseAuthException catch (authException) {
      if (authException.code == 'wrong-password' &&
          authException.code == 'invalid-email') {
        return left(const AuthFailure.invalidEmailAndPassword());
      } else if (authException.code == 'user-not-found') {
        return left(const AuthFailure.userNotFound());
      } else if (authException.code == 'user-disabled') {
        return left(const AuthFailure.userDisabled());
      } else {
        return left(const AuthFailure.serverAuthError());
      }
    }
  }

  
}
