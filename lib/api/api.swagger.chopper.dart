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
  Future<Response<Template>> _apiTemplateUpdatePost(
      {required TemplateRequest? body}) {
    final Uri $url = Uri.parse('/api/template/update');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<Template, Template>($request);
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
  Future<Response<Product>> _apiProductAddDiscountPost(
      {required AddDiscountRequest? body}) {
    final Uri $url = Uri.parse('/api/product/add/discount');
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
  Future<Response<dynamic>> _apiMarksChangeMarksDeletePost(
      {required Mark? body}) {
    final Uri $url = Uri.parse('/api/marks/change/marks/delete');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiMarksChangeMarksChangePost(
      {required Mark? body}) {
    final Uri $url = Uri.parse('/api/marks/change/marks/change');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiMarksAddPost({required Mark? body}) {
    final Uri $url = Uri.parse('/api/marks/add');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<Delivery>> _apiDeliveryUpdatePost(
      {required UpdateDeliveryRequest? body}) {
    final Uri $url = Uri.parse('/api/delivery/update');
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
  Future<Response<List<Delivery>>> _apiDeliveryAddAllPost(
      {required List<AddDeliveryRequest>? body}) {
    final Uri $url = Uri.parse('/api/delivery/addAll');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<List<Delivery>, Delivery>($request);
  }

  @override
  Future<Response<Course>> _apiCourseUpdateCoursePost(
      {required UpdateCourseRequest? body}) {
    final Uri $url = Uri.parse('/api/course/updateCourse');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<Course, Course>($request);
  }

  @override
  Future<Response<Course>> _apiCourseAddCoursePost(
      {required AddCourseRequest? body}) {
    final Uri $url = Uri.parse('/api/course/addCourse');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<Course, Course>($request);
  }

  @override
  Future<Response<dynamic>> _apiCartDeleteProductPost({
    required int? userId,
    required int? productId,
  }) {
    final Uri $url = Uri.parse('/api/cart/deleteProduct');
    final Map<String, dynamic> $params = <String, dynamic>{
      'userId': userId,
      'productId': productId,
    };
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<Cart>> _apiCartAddPost({
    required int? userId,
    required int? productId,
  }) {
    final Uri $url = Uri.parse('/api/cart/add');
    final Map<String, dynamic> $params = <String, dynamic>{
      'userId': userId,
      'productId': productId,
    };
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<Cart, Cart>($request);
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
  Future<Response<UserInfo>> _apiAuthChangeRoleByIdPost({required int? id}) {
    final Uri $url = Uri.parse('/api/auth/change/role/byId');
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
  Future<Response<UserInfo>> _apiAuthChangePasswordPost(
      {required ChangePasswordRequest? body}) {
    final Uri $url = Uri.parse('/api/auth/change/password');
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
  Future<Response<List<UserInfo>>> _apiAuthAddAllPost(
      {required List<SignUpCustomRequest>? body}) {
    final Uri $url = Uri.parse('/api/auth/addAll');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<List<UserInfo>, UserInfo>($request);
  }

  @override
  Future<Response<List<Product>>> _apiProductSearchNameGet(
      {required String? name}) {
    final Uri $url = Uri.parse('/api/product/search/name');
    final Map<String, dynamic> $params = <String, dynamic>{'name': name};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<List<Product>, Product>($request);
  }

  @override
  Future<Response<List<Product>>> _apiProductSearchLocationGet(
      {required String? location}) {
    final Uri $url = Uri.parse('/api/product/search/location');
    final Map<String, dynamic> $params = <String, dynamic>{
      'location': location
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<List<Product>, Product>($request);
  }

  @override
  Future<Response<List<Product>>> _apiProductSearchCategoryGet(
      {required String? category}) {
    final Uri $url = Uri.parse('/api/product/search/category');
    final Map<String, dynamic> $params = <String, dynamic>{
      'category': category
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<List<Product>, Product>($request);
  }

  @override
  Future<Response<Product>> _apiProductGetProductGet({required int? id}) {
    final Uri $url = Uri.parse('/api/product/getProduct');
    final Map<String, dynamic> $params = <String, dynamic>{'id': id};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<Product, Product>($request);
  }

  @override
  Future<Response<List<String>>> _apiProductApiProductCategoriesGet() {
    final Uri $url = Uri.parse('/api/product/api/product/categories');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<String>, String>($request);
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
  Future<Response<List<Delivery>>> _apiDeliverySearchPositionGet(
      {required String? position}) {
    final Uri $url = Uri.parse('/api/delivery/search/position');
    final Map<String, dynamic> $params = <String, dynamic>{
      'position': position
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<List<Delivery>, Delivery>($request);
  }

  @override
  Future<Response<Delivery>> _apiDeliveryGetByIdGet({required int? id}) {
    final Uri $url = Uri.parse('/api/delivery/getById');
    final Map<String, dynamic> $params = <String, dynamic>{'id': id};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<Delivery, Delivery>($request);
  }

  @override
  Future<Response<Object>> _apiDeliveryCalenderGet({required int? id}) {
    final Uri $url = Uri.parse('/api/delivery/calender');
    final Map<String, dynamic> $params = <String, dynamic>{'id': id};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<Object, Object>($request);
  }

  @override
  Future<Response<List<Delivery>>> _apiDeliveryAllGet() {
    final Uri $url = Uri.parse('/api/delivery/all');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<Delivery>, Delivery>($request);
  }

  @override
  Future<Response<Course>> _apiCourseGeCourseGet({required int? id}) {
    final Uri $url = Uri.parse('/api/course/geCourse');
    final Map<String, dynamic> $params = <String, dynamic>{'id': id};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<Course, Course>($request);
  }

  @override
  Future<Response<List<Course>>> _apiCourseAllCoursersGet() {
    final Uri $url = Uri.parse('/api/course/allCoursers');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<Course>, Course>($request);
  }

  @override
  Future<Response<bool>> _apiCartProductExistGet({
    required int? userId,
    required int? productId,
  }) {
    final Uri $url = Uri.parse('/api/cart/productExist');
    final Map<String, dynamic> $params = <String, dynamic>{
      'userId': userId,
      'productId': productId,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<Cart>> _apiCartMyGet() {
    final Uri $url = Uri.parse('/api/cart/my');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<Cart, Cart>($request);
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
  Future<Response<UserInfo>> _apiAuthByIdGet({required int? id}) {
    final Uri $url = Uri.parse('/api/auth/byId');
    final Map<String, dynamic> $params = <String, dynamic>{'id': id};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
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
  Future<Response<dynamic>> _apiProductDeleteDelete({required int? id}) {
    final Uri $url = Uri.parse('/api/product/delete');
    final Map<String, dynamic> $params = <String, dynamic>{'id': id};
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<Delivery>> _apiDeliveryDeleteDelete({required int? id}) {
    final Uri $url = Uri.parse('/api/delivery/delete');
    final Map<String, dynamic> $params = <String, dynamic>{'id': id};
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<Delivery, Delivery>($request);
  }

  @override
  Future<Response<dynamic>> _apiCourseDeleteCourseDelete({required int? id}) {
    final Uri $url = Uri.parse('/api/course/deleteCourse');
    final Map<String, dynamic> $params = <String, dynamic>{'id': id};
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
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
