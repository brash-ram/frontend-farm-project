// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';
import 'dart:convert';

import 'package:chopper/chopper.dart';

import 'client_mapping.dart';
import 'dart:async';
import 'package:chopper/chopper.dart' as chopper;
import 'api.enums.swagger.dart' as enums;
export 'api.enums.swagger.dart';

part 'api.swagger.chopper.dart';
part 'api.swagger.g.dart';

// **************************************************************************
// SwaggerChopperGenerator
// **************************************************************************

@ChopperApi()
abstract class Api extends ChopperService {
  static Api create({
    ChopperClient? client,
    Authenticator? authenticator,
    Uri? baseUrl,
    Iterable<dynamic>? interceptors,
  }) {
    if (client != null) {
      return _$Api(client);
    }

    final newClient = ChopperClient(
        services: [_$Api()],
        converter: $JsonSerializableConverter(),
        interceptors: interceptors ?? [],
        authenticator: authenticator,
        baseUrl: baseUrl ?? Uri.parse('http://'));
    return _$Api(newClient);
  }

  ///
  Future<chopper.Response<Template>> apiTemplateUpdatePut(
      {required TemplateRequest? body}) {
    generatedMapping.putIfAbsent(Template, () => Template.fromJsonFactory);

    return _apiTemplateUpdatePut(body: body);
  }

  ///
  @Put(
    path: '/api/template/update',
    optionalBody: true,
  )
  Future<chopper.Response<Template>> _apiTemplateUpdatePut(
      {@Body() required TemplateRequest? body});

  ///
  Future<chopper.Response<Delivery>> apiDeliveryUpdatePut(
      {required AddDeliveryRequest? body}) {
    generatedMapping.putIfAbsent(Delivery, () => Delivery.fromJsonFactory);

    return _apiDeliveryUpdatePut(body: body);
  }

  ///
  @Put(
    path: '/api/delivery/update',
    optionalBody: true,
  )
  Future<chopper.Response<Delivery>> _apiDeliveryUpdatePut(
      {@Body() required AddDeliveryRequest? body});

  ///
  Future<chopper.Response<UserInfo>> apiAuthChangePasswordPut(
      {required ChangePasswordRequest? body}) {
    generatedMapping.putIfAbsent(UserInfo, () => UserInfo.fromJsonFactory);

    return _apiAuthChangePasswordPut(body: body);
  }

  ///
  @Put(
    path: '/api/auth/change/password',
    optionalBody: true,
  )
  Future<chopper.Response<UserInfo>> _apiAuthChangePasswordPut(
      {@Body() required ChangePasswordRequest? body});

  ///
  ///@param id
  Future<chopper.Response<TemplateResponse>> apiTemplateDeletePost(
      {required int? id}) {
    generatedMapping.putIfAbsent(
        TemplateResponse, () => TemplateResponse.fromJsonFactory);

    return _apiTemplateDeletePost(id: id);
  }

  ///
  ///@param id
  @Post(
    path: '/api/template/delete',
    optionalBody: true,
  )
  Future<chopper.Response<TemplateResponse>> _apiTemplateDeletePost(
      {@Query('id') required int? id});

  ///
  Future<chopper.Response<TemplateResponse>> apiTemplateAddPost(
      {required TemplateRequest? body}) {
    generatedMapping.putIfAbsent(
        TemplateResponse, () => TemplateResponse.fromJsonFactory);

    return _apiTemplateAddPost(body: body);
  }

  ///
  @Post(
    path: '/api/template/add',
    optionalBody: true,
  )
  Future<chopper.Response<TemplateResponse>> _apiTemplateAddPost(
      {@Body() required TemplateRequest? body});

  ///
  Future<chopper.Response<Product>> apiProductUpdatePost(
      {required UpdateProductRequest? body}) {
    generatedMapping.putIfAbsent(Product, () => Product.fromJsonFactory);

    return _apiProductUpdatePost(body: body);
  }

  ///
  @Post(
    path: '/api/product/update',
    optionalBody: true,
  )
  Future<chopper.Response<Product>> _apiProductUpdatePost(
      {@Body() required UpdateProductRequest? body});

  ///
  Future<chopper.Response<List<Product>>> apiProductMyPost() {
    generatedMapping.putIfAbsent(Product, () => Product.fromJsonFactory);

    return _apiProductMyPost();
  }

  ///
  @Post(
    path: '/api/product/my',
    optionalBody: true,
  )
  Future<chopper.Response<List<Product>>> _apiProductMyPost();

  ///
  ///@param id
  Future<chopper.Response> apiProductDeletePost({required int? id}) {
    return _apiProductDeletePost(id: id);
  }

  ///
  ///@param id
  @Post(
    path: '/api/product/delete',
    optionalBody: true,
  )
  Future<chopper.Response> _apiProductDeletePost(
      {@Query('id') required int? id});

  ///
  Future<chopper.Response<Product>> apiProductAddPost(
      {required AddProductRequest? body}) {
    generatedMapping.putIfAbsent(Product, () => Product.fromJsonFactory);

    return _apiProductAddPost(body: body);
  }

  ///
  @Post(
    path: '/api/product/add',
    optionalBody: true,
  )
  Future<chopper.Response<Product>> _apiProductAddPost(
      {@Body() required AddProductRequest? body});

  ///
  ///@param id
  Future<chopper.Response<Delivery>> apiDeliveryDeletePost({required int? id}) {
    generatedMapping.putIfAbsent(Delivery, () => Delivery.fromJsonFactory);

    return _apiDeliveryDeletePost(id: id);
  }

  ///
  ///@param id
  @Post(
    path: '/api/delivery/delete',
    optionalBody: true,
  )
  Future<chopper.Response<Delivery>> _apiDeliveryDeletePost(
      {@Query('id') required int? id});

  ///
  Future<chopper.Response<Delivery>> apiDeliveryAddPost(
      {required AddDeliveryRequest? body}) {
    generatedMapping.putIfAbsent(Delivery, () => Delivery.fromJsonFactory);

    return _apiDeliveryAddPost(body: body);
  }

  ///
  @Post(
    path: '/api/delivery/add',
    optionalBody: true,
  )
  Future<chopper.Response<Delivery>> _apiDeliveryAddPost(
      {@Body() required AddDeliveryRequest? body});

  ///
  Future<chopper.Response<UserInfo>> apiAuthSignUpPost(
      {required SignUpRequest? body}) {
    generatedMapping.putIfAbsent(UserInfo, () => UserInfo.fromJsonFactory);

    return _apiAuthSignUpPost(body: body);
  }

  ///
  @Post(
    path: '/api/auth/signUp',
    optionalBody: true,
  )
  Future<chopper.Response<UserInfo>> _apiAuthSignUpPost(
      {@Body() required SignUpRequest? body});

  ///
  Future<chopper.Response<bool>> apiAuthSignUpSendEmailPost(
      {required SendEmailRequest? body}) {
    return _apiAuthSignUpSendEmailPost(body: body);
  }

  ///
  @Post(
    path: '/api/auth/signUp/sendEmail',
    optionalBody: true,
  )
  Future<chopper.Response<bool>> _apiAuthSignUpSendEmailPost(
      {@Body() required SendEmailRequest? body});

  ///
  Future<chopper.Response<UserInfo>> apiAuthSignInPost(
      {required SignInRequest? body}) {
    generatedMapping.putIfAbsent(UserInfo, () => UserInfo.fromJsonFactory);

    return _apiAuthSignInPost(body: body);
  }

  ///
  @Post(
    path: '/api/auth/signIn',
    optionalBody: true,
  )
  Future<chopper.Response<UserInfo>> _apiAuthSignInPost(
      {@Body() required SignInRequest? body});

  ///
  ///@param email
  Future<chopper.Response<UserInfo>> apiAuthSearchEmailPost(
      {required String? email}) {
    generatedMapping.putIfAbsent(UserInfo, () => UserInfo.fromJsonFactory);

    return _apiAuthSearchEmailPost(email: email);
  }

  ///
  ///@param email
  @Post(
    path: '/api/auth/search/email',
    optionalBody: true,
  )
  Future<chopper.Response<UserInfo>> _apiAuthSearchEmailPost(
      {@Query('email') required String? email});

  ///
  Future<chopper.Response<UserInfo>> apiAuthChangeUpdatePost(
      {required UpdateUserRequest? body}) {
    generatedMapping.putIfAbsent(UserInfo, () => UserInfo.fromJsonFactory);

    return _apiAuthChangeUpdatePost(body: body);
  }

  ///
  @Post(
    path: '/api/auth/change/update',
    optionalBody: true,
  )
  Future<chopper.Response<UserInfo>> _apiAuthChangeUpdatePost(
      {@Body() required UpdateUserRequest? body});

  ///
  Future<chopper.Response<UserInfo>> apiAuthChangeRolePost(
      {required ChangeRoleRequest? body}) {
    generatedMapping.putIfAbsent(UserInfo, () => UserInfo.fromJsonFactory);

    return _apiAuthChangeRolePost(body: body);
  }

  ///
  @Post(
    path: '/api/auth/change/role',
    optionalBody: true,
  )
  Future<chopper.Response<UserInfo>> _apiAuthChangeRolePost(
      {@Body() required ChangeRoleRequest? body});

  ///
  ///@param id
  Future<chopper.Response<UserInfo>> apiAuthByIdPost({required int? id}) {
    generatedMapping.putIfAbsent(UserInfo, () => UserInfo.fromJsonFactory);

    return _apiAuthByIdPost(id: id);
  }

  ///
  ///@param id
  @Post(
    path: '/api/auth/byId',
    optionalBody: true,
  )
  Future<chopper.Response<UserInfo>> _apiAuthByIdPost(
      {@Query('id') required int? id});

  ///
  Future<chopper.Response<List<Product>>> apiProductAllGet() {
    generatedMapping.putIfAbsent(Product, () => Product.fromJsonFactory);

    return _apiProductAllGet();
  }

  ///
  @Get(path: '/api/product/all')
  Future<chopper.Response<List<Product>>> _apiProductAllGet();

  ///
  Future<chopper.Response<List<Product>>> apiCartMyGet() {
    generatedMapping.putIfAbsent(Product, () => Product.fromJsonFactory);

    return _apiCartMyGet();
  }

  ///
  @Get(path: '/api/cart/my')
  Future<chopper.Response<List<Product>>> _apiCartMyGet();

  ///
  Future<chopper.Response<UserInfo>> apiAuthSelfGet() {
    generatedMapping.putIfAbsent(UserInfo, () => UserInfo.fromJsonFactory);

    return _apiAuthSelfGet();
  }

  ///
  @Get(path: '/api/auth/self')
  Future<chopper.Response<UserInfo>> _apiAuthSelfGet();

  ///
  Future<chopper.Response<UserInfoListResponse>> apiAuthAllGet() {
    generatedMapping.putIfAbsent(
        UserInfoListResponse, () => UserInfoListResponse.fromJsonFactory);

    return _apiAuthAllGet();
  }

  ///
  @Get(path: '/api/auth/all')
  Future<chopper.Response<UserInfoListResponse>> _apiAuthAllGet();

  ///
  ///@param userId
  Future<chopper.Response> apiAuthDeleteUserDelete({required int? userId}) {
    return _apiAuthDeleteUserDelete(userId: userId);
  }

  ///
  ///@param userId
  @Delete(path: '/api/auth/deleteUser')
  Future<chopper.Response> _apiAuthDeleteUserDelete(
      {@Query('userId') required int? userId});
}

@JsonSerializable(explicitToJson: true)
class TemplateRequest {
  TemplateRequest();

  factory TemplateRequest.fromJson(Map<String, dynamic> json) =>
      _$TemplateRequestFromJson(json);

  static const toJsonFactory = _$TemplateRequestToJson;
  Map<String, dynamic> toJson() => _$TemplateRequestToJson(this);

  static const fromJsonFactory = _$TemplateRequestFromJson;

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode => runtimeType.hashCode;
}

@JsonSerializable(explicitToJson: true)
class Template {
  Template({
    required this.id,
  });

  factory Template.fromJson(Map<String, dynamic> json) =>
      _$TemplateFromJson(json);

  static const toJsonFactory = _$TemplateToJson;
  Map<String, dynamic> toJson() => _$TemplateToJson(this);

  @JsonKey(name: 'id')
  final int id;
  static const fromJsonFactory = _$TemplateFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Template &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^ runtimeType.hashCode;
}

extension $TemplateExtension on Template {
  Template copyWith({int? id}) {
    return Template(id: id ?? this.id);
  }

  Template copyWithWrapped({Wrapped<int>? id}) {
    return Template(id: (id != null ? id.value : this.id));
  }
}

@JsonSerializable(explicitToJson: true)
class AddDeliveryRequest {
  AddDeliveryRequest({
    required this.id,
    required this.deliveryType,
    required this.date,
    required this.adressFrom,
    required this.adressTo,
    required this.period,
    required this.productId,
    required this.farmerId,
    required this.consumerId,
  });

  factory AddDeliveryRequest.fromJson(Map<String, dynamic> json) =>
      _$AddDeliveryRequestFromJson(json);

  static const toJsonFactory = _$AddDeliveryRequestToJson;
  Map<String, dynamic> toJson() => _$AddDeliveryRequestToJson(this);

  @JsonKey(name: 'id')
  final int id;
  @JsonKey(
    name: 'deliveryType',
    toJson: addDeliveryRequestDeliveryTypeToJson,
    fromJson: addDeliveryRequestDeliveryTypeFromJson,
  )
  final enums.AddDeliveryRequestDeliveryType deliveryType;
  @JsonKey(name: 'date')
  final int date;
  @JsonKey(name: 'adressFrom')
  final String adressFrom;
  @JsonKey(name: 'adressTo')
  final String adressTo;
  @JsonKey(name: 'period')
  final int period;
  @JsonKey(name: 'productId')
  final int productId;
  @JsonKey(name: 'farmerId')
  final int farmerId;
  @JsonKey(name: 'consumerId')
  final int consumerId;
  static const fromJsonFactory = _$AddDeliveryRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddDeliveryRequest &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.deliveryType, deliveryType) ||
                const DeepCollectionEquality()
                    .equals(other.deliveryType, deliveryType)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.adressFrom, adressFrom) ||
                const DeepCollectionEquality()
                    .equals(other.adressFrom, adressFrom)) &&
            (identical(other.adressTo, adressTo) ||
                const DeepCollectionEquality()
                    .equals(other.adressTo, adressTo)) &&
            (identical(other.period, period) ||
                const DeepCollectionEquality().equals(other.period, period)) &&
            (identical(other.productId, productId) ||
                const DeepCollectionEquality()
                    .equals(other.productId, productId)) &&
            (identical(other.farmerId, farmerId) ||
                const DeepCollectionEquality()
                    .equals(other.farmerId, farmerId)) &&
            (identical(other.consumerId, consumerId) ||
                const DeepCollectionEquality()
                    .equals(other.consumerId, consumerId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(deliveryType) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(adressFrom) ^
      const DeepCollectionEquality().hash(adressTo) ^
      const DeepCollectionEquality().hash(period) ^
      const DeepCollectionEquality().hash(productId) ^
      const DeepCollectionEquality().hash(farmerId) ^
      const DeepCollectionEquality().hash(consumerId) ^
      runtimeType.hashCode;
}

extension $AddDeliveryRequestExtension on AddDeliveryRequest {
  AddDeliveryRequest copyWith(
      {int? id,
      enums.AddDeliveryRequestDeliveryType? deliveryType,
      int? date,
      String? adressFrom,
      String? adressTo,
      int? period,
      int? productId,
      int? farmerId,
      int? consumerId}) {
    return AddDeliveryRequest(
        id: id ?? this.id,
        deliveryType: deliveryType ?? this.deliveryType,
        date: date ?? this.date,
        adressFrom: adressFrom ?? this.adressFrom,
        adressTo: adressTo ?? this.adressTo,
        period: period ?? this.period,
        productId: productId ?? this.productId,
        farmerId: farmerId ?? this.farmerId,
        consumerId: consumerId ?? this.consumerId);
  }

  AddDeliveryRequest copyWithWrapped(
      {Wrapped<int>? id,
      Wrapped<enums.AddDeliveryRequestDeliveryType>? deliveryType,
      Wrapped<int>? date,
      Wrapped<String>? adressFrom,
      Wrapped<String>? adressTo,
      Wrapped<int>? period,
      Wrapped<int>? productId,
      Wrapped<int>? farmerId,
      Wrapped<int>? consumerId}) {
    return AddDeliveryRequest(
        id: (id != null ? id.value : this.id),
        deliveryType:
            (deliveryType != null ? deliveryType.value : this.deliveryType),
        date: (date != null ? date.value : this.date),
        adressFrom: (adressFrom != null ? adressFrom.value : this.adressFrom),
        adressTo: (adressTo != null ? adressTo.value : this.adressTo),
        period: (period != null ? period.value : this.period),
        productId: (productId != null ? productId.value : this.productId),
        farmerId: (farmerId != null ? farmerId.value : this.farmerId),
        consumerId: (consumerId != null ? consumerId.value : this.consumerId));
  }
}

@JsonSerializable(explicitToJson: true)
class Delivery {
  Delivery({
    required this.id,
    required this.deliveryType,
    required this.date,
    required this.adressFrom,
    required this.adressTo,
    required this.period,
    required this.productId,
    required this.consumerId,
    required this.farmerId,
    required this.unit,
  });

  factory Delivery.fromJson(Map<String, dynamic> json) =>
      _$DeliveryFromJson(json);

  static const toJsonFactory = _$DeliveryToJson;
  Map<String, dynamic> toJson() => _$DeliveryToJson(this);

  @JsonKey(name: 'id')
  final int id;
  @JsonKey(
    name: 'deliveryType',
    toJson: deliveryDeliveryTypeToJson,
    fromJson: deliveryDeliveryTypeFromJson,
  )
  final enums.DeliveryDeliveryType deliveryType;
  @JsonKey(name: 'date')
  final int date;
  @JsonKey(name: 'adressFrom')
  final String adressFrom;
  @JsonKey(name: 'adressTo')
  final String adressTo;
  @JsonKey(name: 'period')
  final int period;
  @JsonKey(name: 'productId')
  final int productId;
  @JsonKey(name: 'consumerId')
  final int consumerId;
  @JsonKey(name: 'farmerId')
  final int farmerId;
  @JsonKey(
    name: 'unit',
    toJson: deliveryUnitToJson,
    fromJson: deliveryUnitFromJson,
  )
  final enums.DeliveryUnit unit;
  static const fromJsonFactory = _$DeliveryFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Delivery &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.deliveryType, deliveryType) ||
                const DeepCollectionEquality()
                    .equals(other.deliveryType, deliveryType)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.adressFrom, adressFrom) ||
                const DeepCollectionEquality()
                    .equals(other.adressFrom, adressFrom)) &&
            (identical(other.adressTo, adressTo) ||
                const DeepCollectionEquality()
                    .equals(other.adressTo, adressTo)) &&
            (identical(other.period, period) ||
                const DeepCollectionEquality().equals(other.period, period)) &&
            (identical(other.productId, productId) ||
                const DeepCollectionEquality()
                    .equals(other.productId, productId)) &&
            (identical(other.consumerId, consumerId) ||
                const DeepCollectionEquality()
                    .equals(other.consumerId, consumerId)) &&
            (identical(other.farmerId, farmerId) ||
                const DeepCollectionEquality()
                    .equals(other.farmerId, farmerId)) &&
            (identical(other.unit, unit) ||
                const DeepCollectionEquality().equals(other.unit, unit)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(deliveryType) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(adressFrom) ^
      const DeepCollectionEquality().hash(adressTo) ^
      const DeepCollectionEquality().hash(period) ^
      const DeepCollectionEquality().hash(productId) ^
      const DeepCollectionEquality().hash(consumerId) ^
      const DeepCollectionEquality().hash(farmerId) ^
      const DeepCollectionEquality().hash(unit) ^
      runtimeType.hashCode;
}

extension $DeliveryExtension on Delivery {
  Delivery copyWith(
      {int? id,
      enums.DeliveryDeliveryType? deliveryType,
      int? date,
      String? adressFrom,
      String? adressTo,
      int? period,
      int? productId,
      int? consumerId,
      int? farmerId,
      enums.DeliveryUnit? unit}) {
    return Delivery(
        id: id ?? this.id,
        deliveryType: deliveryType ?? this.deliveryType,
        date: date ?? this.date,
        adressFrom: adressFrom ?? this.adressFrom,
        adressTo: adressTo ?? this.adressTo,
        period: period ?? this.period,
        productId: productId ?? this.productId,
        consumerId: consumerId ?? this.consumerId,
        farmerId: farmerId ?? this.farmerId,
        unit: unit ?? this.unit);
  }

  Delivery copyWithWrapped(
      {Wrapped<int>? id,
      Wrapped<enums.DeliveryDeliveryType>? deliveryType,
      Wrapped<int>? date,
      Wrapped<String>? adressFrom,
      Wrapped<String>? adressTo,
      Wrapped<int>? period,
      Wrapped<int>? productId,
      Wrapped<int>? consumerId,
      Wrapped<int>? farmerId,
      Wrapped<enums.DeliveryUnit>? unit}) {
    return Delivery(
        id: (id != null ? id.value : this.id),
        deliveryType:
            (deliveryType != null ? deliveryType.value : this.deliveryType),
        date: (date != null ? date.value : this.date),
        adressFrom: (adressFrom != null ? adressFrom.value : this.adressFrom),
        adressTo: (adressTo != null ? adressTo.value : this.adressTo),
        period: (period != null ? period.value : this.period),
        productId: (productId != null ? productId.value : this.productId),
        consumerId: (consumerId != null ? consumerId.value : this.consumerId),
        farmerId: (farmerId != null ? farmerId.value : this.farmerId),
        unit: (unit != null ? unit.value : this.unit));
  }
}

@JsonSerializable(explicitToJson: true)
class ChangePasswordRequest {
  ChangePasswordRequest({
    required this.id,
    required this.password,
  });

  factory ChangePasswordRequest.fromJson(Map<String, dynamic> json) =>
      _$ChangePasswordRequestFromJson(json);

  static const toJsonFactory = _$ChangePasswordRequestToJson;
  Map<String, dynamic> toJson() => _$ChangePasswordRequestToJson(this);

  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'password')
  final String password;
  static const fromJsonFactory = _$ChangePasswordRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChangePasswordRequest &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(password) ^
      runtimeType.hashCode;
}

extension $ChangePasswordRequestExtension on ChangePasswordRequest {
  ChangePasswordRequest copyWith({int? id, String? password}) {
    return ChangePasswordRequest(
        id: id ?? this.id, password: password ?? this.password);
  }

  ChangePasswordRequest copyWithWrapped(
      {Wrapped<int>? id, Wrapped<String>? password}) {
    return ChangePasswordRequest(
        id: (id != null ? id.value : this.id),
        password: (password != null ? password.value : this.password));
  }
}

@JsonSerializable(explicitToJson: true)
class UserInfo {
  UserInfo({
    required this.fullName,
    required this.bio,
    required this.email,
    required this.id,
    required this.roles,
    required this.dateRegistration,
  });

  factory UserInfo.fromJson(Map<String, dynamic> json) =>
      _$UserInfoFromJson(json);

  static const toJsonFactory = _$UserInfoToJson;
  Map<String, dynamic> toJson() => _$UserInfoToJson(this);

  @JsonKey(name: 'fullName')
  final String fullName;
  @JsonKey(name: 'bio')
  final String bio;
  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(
    name: 'roles',
    toJson: userInfoRolesListToJson,
    fromJson: userInfoRolesListFromJson,
  )
  final List<enums.UserInfoRoles> roles;
  @JsonKey(name: 'dateRegistration')
  final int dateRegistration;
  static const fromJsonFactory = _$UserInfoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserInfo &&
            (identical(other.fullName, fullName) ||
                const DeepCollectionEquality()
                    .equals(other.fullName, fullName)) &&
            (identical(other.bio, bio) ||
                const DeepCollectionEquality().equals(other.bio, bio)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.roles, roles) ||
                const DeepCollectionEquality().equals(other.roles, roles)) &&
            (identical(other.dateRegistration, dateRegistration) ||
                const DeepCollectionEquality()
                    .equals(other.dateRegistration, dateRegistration)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(fullName) ^
      const DeepCollectionEquality().hash(bio) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(roles) ^
      const DeepCollectionEquality().hash(dateRegistration) ^
      runtimeType.hashCode;
}

extension $UserInfoExtension on UserInfo {
  UserInfo copyWith(
      {String? fullName,
      String? bio,
      String? email,
      int? id,
      List<enums.UserInfoRoles>? roles,
      int? dateRegistration}) {
    return UserInfo(
        fullName: fullName ?? this.fullName,
        bio: bio ?? this.bio,
        email: email ?? this.email,
        id: id ?? this.id,
        roles: roles ?? this.roles,
        dateRegistration: dateRegistration ?? this.dateRegistration);
  }

  UserInfo copyWithWrapped(
      {Wrapped<String>? fullName,
      Wrapped<String>? bio,
      Wrapped<String>? email,
      Wrapped<int>? id,
      Wrapped<List<enums.UserInfoRoles>>? roles,
      Wrapped<int>? dateRegistration}) {
    return UserInfo(
        fullName: (fullName != null ? fullName.value : this.fullName),
        bio: (bio != null ? bio.value : this.bio),
        email: (email != null ? email.value : this.email),
        id: (id != null ? id.value : this.id),
        roles: (roles != null ? roles.value : this.roles),
        dateRegistration: (dateRegistration != null
            ? dateRegistration.value
            : this.dateRegistration));
  }
}

@JsonSerializable(explicitToJson: true)
class TemplateResponse {
  TemplateResponse();

  factory TemplateResponse.fromJson(Map<String, dynamic> json) =>
      _$TemplateResponseFromJson(json);

  static const toJsonFactory = _$TemplateResponseToJson;
  Map<String, dynamic> toJson() => _$TemplateResponseToJson(this);

  static const fromJsonFactory = _$TemplateResponseFromJson;

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode => runtimeType.hashCode;
}

@JsonSerializable(explicitToJson: true)
class UpdateProductRequest {
  UpdateProductRequest({
    this.image,
    required this.description,
    required this.name,
    required this.category,
    required this.tags,
    required this.position,
    required this.price,
    required this.tradePrice,
    required this.priceBoard,
    required this.farmerId,
    required this.dateRegistration,
    required this.unit,
    required this.idProduct,
  });

  factory UpdateProductRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateProductRequestFromJson(json);

  static const toJsonFactory = _$UpdateProductRequestToJson;
  Map<String, dynamic> toJson() => _$UpdateProductRequestToJson(this);

  @JsonKey(name: 'image')
  final String? image;
  @JsonKey(name: 'description')
  final String description;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'category')
  final String category;
  @JsonKey(
    name: 'tags',
    toJson: updateProductRequestTagsListToJson,
    fromJson: updateProductRequestTagsListFromJson,
  )
  final List<enums.UpdateProductRequestTags> tags;
  @JsonKey(name: 'position')
  final String position;
  @JsonKey(name: 'price')
  final int price;
  @JsonKey(name: 'tradePrice')
  final int tradePrice;
  @JsonKey(name: 'priceBoard')
  final int priceBoard;
  @JsonKey(name: 'farmerId')
  final int farmerId;
  @JsonKey(name: 'dateRegistration')
  final int dateRegistration;
  @JsonKey(
    name: 'unit',
    toJson: updateProductRequestUnitToJson,
    fromJson: updateProductRequestUnitFromJson,
  )
  final enums.UpdateProductRequestUnit unit;
  @JsonKey(name: 'idProduct')
  final int idProduct;
  static const fromJsonFactory = _$UpdateProductRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateProductRequest &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.tags, tags) ||
                const DeepCollectionEquality().equals(other.tags, tags)) &&
            (identical(other.position, position) ||
                const DeepCollectionEquality()
                    .equals(other.position, position)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.tradePrice, tradePrice) ||
                const DeepCollectionEquality()
                    .equals(other.tradePrice, tradePrice)) &&
            (identical(other.priceBoard, priceBoard) ||
                const DeepCollectionEquality()
                    .equals(other.priceBoard, priceBoard)) &&
            (identical(other.farmerId, farmerId) ||
                const DeepCollectionEquality()
                    .equals(other.farmerId, farmerId)) &&
            (identical(other.dateRegistration, dateRegistration) ||
                const DeepCollectionEquality()
                    .equals(other.dateRegistration, dateRegistration)) &&
            (identical(other.unit, unit) ||
                const DeepCollectionEquality().equals(other.unit, unit)) &&
            (identical(other.idProduct, idProduct) ||
                const DeepCollectionEquality()
                    .equals(other.idProduct, idProduct)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(tags) ^
      const DeepCollectionEquality().hash(position) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(tradePrice) ^
      const DeepCollectionEquality().hash(priceBoard) ^
      const DeepCollectionEquality().hash(farmerId) ^
      const DeepCollectionEquality().hash(dateRegistration) ^
      const DeepCollectionEquality().hash(unit) ^
      const DeepCollectionEquality().hash(idProduct) ^
      runtimeType.hashCode;
}

extension $UpdateProductRequestExtension on UpdateProductRequest {
  UpdateProductRequest copyWith(
      {String? image,
      String? description,
      String? name,
      String? category,
      List<enums.UpdateProductRequestTags>? tags,
      String? position,
      int? price,
      int? tradePrice,
      int? priceBoard,
      int? farmerId,
      int? dateRegistration,
      enums.UpdateProductRequestUnit? unit,
      int? idProduct}) {
    return UpdateProductRequest(
        image: image ?? this.image,
        description: description ?? this.description,
        name: name ?? this.name,
        category: category ?? this.category,
        tags: tags ?? this.tags,
        position: position ?? this.position,
        price: price ?? this.price,
        tradePrice: tradePrice ?? this.tradePrice,
        priceBoard: priceBoard ?? this.priceBoard,
        farmerId: farmerId ?? this.farmerId,
        dateRegistration: dateRegistration ?? this.dateRegistration,
        unit: unit ?? this.unit,
        idProduct: idProduct ?? this.idProduct);
  }

  UpdateProductRequest copyWithWrapped(
      {Wrapped<String?>? image,
      Wrapped<String>? description,
      Wrapped<String>? name,
      Wrapped<String>? category,
      Wrapped<List<enums.UpdateProductRequestTags>>? tags,
      Wrapped<String>? position,
      Wrapped<int>? price,
      Wrapped<int>? tradePrice,
      Wrapped<int>? priceBoard,
      Wrapped<int>? farmerId,
      Wrapped<int>? dateRegistration,
      Wrapped<enums.UpdateProductRequestUnit>? unit,
      Wrapped<int>? idProduct}) {
    return UpdateProductRequest(
        image: (image != null ? image.value : this.image),
        description:
            (description != null ? description.value : this.description),
        name: (name != null ? name.value : this.name),
        category: (category != null ? category.value : this.category),
        tags: (tags != null ? tags.value : this.tags),
        position: (position != null ? position.value : this.position),
        price: (price != null ? price.value : this.price),
        tradePrice: (tradePrice != null ? tradePrice.value : this.tradePrice),
        priceBoard: (priceBoard != null ? priceBoard.value : this.priceBoard),
        farmerId: (farmerId != null ? farmerId.value : this.farmerId),
        dateRegistration: (dateRegistration != null
            ? dateRegistration.value
            : this.dateRegistration),
        unit: (unit != null ? unit.value : this.unit),
        idProduct: (idProduct != null ? idProduct.value : this.idProduct));
  }
}

@JsonSerializable(explicitToJson: true)
class Product {
  Product({
    required this.id,
    required this.image,
    required this.description,
    required this.name,
    required this.category,
    required this.tags,
    required this.position,
    required this.rating,
    required this.price,
    required this.tradePrice,
    required this.priceBoard,
    required this.idUser,
    required this.dateRegistration,
    required this.startSales,
    required this.endSales,
    required this.unit,
  });

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  static const toJsonFactory = _$ProductToJson;
  Map<String, dynamic> toJson() => _$ProductToJson(this);

  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'image')
  final String image;
  @JsonKey(name: 'description')
  final String description;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'category')
  final String category;
  @JsonKey(
    name: 'tags',
    toJson: productTagsListToJson,
    fromJson: productTagsListFromJson,
  )
  final List<enums.ProductTags> tags;
  @JsonKey(name: 'position')
  final String position;
  @JsonKey(name: 'rating')
  final double rating;
  @JsonKey(name: 'price')
  final int price;
  @JsonKey(name: 'tradePrice')
  final int tradePrice;
  @JsonKey(name: 'priceBoard')
  final int priceBoard;
  @JsonKey(name: 'idUser')
  final int idUser;
  @JsonKey(name: 'dateRegistration')
  final int dateRegistration;
  @JsonKey(name: 'startSales')
  final int startSales;
  @JsonKey(name: 'endSales')
  final int endSales;
  @JsonKey(
    name: 'unit',
    toJson: productUnitToJson,
    fromJson: productUnitFromJson,
  )
  final enums.ProductUnit unit;
  static const fromJsonFactory = _$ProductFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Product &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.tags, tags) ||
                const DeepCollectionEquality().equals(other.tags, tags)) &&
            (identical(other.position, position) ||
                const DeepCollectionEquality()
                    .equals(other.position, position)) &&
            (identical(other.rating, rating) ||
                const DeepCollectionEquality().equals(other.rating, rating)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.tradePrice, tradePrice) ||
                const DeepCollectionEquality()
                    .equals(other.tradePrice, tradePrice)) &&
            (identical(other.priceBoard, priceBoard) ||
                const DeepCollectionEquality()
                    .equals(other.priceBoard, priceBoard)) &&
            (identical(other.idUser, idUser) ||
                const DeepCollectionEquality().equals(other.idUser, idUser)) &&
            (identical(other.dateRegistration, dateRegistration) ||
                const DeepCollectionEquality()
                    .equals(other.dateRegistration, dateRegistration)) &&
            (identical(other.startSales, startSales) ||
                const DeepCollectionEquality()
                    .equals(other.startSales, startSales)) &&
            (identical(other.endSales, endSales) ||
                const DeepCollectionEquality()
                    .equals(other.endSales, endSales)) &&
            (identical(other.unit, unit) ||
                const DeepCollectionEquality().equals(other.unit, unit)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(tags) ^
      const DeepCollectionEquality().hash(position) ^
      const DeepCollectionEquality().hash(rating) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(tradePrice) ^
      const DeepCollectionEquality().hash(priceBoard) ^
      const DeepCollectionEquality().hash(idUser) ^
      const DeepCollectionEquality().hash(dateRegistration) ^
      const DeepCollectionEquality().hash(startSales) ^
      const DeepCollectionEquality().hash(endSales) ^
      const DeepCollectionEquality().hash(unit) ^
      runtimeType.hashCode;
}

extension $ProductExtension on Product {
  Product copyWith(
      {int? id,
      String? image,
      String? description,
      String? name,
      String? category,
      List<enums.ProductTags>? tags,
      String? position,
      double? rating,
      int? price,
      int? tradePrice,
      int? priceBoard,
      int? idUser,
      int? dateRegistration,
      int? startSales,
      int? endSales,
      enums.ProductUnit? unit}) {
    return Product(
        id: id ?? this.id,
        image: image ?? this.image,
        description: description ?? this.description,
        name: name ?? this.name,
        category: category ?? this.category,
        tags: tags ?? this.tags,
        position: position ?? this.position,
        rating: rating ?? this.rating,
        price: price ?? this.price,
        tradePrice: tradePrice ?? this.tradePrice,
        priceBoard: priceBoard ?? this.priceBoard,
        idUser: idUser ?? this.idUser,
        dateRegistration: dateRegistration ?? this.dateRegistration,
        startSales: startSales ?? this.startSales,
        endSales: endSales ?? this.endSales,
        unit: unit ?? this.unit);
  }

  Product copyWithWrapped(
      {Wrapped<int>? id,
      Wrapped<String>? image,
      Wrapped<String>? description,
      Wrapped<String>? name,
      Wrapped<String>? category,
      Wrapped<List<enums.ProductTags>>? tags,
      Wrapped<String>? position,
      Wrapped<double>? rating,
      Wrapped<int>? price,
      Wrapped<int>? tradePrice,
      Wrapped<int>? priceBoard,
      Wrapped<int>? idUser,
      Wrapped<int>? dateRegistration,
      Wrapped<int>? startSales,
      Wrapped<int>? endSales,
      Wrapped<enums.ProductUnit>? unit}) {
    return Product(
        id: (id != null ? id.value : this.id),
        image: (image != null ? image.value : this.image),
        description:
            (description != null ? description.value : this.description),
        name: (name != null ? name.value : this.name),
        category: (category != null ? category.value : this.category),
        tags: (tags != null ? tags.value : this.tags),
        position: (position != null ? position.value : this.position),
        rating: (rating != null ? rating.value : this.rating),
        price: (price != null ? price.value : this.price),
        tradePrice: (tradePrice != null ? tradePrice.value : this.tradePrice),
        priceBoard: (priceBoard != null ? priceBoard.value : this.priceBoard),
        idUser: (idUser != null ? idUser.value : this.idUser),
        dateRegistration: (dateRegistration != null
            ? dateRegistration.value
            : this.dateRegistration),
        startSales: (startSales != null ? startSales.value : this.startSales),
        endSales: (endSales != null ? endSales.value : this.endSales),
        unit: (unit != null ? unit.value : this.unit));
  }
}

@JsonSerializable(explicitToJson: true)
class AddProductRequest {
  AddProductRequest({
    this.image,
    required this.description,
    required this.name,
    required this.category,
    required this.tags,
    required this.position,
    required this.price,
    required this.tradePrice,
    required this.priceBoard,
    required this.farmerId,
    required this.dateRegistration,
    required this.unit,
  });

  factory AddProductRequest.fromJson(Map<String, dynamic> json) =>
      _$AddProductRequestFromJson(json);

  static const toJsonFactory = _$AddProductRequestToJson;
  Map<String, dynamic> toJson() => _$AddProductRequestToJson(this);

  @JsonKey(name: 'image')
  final String? image;
  @JsonKey(name: 'description')
  final String description;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'category')
  final String category;
  @JsonKey(
    name: 'tags',
    toJson: addProductRequestTagsListToJson,
    fromJson: addProductRequestTagsListFromJson,
  )
  final List<enums.AddProductRequestTags> tags;
  @JsonKey(name: 'position')
  final String position;
  @JsonKey(name: 'price')
  final int price;
  @JsonKey(name: 'tradePrice')
  final int tradePrice;
  @JsonKey(name: 'priceBoard')
  final int priceBoard;
  @JsonKey(name: 'farmerId')
  final int farmerId;
  @JsonKey(name: 'dateRegistration')
  final int dateRegistration;
  @JsonKey(
    name: 'unit',
    toJson: addProductRequestUnitToJson,
    fromJson: addProductRequestUnitFromJson,
  )
  final enums.AddProductRequestUnit unit;
  static const fromJsonFactory = _$AddProductRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddProductRequest &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.tags, tags) ||
                const DeepCollectionEquality().equals(other.tags, tags)) &&
            (identical(other.position, position) ||
                const DeepCollectionEquality()
                    .equals(other.position, position)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.tradePrice, tradePrice) ||
                const DeepCollectionEquality()
                    .equals(other.tradePrice, tradePrice)) &&
            (identical(other.priceBoard, priceBoard) ||
                const DeepCollectionEquality()
                    .equals(other.priceBoard, priceBoard)) &&
            (identical(other.farmerId, farmerId) ||
                const DeepCollectionEquality()
                    .equals(other.farmerId, farmerId)) &&
            (identical(other.dateRegistration, dateRegistration) ||
                const DeepCollectionEquality()
                    .equals(other.dateRegistration, dateRegistration)) &&
            (identical(other.unit, unit) ||
                const DeepCollectionEquality().equals(other.unit, unit)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(tags) ^
      const DeepCollectionEquality().hash(position) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(tradePrice) ^
      const DeepCollectionEquality().hash(priceBoard) ^
      const DeepCollectionEquality().hash(farmerId) ^
      const DeepCollectionEquality().hash(dateRegistration) ^
      const DeepCollectionEquality().hash(unit) ^
      runtimeType.hashCode;
}

extension $AddProductRequestExtension on AddProductRequest {
  AddProductRequest copyWith(
      {String? image,
      String? description,
      String? name,
      String? category,
      List<enums.AddProductRequestTags>? tags,
      String? position,
      int? price,
      int? tradePrice,
      int? priceBoard,
      int? farmerId,
      int? dateRegistration,
      enums.AddProductRequestUnit? unit}) {
    return AddProductRequest(
        image: image ?? this.image,
        description: description ?? this.description,
        name: name ?? this.name,
        category: category ?? this.category,
        tags: tags ?? this.tags,
        position: position ?? this.position,
        price: price ?? this.price,
        tradePrice: tradePrice ?? this.tradePrice,
        priceBoard: priceBoard ?? this.priceBoard,
        farmerId: farmerId ?? this.farmerId,
        dateRegistration: dateRegistration ?? this.dateRegistration,
        unit: unit ?? this.unit);
  }

  AddProductRequest copyWithWrapped(
      {Wrapped<String?>? image,
      Wrapped<String>? description,
      Wrapped<String>? name,
      Wrapped<String>? category,
      Wrapped<List<enums.AddProductRequestTags>>? tags,
      Wrapped<String>? position,
      Wrapped<int>? price,
      Wrapped<int>? tradePrice,
      Wrapped<int>? priceBoard,
      Wrapped<int>? farmerId,
      Wrapped<int>? dateRegistration,
      Wrapped<enums.AddProductRequestUnit>? unit}) {
    return AddProductRequest(
        image: (image != null ? image.value : this.image),
        description:
            (description != null ? description.value : this.description),
        name: (name != null ? name.value : this.name),
        category: (category != null ? category.value : this.category),
        tags: (tags != null ? tags.value : this.tags),
        position: (position != null ? position.value : this.position),
        price: (price != null ? price.value : this.price),
        tradePrice: (tradePrice != null ? tradePrice.value : this.tradePrice),
        priceBoard: (priceBoard != null ? priceBoard.value : this.priceBoard),
        farmerId: (farmerId != null ? farmerId.value : this.farmerId),
        dateRegistration: (dateRegistration != null
            ? dateRegistration.value
            : this.dateRegistration),
        unit: (unit != null ? unit.value : this.unit));
  }
}

@JsonSerializable(explicitToJson: true)
class SignUpRequest {
  SignUpRequest({
    required this.fullName,
    required this.bio,
    required this.email,
    required this.code,
    required this.password,
  });

  factory SignUpRequest.fromJson(Map<String, dynamic> json) =>
      _$SignUpRequestFromJson(json);

  static const toJsonFactory = _$SignUpRequestToJson;
  Map<String, dynamic> toJson() => _$SignUpRequestToJson(this);

  @JsonKey(name: 'fullName')
  final String fullName;
  @JsonKey(name: 'bio')
  final String bio;
  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'code')
  final String code;
  @JsonKey(name: 'password')
  final String password;
  static const fromJsonFactory = _$SignUpRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignUpRequest &&
            (identical(other.fullName, fullName) ||
                const DeepCollectionEquality()
                    .equals(other.fullName, fullName)) &&
            (identical(other.bio, bio) ||
                const DeepCollectionEquality().equals(other.bio, bio)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(fullName) ^
      const DeepCollectionEquality().hash(bio) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(password) ^
      runtimeType.hashCode;
}

extension $SignUpRequestExtension on SignUpRequest {
  SignUpRequest copyWith(
      {String? fullName,
      String? bio,
      String? email,
      String? code,
      String? password}) {
    return SignUpRequest(
        fullName: fullName ?? this.fullName,
        bio: bio ?? this.bio,
        email: email ?? this.email,
        code: code ?? this.code,
        password: password ?? this.password);
  }

  SignUpRequest copyWithWrapped(
      {Wrapped<String>? fullName,
      Wrapped<String>? bio,
      Wrapped<String>? email,
      Wrapped<String>? code,
      Wrapped<String>? password}) {
    return SignUpRequest(
        fullName: (fullName != null ? fullName.value : this.fullName),
        bio: (bio != null ? bio.value : this.bio),
        email: (email != null ? email.value : this.email),
        code: (code != null ? code.value : this.code),
        password: (password != null ? password.value : this.password));
  }
}

@JsonSerializable(explicitToJson: true)
class SendEmailRequest {
  SendEmailRequest({
    this.email,
  });

  factory SendEmailRequest.fromJson(Map<String, dynamic> json) =>
      _$SendEmailRequestFromJson(json);

  static const toJsonFactory = _$SendEmailRequestToJson;
  Map<String, dynamic> toJson() => _$SendEmailRequestToJson(this);

  @JsonKey(name: 'email')
  final String? email;
  static const fromJsonFactory = _$SendEmailRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SendEmailRequest &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(email) ^ runtimeType.hashCode;
}

extension $SendEmailRequestExtension on SendEmailRequest {
  SendEmailRequest copyWith({String? email}) {
    return SendEmailRequest(email: email ?? this.email);
  }

  SendEmailRequest copyWithWrapped({Wrapped<String?>? email}) {
    return SendEmailRequest(email: (email != null ? email.value : this.email));
  }
}

@JsonSerializable(explicitToJson: true)
class SignInRequest {
  SignInRequest({
    required this.email,
    required this.password,
  });

  factory SignInRequest.fromJson(Map<String, dynamic> json) =>
      _$SignInRequestFromJson(json);

  static const toJsonFactory = _$SignInRequestToJson;
  Map<String, dynamic> toJson() => _$SignInRequestToJson(this);

  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'password')
  final String password;
  static const fromJsonFactory = _$SignInRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignInRequest &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      runtimeType.hashCode;
}

extension $SignInRequestExtension on SignInRequest {
  SignInRequest copyWith({String? email, String? password}) {
    return SignInRequest(
        email: email ?? this.email, password: password ?? this.password);
  }

  SignInRequest copyWithWrapped(
      {Wrapped<String>? email, Wrapped<String>? password}) {
    return SignInRequest(
        email: (email != null ? email.value : this.email),
        password: (password != null ? password.value : this.password));
  }
}

@JsonSerializable(explicitToJson: true)
class UpdateUserRequest {
  UpdateUserRequest({
    required this.id,
    required this.fullName,
    required this.bio,
    this.email,
  });

  factory UpdateUserRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserRequestFromJson(json);

  static const toJsonFactory = _$UpdateUserRequestToJson;
  Map<String, dynamic> toJson() => _$UpdateUserRequestToJson(this);

  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'fullName')
  final String fullName;
  @JsonKey(name: 'bio')
  final String bio;
  @JsonKey(name: 'email')
  final String? email;
  static const fromJsonFactory = _$UpdateUserRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateUserRequest &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.fullName, fullName) ||
                const DeepCollectionEquality()
                    .equals(other.fullName, fullName)) &&
            (identical(other.bio, bio) ||
                const DeepCollectionEquality().equals(other.bio, bio)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(fullName) ^
      const DeepCollectionEquality().hash(bio) ^
      const DeepCollectionEquality().hash(email) ^
      runtimeType.hashCode;
}

extension $UpdateUserRequestExtension on UpdateUserRequest {
  UpdateUserRequest copyWith(
      {int? id, String? fullName, String? bio, String? email}) {
    return UpdateUserRequest(
        id: id ?? this.id,
        fullName: fullName ?? this.fullName,
        bio: bio ?? this.bio,
        email: email ?? this.email);
  }

  UpdateUserRequest copyWithWrapped(
      {Wrapped<int>? id,
      Wrapped<String>? fullName,
      Wrapped<String>? bio,
      Wrapped<String?>? email}) {
    return UpdateUserRequest(
        id: (id != null ? id.value : this.id),
        fullName: (fullName != null ? fullName.value : this.fullName),
        bio: (bio != null ? bio.value : this.bio),
        email: (email != null ? email.value : this.email));
  }
}

@JsonSerializable(explicitToJson: true)
class ChangeRoleRequest {
  ChangeRoleRequest({
    required this.role,
    required this.id,
  });

  factory ChangeRoleRequest.fromJson(Map<String, dynamic> json) =>
      _$ChangeRoleRequestFromJson(json);

  static const toJsonFactory = _$ChangeRoleRequestToJson;
  Map<String, dynamic> toJson() => _$ChangeRoleRequestToJson(this);

  @JsonKey(
    name: 'role',
    toJson: changeRoleRequestRoleListToJson,
    fromJson: changeRoleRequestRoleListFromJson,
  )
  final List<enums.ChangeRoleRequestRole> role;
  @JsonKey(name: 'id')
  final int id;
  static const fromJsonFactory = _$ChangeRoleRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChangeRoleRequest &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(role) ^
      const DeepCollectionEquality().hash(id) ^
      runtimeType.hashCode;
}

extension $ChangeRoleRequestExtension on ChangeRoleRequest {
  ChangeRoleRequest copyWith(
      {List<enums.ChangeRoleRequestRole>? role, int? id}) {
    return ChangeRoleRequest(role: role ?? this.role, id: id ?? this.id);
  }

  ChangeRoleRequest copyWithWrapped(
      {Wrapped<List<enums.ChangeRoleRequestRole>>? role, Wrapped<int>? id}) {
    return ChangeRoleRequest(
        role: (role != null ? role.value : this.role),
        id: (id != null ? id.value : this.id));
  }
}

@JsonSerializable(explicitToJson: true)
class UserInfoListResponse {
  UserInfoListResponse({
    required this.usersList,
  });

  factory UserInfoListResponse.fromJson(Map<String, dynamic> json) =>
      _$UserInfoListResponseFromJson(json);

  static const toJsonFactory = _$UserInfoListResponseToJson;
  Map<String, dynamic> toJson() => _$UserInfoListResponseToJson(this);

  @JsonKey(name: 'usersList', defaultValue: <UserInfo>[])
  final List<UserInfo> usersList;
  static const fromJsonFactory = _$UserInfoListResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserInfoListResponse &&
            (identical(other.usersList, usersList) ||
                const DeepCollectionEquality()
                    .equals(other.usersList, usersList)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(usersList) ^ runtimeType.hashCode;
}

extension $UserInfoListResponseExtension on UserInfoListResponse {
  UserInfoListResponse copyWith({List<UserInfo>? usersList}) {
    return UserInfoListResponse(usersList: usersList ?? this.usersList);
  }

  UserInfoListResponse copyWithWrapped({Wrapped<List<UserInfo>>? usersList}) {
    return UserInfoListResponse(
        usersList: (usersList != null ? usersList.value : this.usersList));
  }
}

String? addDeliveryRequestDeliveryTypeToJson(
    enums.AddDeliveryRequestDeliveryType? addDeliveryRequestDeliveryType) {
  return addDeliveryRequestDeliveryType?.value;
}

enums.AddDeliveryRequestDeliveryType addDeliveryRequestDeliveryTypeFromJson(
  Object? addDeliveryRequestDeliveryType, [
  enums.AddDeliveryRequestDeliveryType? defaultValue,
]) {
  return enums.AddDeliveryRequestDeliveryType.values
          .firstWhereOrNull((e) => e.value == addDeliveryRequestDeliveryType) ??
      defaultValue ??
      enums.AddDeliveryRequestDeliveryType.swaggerGeneratedUnknown;
}

List<String> addDeliveryRequestDeliveryTypeListToJson(
    List<enums.AddDeliveryRequestDeliveryType>?
        addDeliveryRequestDeliveryType) {
  if (addDeliveryRequestDeliveryType == null) {
    return [];
  }

  return addDeliveryRequestDeliveryType.map((e) => e.value!).toList();
}

List<enums.AddDeliveryRequestDeliveryType>
    addDeliveryRequestDeliveryTypeListFromJson(
  List? addDeliveryRequestDeliveryType, [
  List<enums.AddDeliveryRequestDeliveryType>? defaultValue,
]) {
  if (addDeliveryRequestDeliveryType == null) {
    return defaultValue ?? [];
  }

  return addDeliveryRequestDeliveryType
      .map((e) => addDeliveryRequestDeliveryTypeFromJson(e.toString()))
      .toList();
}

List<enums.AddDeliveryRequestDeliveryType>?
    addDeliveryRequestDeliveryTypeNullableListFromJson(
  List? addDeliveryRequestDeliveryType, [
  List<enums.AddDeliveryRequestDeliveryType>? defaultValue,
]) {
  if (addDeliveryRequestDeliveryType == null) {
    return defaultValue;
  }

  return addDeliveryRequestDeliveryType
      .map((e) => addDeliveryRequestDeliveryTypeFromJson(e.toString()))
      .toList();
}

String? deliveryDeliveryTypeToJson(
    enums.DeliveryDeliveryType? deliveryDeliveryType) {
  return deliveryDeliveryType?.value;
}

enums.DeliveryDeliveryType deliveryDeliveryTypeFromJson(
  Object? deliveryDeliveryType, [
  enums.DeliveryDeliveryType? defaultValue,
]) {
  return enums.DeliveryDeliveryType.values
          .firstWhereOrNull((e) => e.value == deliveryDeliveryType) ??
      defaultValue ??
      enums.DeliveryDeliveryType.swaggerGeneratedUnknown;
}

List<String> deliveryDeliveryTypeListToJson(
    List<enums.DeliveryDeliveryType>? deliveryDeliveryType) {
  if (deliveryDeliveryType == null) {
    return [];
  }

  return deliveryDeliveryType.map((e) => e.value!).toList();
}

List<enums.DeliveryDeliveryType> deliveryDeliveryTypeListFromJson(
  List? deliveryDeliveryType, [
  List<enums.DeliveryDeliveryType>? defaultValue,
]) {
  if (deliveryDeliveryType == null) {
    return defaultValue ?? [];
  }

  return deliveryDeliveryType
      .map((e) => deliveryDeliveryTypeFromJson(e.toString()))
      .toList();
}

List<enums.DeliveryDeliveryType>? deliveryDeliveryTypeNullableListFromJson(
  List? deliveryDeliveryType, [
  List<enums.DeliveryDeliveryType>? defaultValue,
]) {
  if (deliveryDeliveryType == null) {
    return defaultValue;
  }

  return deliveryDeliveryType
      .map((e) => deliveryDeliveryTypeFromJson(e.toString()))
      .toList();
}

String? deliveryUnitToJson(enums.DeliveryUnit? deliveryUnit) {
  return deliveryUnit?.value;
}

enums.DeliveryUnit deliveryUnitFromJson(
  Object? deliveryUnit, [
  enums.DeliveryUnit? defaultValue,
]) {
  return enums.DeliveryUnit.values
          .firstWhereOrNull((e) => e.value == deliveryUnit) ??
      defaultValue ??
      enums.DeliveryUnit.swaggerGeneratedUnknown;
}

List<String> deliveryUnitListToJson(List<enums.DeliveryUnit>? deliveryUnit) {
  if (deliveryUnit == null) {
    return [];
  }

  return deliveryUnit.map((e) => e.value!).toList();
}

List<enums.DeliveryUnit> deliveryUnitListFromJson(
  List? deliveryUnit, [
  List<enums.DeliveryUnit>? defaultValue,
]) {
  if (deliveryUnit == null) {
    return defaultValue ?? [];
  }

  return deliveryUnit.map((e) => deliveryUnitFromJson(e.toString())).toList();
}

List<enums.DeliveryUnit>? deliveryUnitNullableListFromJson(
  List? deliveryUnit, [
  List<enums.DeliveryUnit>? defaultValue,
]) {
  if (deliveryUnit == null) {
    return defaultValue;
  }

  return deliveryUnit.map((e) => deliveryUnitFromJson(e.toString())).toList();
}

String? userInfoRolesToJson(enums.UserInfoRoles? userInfoRoles) {
  return userInfoRoles?.value;
}

enums.UserInfoRoles userInfoRolesFromJson(
  Object? userInfoRoles, [
  enums.UserInfoRoles? defaultValue,
]) {
  return enums.UserInfoRoles.values
          .firstWhereOrNull((e) => e.value == userInfoRoles) ??
      defaultValue ??
      enums.UserInfoRoles.swaggerGeneratedUnknown;
}

List<String> userInfoRolesListToJson(List<enums.UserInfoRoles>? userInfoRoles) {
  if (userInfoRoles == null) {
    return [];
  }

  return userInfoRoles.map((e) => e.value!).toList();
}

List<enums.UserInfoRoles> userInfoRolesListFromJson(
  List? userInfoRoles, [
  List<enums.UserInfoRoles>? defaultValue,
]) {
  if (userInfoRoles == null) {
    return defaultValue ?? [];
  }

  return userInfoRoles.map((e) => userInfoRolesFromJson(e.toString())).toList();
}

List<enums.UserInfoRoles>? userInfoRolesNullableListFromJson(
  List? userInfoRoles, [
  List<enums.UserInfoRoles>? defaultValue,
]) {
  if (userInfoRoles == null) {
    return defaultValue;
  }

  return userInfoRoles.map((e) => userInfoRolesFromJson(e.toString())).toList();
}

String? updateProductRequestTagsToJson(
    enums.UpdateProductRequestTags? updateProductRequestTags) {
  return updateProductRequestTags?.value;
}

enums.UpdateProductRequestTags updateProductRequestTagsFromJson(
  Object? updateProductRequestTags, [
  enums.UpdateProductRequestTags? defaultValue,
]) {
  return enums.UpdateProductRequestTags.values
          .firstWhereOrNull((e) => e.value == updateProductRequestTags) ??
      defaultValue ??
      enums.UpdateProductRequestTags.swaggerGeneratedUnknown;
}

List<String> updateProductRequestTagsListToJson(
    List<enums.UpdateProductRequestTags>? updateProductRequestTags) {
  if (updateProductRequestTags == null) {
    return [];
  }

  return updateProductRequestTags.map((e) => e.value!).toList();
}

List<enums.UpdateProductRequestTags> updateProductRequestTagsListFromJson(
  List? updateProductRequestTags, [
  List<enums.UpdateProductRequestTags>? defaultValue,
]) {
  if (updateProductRequestTags == null) {
    return defaultValue ?? [];
  }

  return updateProductRequestTags
      .map((e) => updateProductRequestTagsFromJson(e.toString()))
      .toList();
}

List<enums.UpdateProductRequestTags>?
    updateProductRequestTagsNullableListFromJson(
  List? updateProductRequestTags, [
  List<enums.UpdateProductRequestTags>? defaultValue,
]) {
  if (updateProductRequestTags == null) {
    return defaultValue;
  }

  return updateProductRequestTags
      .map((e) => updateProductRequestTagsFromJson(e.toString()))
      .toList();
}

String? updateProductRequestUnitToJson(
    enums.UpdateProductRequestUnit? updateProductRequestUnit) {
  return updateProductRequestUnit?.value;
}

enums.UpdateProductRequestUnit updateProductRequestUnitFromJson(
  Object? updateProductRequestUnit, [
  enums.UpdateProductRequestUnit? defaultValue,
]) {
  return enums.UpdateProductRequestUnit.values
          .firstWhereOrNull((e) => e.value == updateProductRequestUnit) ??
      defaultValue ??
      enums.UpdateProductRequestUnit.swaggerGeneratedUnknown;
}

List<String> updateProductRequestUnitListToJson(
    List<enums.UpdateProductRequestUnit>? updateProductRequestUnit) {
  if (updateProductRequestUnit == null) {
    return [];
  }

  return updateProductRequestUnit.map((e) => e.value!).toList();
}

List<enums.UpdateProductRequestUnit> updateProductRequestUnitListFromJson(
  List? updateProductRequestUnit, [
  List<enums.UpdateProductRequestUnit>? defaultValue,
]) {
  if (updateProductRequestUnit == null) {
    return defaultValue ?? [];
  }

  return updateProductRequestUnit
      .map((e) => updateProductRequestUnitFromJson(e.toString()))
      .toList();
}

List<enums.UpdateProductRequestUnit>?
    updateProductRequestUnitNullableListFromJson(
  List? updateProductRequestUnit, [
  List<enums.UpdateProductRequestUnit>? defaultValue,
]) {
  if (updateProductRequestUnit == null) {
    return defaultValue;
  }

  return updateProductRequestUnit
      .map((e) => updateProductRequestUnitFromJson(e.toString()))
      .toList();
}

String? productTagsToJson(enums.ProductTags? productTags) {
  return productTags?.value;
}

enums.ProductTags productTagsFromJson(
  Object? productTags, [
  enums.ProductTags? defaultValue,
]) {
  return enums.ProductTags.values
          .firstWhereOrNull((e) => e.value == productTags) ??
      defaultValue ??
      enums.ProductTags.swaggerGeneratedUnknown;
}

List<String> productTagsListToJson(List<enums.ProductTags>? productTags) {
  if (productTags == null) {
    return [];
  }

  return productTags.map((e) => e.value!).toList();
}

List<enums.ProductTags> productTagsListFromJson(
  List? productTags, [
  List<enums.ProductTags>? defaultValue,
]) {
  if (productTags == null) {
    return defaultValue ?? [];
  }

  return productTags.map((e) => productTagsFromJson(e.toString())).toList();
}

List<enums.ProductTags>? productTagsNullableListFromJson(
  List? productTags, [
  List<enums.ProductTags>? defaultValue,
]) {
  if (productTags == null) {
    return defaultValue;
  }

  return productTags.map((e) => productTagsFromJson(e.toString())).toList();
}

String? productUnitToJson(enums.ProductUnit? productUnit) {
  return productUnit?.value;
}

enums.ProductUnit productUnitFromJson(
  Object? productUnit, [
  enums.ProductUnit? defaultValue,
]) {
  return enums.ProductUnit.values
          .firstWhereOrNull((e) => e.value == productUnit) ??
      defaultValue ??
      enums.ProductUnit.swaggerGeneratedUnknown;
}

List<String> productUnitListToJson(List<enums.ProductUnit>? productUnit) {
  if (productUnit == null) {
    return [];
  }

  return productUnit.map((e) => e.value!).toList();
}

List<enums.ProductUnit> productUnitListFromJson(
  List? productUnit, [
  List<enums.ProductUnit>? defaultValue,
]) {
  if (productUnit == null) {
    return defaultValue ?? [];
  }

  return productUnit.map((e) => productUnitFromJson(e.toString())).toList();
}

List<enums.ProductUnit>? productUnitNullableListFromJson(
  List? productUnit, [
  List<enums.ProductUnit>? defaultValue,
]) {
  if (productUnit == null) {
    return defaultValue;
  }

  return productUnit.map((e) => productUnitFromJson(e.toString())).toList();
}

String? addProductRequestTagsToJson(
    enums.AddProductRequestTags? addProductRequestTags) {
  return addProductRequestTags?.value;
}

enums.AddProductRequestTags addProductRequestTagsFromJson(
  Object? addProductRequestTags, [
  enums.AddProductRequestTags? defaultValue,
]) {
  return enums.AddProductRequestTags.values
          .firstWhereOrNull((e) => e.value == addProductRequestTags) ??
      defaultValue ??
      enums.AddProductRequestTags.swaggerGeneratedUnknown;
}

List<String> addProductRequestTagsListToJson(
    List<enums.AddProductRequestTags>? addProductRequestTags) {
  if (addProductRequestTags == null) {
    return [];
  }

  return addProductRequestTags.map((e) => e.value!).toList();
}

List<enums.AddProductRequestTags> addProductRequestTagsListFromJson(
  List? addProductRequestTags, [
  List<enums.AddProductRequestTags>? defaultValue,
]) {
  if (addProductRequestTags == null) {
    return defaultValue ?? [];
  }

  return addProductRequestTags
      .map((e) => addProductRequestTagsFromJson(e.toString()))
      .toList();
}

List<enums.AddProductRequestTags>? addProductRequestTagsNullableListFromJson(
  List? addProductRequestTags, [
  List<enums.AddProductRequestTags>? defaultValue,
]) {
  if (addProductRequestTags == null) {
    return defaultValue;
  }

  return addProductRequestTags
      .map((e) => addProductRequestTagsFromJson(e.toString()))
      .toList();
}

String? addProductRequestUnitToJson(
    enums.AddProductRequestUnit? addProductRequestUnit) {
  return addProductRequestUnit?.value;
}

enums.AddProductRequestUnit addProductRequestUnitFromJson(
  Object? addProductRequestUnit, [
  enums.AddProductRequestUnit? defaultValue,
]) {
  return enums.AddProductRequestUnit.values
          .firstWhereOrNull((e) => e.value == addProductRequestUnit) ??
      defaultValue ??
      enums.AddProductRequestUnit.swaggerGeneratedUnknown;
}

List<String> addProductRequestUnitListToJson(
    List<enums.AddProductRequestUnit>? addProductRequestUnit) {
  if (addProductRequestUnit == null) {
    return [];
  }

  return addProductRequestUnit.map((e) => e.value!).toList();
}

List<enums.AddProductRequestUnit> addProductRequestUnitListFromJson(
  List? addProductRequestUnit, [
  List<enums.AddProductRequestUnit>? defaultValue,
]) {
  if (addProductRequestUnit == null) {
    return defaultValue ?? [];
  }

  return addProductRequestUnit
      .map((e) => addProductRequestUnitFromJson(e.toString()))
      .toList();
}

List<enums.AddProductRequestUnit>? addProductRequestUnitNullableListFromJson(
  List? addProductRequestUnit, [
  List<enums.AddProductRequestUnit>? defaultValue,
]) {
  if (addProductRequestUnit == null) {
    return defaultValue;
  }

  return addProductRequestUnit
      .map((e) => addProductRequestUnitFromJson(e.toString()))
      .toList();
}

String? changeRoleRequestRoleToJson(
    enums.ChangeRoleRequestRole? changeRoleRequestRole) {
  return changeRoleRequestRole?.value;
}

enums.ChangeRoleRequestRole changeRoleRequestRoleFromJson(
  Object? changeRoleRequestRole, [
  enums.ChangeRoleRequestRole? defaultValue,
]) {
  return enums.ChangeRoleRequestRole.values
          .firstWhereOrNull((e) => e.value == changeRoleRequestRole) ??
      defaultValue ??
      enums.ChangeRoleRequestRole.swaggerGeneratedUnknown;
}

List<String> changeRoleRequestRoleListToJson(
    List<enums.ChangeRoleRequestRole>? changeRoleRequestRole) {
  if (changeRoleRequestRole == null) {
    return [];
  }

  return changeRoleRequestRole.map((e) => e.value!).toList();
}

List<enums.ChangeRoleRequestRole> changeRoleRequestRoleListFromJson(
  List? changeRoleRequestRole, [
  List<enums.ChangeRoleRequestRole>? defaultValue,
]) {
  if (changeRoleRequestRole == null) {
    return defaultValue ?? [];
  }

  return changeRoleRequestRole
      .map((e) => changeRoleRequestRoleFromJson(e.toString()))
      .toList();
}

List<enums.ChangeRoleRequestRole>? changeRoleRequestRoleNullableListFromJson(
  List? changeRoleRequestRole, [
  List<enums.ChangeRoleRequestRole>? defaultValue,
]) {
  if (changeRoleRequestRole == null) {
    return defaultValue;
  }

  return changeRoleRequestRole
      .map((e) => changeRoleRequestRoleFromJson(e.toString()))
      .toList();
}

typedef $JsonFactory<T> = T Function(Map<String, dynamic> json);

class $CustomJsonDecoder {
  $CustomJsonDecoder(this.factories);

  final Map<Type, $JsonFactory> factories;

  dynamic decode<T>(dynamic entity) {
    if (entity is Iterable) {
      return _decodeList<T>(entity);
    }

    if (entity is T) {
      return entity;
    }

    if (isTypeOf<T, Map>()) {
      return entity;
    }

    if (isTypeOf<T, Iterable>()) {
      return entity;
    }

    if (entity is Map<String, dynamic>) {
      return _decodeMap<T>(entity);
    }

    return entity;
  }

  T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonFactory = factories[T];
    if (jsonFactory == null || jsonFactory is! $JsonFactory<T>) {
      return throw "Could not find factory for type $T. Is '$T: $T.fromJsonFactory' included in the CustomJsonDecoder instance creation in bootstrapper.dart?";
    }

    return jsonFactory(values);
  }

  List<T> _decodeList<T>(Iterable values) =>
      values.where((v) => v != null).map<T>((v) => decode<T>(v) as T).toList();
}

class $JsonSerializableConverter extends chopper.JsonConverter {
  @override
  FutureOr<chopper.Response<ResultType>> convertResponse<ResultType, Item>(
      chopper.Response response) async {
    if (response.bodyString.isEmpty) {
      // In rare cases, when let's say 204 (no content) is returned -
      // we cannot decode the missing json with the result type specified
      return chopper.Response(response.base, null, error: response.error);
    }

    final jsonRes = await super.convertResponse(response);
    return jsonRes.copyWith<ResultType>(
        body: $jsonDecoder.decode<Item>(jsonRes.body) as ResultType);
  }
}

final $jsonDecoder = $CustomJsonDecoder(generatedMapping);

// ignore: unused_element
String? _dateToJson(DateTime? date) {
  if (date == null) {
    return null;
  }

  final year = date.year.toString();
  final month = date.month < 10 ? '0${date.month}' : date.month.toString();
  final day = date.day < 10 ? '0${date.day}' : date.day.toString();

  return '$year-$month-$day';
}

class Wrapped<T> {
  final T value;
  const Wrapped.value(this.value);
}
