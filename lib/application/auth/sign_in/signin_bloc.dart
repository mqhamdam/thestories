import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:thestories/domain/auth/auth_failure.dart';
import 'package:thestories/domain/auth/i_auth_facade.dart';
import 'package:thestories/domain/auth/value_objects.dart';

part 'signin_event.dart';
part 'signin_state.dart';
part 'signin_bloc.freezed.dart';

class SigninBloc extends Bloc<SigninEvent, SigninState> {
  SigninBloc(this._authFacade) : super(SigninState.initial()) {
    on<SigninEvent>((event, emit) async {
      event.map(
        emailChanged: (event) async* {
          emit(
            state.copyWith(
              emailAddress: EmailAddress(event.email),
              authFailureOrSuccessOption: none(),
              showErrorMessage: false,
            ),
          );
        },
        passwordChanged: (event) async* {
          emit(
            state.copyWith(
              password: Password(event.password),
              authFailureOrSuccessOption: none(),
              showErrorMessage: false,
            ),
          );
        },
        signUpWithEmailAndPassword: (event) async* {
          final bool isValidEmail = state.emailAddress.isvalid();
          final bool isValidPassword = state.password.isvalid();
          Either<AuthFailure, Unit>? authResult;

          if (isValidPassword && isValidEmail) {
            emit(
              state.copyWith(
                isSubmitting: true,
                authFailureOrSuccessOption: none(),
                showErrorMessage: false,
              ),
            );
            authResult = await _authFacade.registerWithEmailAndPassword(
              emailAddress: state.emailAddress,
              password: state.password,
            );
          }
          emit(
            state.copyWith(
              authFailureOrSuccessOption: optionOf(authResult),
              isSubmitting: false,
              showErrorMessage: true,
            ),
          );
        },
      );
    });
  }
  final IAuthFacade _authFacade;
}
