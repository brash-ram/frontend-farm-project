import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:flutter/foundation.dart';

import '../api.dart';
import 'authentication_controller.dart';
import 'authentication_state.dart';


class FakeAuthenticationController extends AuthenticationController {
  FakeAuthenticationController();

  static final AuthenticationController global = FakeAuthenticationController();
  static const delay = Duration(milliseconds: 1000);

  @override
  RequestInterceptorFunc get interceptor => (request) => request;

  @override
  Future<bool> sendEmailCode({
    required String email,
  }) async {
    await Future<void>.delayed(delay);
    if (kDebugMode)
      print('FAKE_AUTH: sendEmailCode(email: $email)');
    if (email == 'fail@fail.fail')
      return false;
    state = AuthenticationState.unverified;
    return true;
  }

  @override
  Future<(bool, UserInfo?)> signUp({
    required String fullName,
    required String email,
    required String code,
    required String password,
    String bio = '',
  }) async {
    await Future<void>.delayed(delay);
    if (kDebugMode)
      print('FAKE_AUTH: signUp(fullName: $fullName, bio: $bio, email: $email, code: $code, password: $password)');
    if (email == 'fail@fail.fail')
      return (false, null);
    state = AuthenticationState.user;
    return (true, null);
  }

  @override
  Future<(bool, UserInfo?)> signIn({
    required String email,
    required String password,
  }) async {
    await Future<void>.delayed(delay);
    if (kDebugMode)
      print('FAKE_AUTH: signIn(email: $email, password: $password)');
    if (email == 'fail@fail.fail')
      return (false, null);
    state = AuthenticationState.user;
    return (true, null);
  }

  @override
  bool signOut() {
    if (kDebugMode)
      print('FAKE_AUTH: signOut');
    state = AuthenticationState.guest;
    return true;
  }
}
