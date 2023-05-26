import 'dart:async';

import 'package:chopper/chopper.dart';
import '../providers.dart';
import 'api.swagger.dart';
import 'authentication_state.dart';
import 'client.dart';
import 'fake_authentication_controller.dart';


// const _kFakeAuth = true;
const _kFakeAuth = false;


class AuthenticationController {
  AuthenticationController();

  static const tokenHeader = 'token';

  static final global = _kFakeAuth
    ? FakeAuthenticationController()
    : AuthenticationController();

  AuthenticationState state = AuthenticationState.guest;
  bool get authorized => state == AuthenticationState.user;

  String? _token;
  String get _requireToken => switch(_token) {
    final token? => token,
    _ => throw StateError('Missing token.'),
  };

  RequestInterceptorFunc get interceptor => _interceptor;
  FutureOr<Request> _interceptor(Request request) {
    if (authorized)
      return applyHeader(
        override: false,
        request,
        tokenHeader,
        _requireToken,
      );
    return request;
  }

  Future<bool> sendEmailCode({
    required String email,
  }) async {
    final response = await apiClient.apiAuthSignUpSendEmailPost(
      body: SendEmailRequest(
        email: email,
      ),
    );
    if (response.body ?? false) {
      state = AuthenticationState.unverified;
      return true;
    }
    return false;
  }

  Future<(bool, UserInfo?)> signUp({
    required String fullName,
    required String email,
    required String code,
    required String password,
    String bio = '',
  }) async {
    final response = await apiClient.apiAuthSignUpPost(
      body: SignUpRequest(
        fullName: fullName,
        bio: bio,
        email: email,
        code: code,
        password: password,
      ),
    );
    final user = response.body;
    if (user != null) {
      if (_setTokenFromResponse(response))
        return (true, user);
    }
    return (false, null);
  }

  Future<(bool, UserInfo?)> signIn({
    required String email,
    required String password,
  }) async {
    final response = await apiClient.apiAuthSignInPost(
      body: SignInRequest(
        email: email,
        password: password,
      ),
    );
    final user = response.body;
    if (user != null) {
      if (_setTokenFromResponse(response))
        return (true, user);
    }
    return (false, null);
  }

  bool _setTokenFromResponse<T>(Response<T> response) {
    final token = response.headers[tokenHeader];
    if (token != null) {
      state = AuthenticationState.user;
      _token = token;
      return true;
    }
    return false;
  }

  bool signOut() {
    _token = null;
    state = AuthenticationState.guest;
    return true;
  }
}

final authenticationController = AuthenticationController.global;
