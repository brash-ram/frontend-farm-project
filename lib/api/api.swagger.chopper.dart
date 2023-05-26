// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api.swagger.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$Api extends Api {
  _$Api([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = Api;

  @override
  Future<Response<Template>> _apiTemplateUpdatePut(
      {required TemplateRequest? body}) {
    final Uri $url = Uri.parse('/api/template/update');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<Template, Template>($request);
  }

  @override
  Future<Response<Delivery>> _apiDeliveryUpdatePut(
      {required AddDeliveryRequest? body}) {
    final Uri $url = Uri.parse('/api/delivery/update');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<Delivery, Delivery>($request);
  }

  @override
  Future<Response<UserInfo>> _apiAuthChangePasswordPut(
      {required ChangePasswordRequest? body}) {
    final Uri $url = Uri.parse('/api/auth/change/password');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<UserInfo, UserInfo>($request);
  }

  @override
  Future<Response<TemplateResponse>> _apiTemplateDeletePost(
      {required int? id}) {
    final Uri $url = Uri.parse('/api/template/delete');
    final Map<String, dynamic> $params = <String, dynamic>{'id': id};
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<TemplateResponse, TemplateResponse>($request);
  }

  @override
  Future<Response<TemplateResponse>> _apiTemplateAddPost(
      {required TemplateRequest? body}) {
    final Uri $url = Uri.parse('/api/template/add');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<TemplateResponse, TemplateResponse>($request);
  }

  @override
  Future<Response<Product>> _apiProductUpdatePost(
      {required UpdateProductRequest? body}) {
    final Uri $url = Uri.parse('/api/product/update');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<Product, Product>($request);
  }

  @override
  Future<Response<List<Product>>> _apiProductMyPost() {
    final Uri $url = Uri.parse('/api/product/my');
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
    );
    return client.send<List<Product>, Product>($request);
  }

  @override
  Future<Response<dynamic>> _apiProductDeletePost({required int? id}) {
    final Uri $url = Uri.parse('/api/product/delete');
    final Map<String, dynamic> $params = <String, dynamic>{'id': id};
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<Product>> _apiProductAddPost(
      {required AddProductRequest? body}) {
    final Uri $url = Uri.parse('/api/product/add');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<Product, Product>($request);
  }

  @override
  Future<Response<Delivery>> _apiDeliveryDeletePost({required int? id}) {
    final Uri $url = Uri.parse('/api/delivery/delete');
    final Map<String, dynamic> $params = <String, dynamic>{'id': id};
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<Delivery, Delivery>($request);
  }

  @override
  Future<Response<Delivery>> _apiDeliveryAddPost(
      {required AddDeliveryRequest? body}) {
    final Uri $url = Uri.parse('/api/delivery/add');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<Delivery, Delivery>($request);
  }

  @override
  Future<Response<UserInfo>> _apiAuthSignUpPost(
      {required SignUpRequest? body}) {
    final Uri $url = Uri.parse('/api/auth/signUp');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<UserInfo, UserInfo>($request);
  }

  @override
  Future<Response<bool>> _apiAuthSignUpSendEmailPost(
      {required SendEmailRequest? body}) {
    final Uri $url = Uri.parse('/api/auth/signUp/sendEmail');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<UserInfo>> _apiAuthSignInPost(
      {required SignInRequest? body}) {
    final Uri $url = Uri.parse('/api/auth/signIn');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<UserInfo, UserInfo>($request);
  }

  @override
  Future<Response<UserInfo>> _apiAuthSearchEmailPost({required String? email}) {
    final Uri $url = Uri.parse('/api/auth/search/email');
    final Map<String, dynamic> $params = <String, dynamic>{'email': email};
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<UserInfo, UserInfo>($request);
  }

  @override
  Future<Response<UserInfo>> _apiAuthChangeUpdatePost(
      {required UpdateUserRequest? body}) {
    final Uri $url = Uri.parse('/api/auth/change/update');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<UserInfo, UserInfo>($request);
  }

  @override
  Future<Response<UserInfo>> _apiAuthChangeRolePost(
      {required ChangeRoleRequest? body}) {
    final Uri $url = Uri.parse('/api/auth/change/role');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<UserInfo, UserInfo>($request);
  }

  @override
  Future<Response<UserInfo>> _apiAuthByIdPost({required int? id}) {
    final Uri $url = Uri.parse('/api/auth/byId');
    final Map<String, dynamic> $params = <String, dynamic>{'id': id};
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<UserInfo, UserInfo>($request);
  }

  @override
  Future<Response<List<Product>>> _apiProductAllGet() {
    final Uri $url = Uri.parse('/api/product/all');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<Product>, Product>($request);
  }

  @override
  Future<Response<List<Product>>> _apiCartMyGet() {
    final Uri $url = Uri.parse('/api/cart/my');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<Product>, Product>($request);
  }

  @override
  Future<Response<UserInfo>> _apiAuthSelfGet() {
    final Uri $url = Uri.parse('/api/auth/self');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<UserInfo, UserInfo>($request);
  }

  @override
  Future<Response<UserInfoListResponse>> _apiAuthAllGet() {
    final Uri $url = Uri.parse('/api/auth/all');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<UserInfoListResponse, UserInfoListResponse>($request);
  }

  @override
  Future<Response<dynamic>> _apiAuthDeleteUserDelete({required int? userId}) {
    final Uri $url = Uri.parse('/api/auth/deleteUser');
    final Map<String, dynamic> $params = <String, dynamic>{'userId': userId};
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }
}
