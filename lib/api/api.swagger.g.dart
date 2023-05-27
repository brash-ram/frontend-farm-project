// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TemplateRequest _$TemplateRequestFromJson(Map<String, dynamic> json) =>
    TemplateRequest();

Map<String, dynamic> _$TemplateRequestToJson(TemplateRequest instance) =>
    <String, dynamic>{};

Template _$TemplateFromJson(Map<String, dynamic> json) => Template(
      id: json['id'] as int,
    );

Map<String, dynamic> _$TemplateToJson(Template instance) => <String, dynamic>{
      'id': instance.id,
    };

TemplateResponse _$TemplateResponseFromJson(Map<String, dynamic> json) =>
    TemplateResponse();

Map<String, dynamic> _$TemplateResponseToJson(TemplateResponse instance) =>
    <String, dynamic>{};

UpdateProductRequest _$UpdateProductRequestFromJson(
        Map<String, dynamic> json) =>
    UpdateProductRequest(
      image: json['image'] as String?,
      description: json['description'] as String,
      name: json['name'] as String,
      category: json['category'] as String,
      tags: updateProductRequestTagsListFromJson(json['tags'] as List?),
      position: json['position'] as String,
      price: json['price'] as int,
      tradePrice: json['tradePrice'] as int,
      priceBoard: json['priceBoard'] as int,
      farmerId: json['farmerId'] as int,
      unit: updateProductRequestUnitFromJson(json['unit']),
      startSales: json['startSales'] as int,
      endSales: json['endSales'] as int,
      deliveryTypes: updateProductRequestDeliveryTypesListFromJson(
          json['deliveryTypes'] as List?),
      discount: json['discount'] as int,
      idProduct: json['idProduct'] as int,
    );

Map<String, dynamic> _$UpdateProductRequestToJson(
        UpdateProductRequest instance) =>
    <String, dynamic>{
      'image': instance.image,
      'description': instance.description,
      'name': instance.name,
      'category': instance.category,
      'tags': updateProductRequestTagsListToJson(instance.tags),
      'position': instance.position,
      'price': instance.price,
      'tradePrice': instance.tradePrice,
      'priceBoard': instance.priceBoard,
      'farmerId': instance.farmerId,
      'unit': updateProductRequestUnitToJson(instance.unit),
      'startSales': instance.startSales,
      'endSales': instance.endSales,
      'deliveryTypes':
          updateProductRequestDeliveryTypesListToJson(instance.deliveryTypes),
      'discount': instance.discount,
      'idProduct': instance.idProduct,
    };

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      id: json['id'] as int,
      image: json['image'] as String,
      description: json['description'] as String,
      name: json['name'] as String,
      category: json['category'] as String,
      tags: productTagsListFromJson(json['tags'] as List?),
      position: json['position'] as String,
      rating: (json['rating'] as num).toDouble(),
      price: json['price'] as int,
      tradePrice: json['tradePrice'] as int,
      priceBoard: json['priceBoard'] as int,
      idUser: json['idUser'] as int,
      dateRegistration: json['dateRegistration'] as int,
      startSales: json['startSales'] as int,
      endSales: json['endSales'] as int,
      unit: productUnitFromJson(json['unit']),
      discount: json['discount'] as int,
      deliveryTypes:
          productDeliveryTypesListFromJson(json['deliveryTypes'] as List?),
    );

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'description': instance.description,
      'name': instance.name,
      'category': instance.category,
      'tags': productTagsListToJson(instance.tags),
      'position': instance.position,
      'rating': instance.rating,
      'price': instance.price,
      'tradePrice': instance.tradePrice,
      'priceBoard': instance.priceBoard,
      'idUser': instance.idUser,
      'dateRegistration': instance.dateRegistration,
      'startSales': instance.startSales,
      'endSales': instance.endSales,
      'unit': productUnitToJson(instance.unit),
      'discount': instance.discount,
      'deliveryTypes': productDeliveryTypesListToJson(instance.deliveryTypes),
    };

AddProductRequest _$AddProductRequestFromJson(Map<String, dynamic> json) =>
    AddProductRequest(
      image: json['image'] as String?,
      description: json['description'] as String,
      name: json['name'] as String,
      category: json['category'] as String,
      tags: addProductRequestTagsListFromJson(json['tags'] as List?),
      position: json['position'] as String,
      price: json['price'] as int,
      tradePrice: json['tradePrice'] as int,
      priceBoard: json['priceBoard'] as int,
      farmerId: json['farmerId'] as int,
      unit: addProductRequestUnitFromJson(json['unit']),
      startSales: json['startSales'] as int,
      endSales: json['endSales'] as int,
      deliveryTypes: addProductRequestDeliveryTypesListFromJson(
          json['deliveryTypes'] as List?),
      discount: json['discount'] as int,
    );

Map<String, dynamic> _$AddProductRequestToJson(AddProductRequest instance) =>
    <String, dynamic>{
      'image': instance.image,
      'description': instance.description,
      'name': instance.name,
      'category': instance.category,
      'tags': addProductRequestTagsListToJson(instance.tags),
      'position': instance.position,
      'price': instance.price,
      'tradePrice': instance.tradePrice,
      'priceBoard': instance.priceBoard,
      'farmerId': instance.farmerId,
      'unit': addProductRequestUnitToJson(instance.unit),
      'startSales': instance.startSales,
      'endSales': instance.endSales,
      'deliveryTypes':
          addProductRequestDeliveryTypesListToJson(instance.deliveryTypes),
      'discount': instance.discount,
    };

AddDiscountRequest _$AddDiscountRequestFromJson(Map<String, dynamic> json) =>
    AddDiscountRequest(
      productId: json['productId'] as int,
      discount: json['discount'] as int,
    );

Map<String, dynamic> _$AddDiscountRequestToJson(AddDiscountRequest instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'discount': instance.discount,
    };

Mark _$MarkFromJson(Map<String, dynamic> json) => Mark(
      toId: json['toId'] as int,
      mark: json['mark'] as int,
    );

Map<String, dynamic> _$MarkToJson(Mark instance) => <String, dynamic>{
      'toId': instance.toId,
      'mark': instance.mark,
    };

UpdateDeliveryRequest _$UpdateDeliveryRequestFromJson(
        Map<String, dynamic> json) =>
    UpdateDeliveryRequest(
      id: json['id'] as int,
      deliveryType:
          updateDeliveryRequestDeliveryTypeFromJson(json['deliveryType']),
      date: json['date'] as int,
      adressFrom: json['adressFrom'] as String,
      adressTo: json['adressTo'] as String,
      period: json['period'] as int,
      productId: json['productId'] as int,
      farmerId: json['farmerId'] as int,
      consumerId: json['consumerId'] as int,
      paymentType:
          updateDeliveryRequestPaymentTypeFromJson(json['paymentType']),
    );

Map<String, dynamic> _$UpdateDeliveryRequestToJson(
        UpdateDeliveryRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'deliveryType':
          updateDeliveryRequestDeliveryTypeToJson(instance.deliveryType),
      'date': instance.date,
      'adressFrom': instance.adressFrom,
      'adressTo': instance.adressTo,
      'period': instance.period,
      'productId': instance.productId,
      'farmerId': instance.farmerId,
      'consumerId': instance.consumerId,
      'paymentType':
          updateDeliveryRequestPaymentTypeToJson(instance.paymentType),
    };

Delivery _$DeliveryFromJson(Map<String, dynamic> json) => Delivery(
      id: json['id'] as int,
      deliveryType: deliveryDeliveryTypeFromJson(json['deliveryType']),
      date: json['date'] as int,
      adressFrom: json['adressFrom'] as String,
      adressTo: json['adressTo'] as String,
      period: json['period'] as int,
      product: Product.fromJson(json['product'] as Map<String, dynamic>),
      consumerId: json['consumerId'] as int,
      farmerId: json['farmerId'] as int,
      paymentType: deliveryPaymentTypeFromJson(json['paymentType']),
      count: json['count'] as int,
    );

Map<String, dynamic> _$DeliveryToJson(Delivery instance) => <String, dynamic>{
      'id': instance.id,
      'deliveryType': deliveryDeliveryTypeToJson(instance.deliveryType),
      'date': instance.date,
      'adressFrom': instance.adressFrom,
      'adressTo': instance.adressTo,
      'period': instance.period,
      'product': instance.product.toJson(),
      'consumerId': instance.consumerId,
      'farmerId': instance.farmerId,
      'paymentType': deliveryPaymentTypeToJson(instance.paymentType),
      'count': instance.count,
    };

AddDeliveryRequest _$AddDeliveryRequestFromJson(Map<String, dynamic> json) =>
    AddDeliveryRequest(
      deliveryType:
          addDeliveryRequestDeliveryTypeFromJson(json['deliveryType']),
      date: json['date'] as int,
      adressFrom: json['adressFrom'] as String,
      adressTo: json['adressTo'] as String,
      period: json['period'] as int,
      productId: json['productId'] as int,
      farmerId: json['farmerId'] as int,
      consumerId: json['consumerId'] as int,
      paymentType: addDeliveryRequestPaymentTypeFromJson(json['paymentType']),
      count: json['count'] as int,
    );

Map<String, dynamic> _$AddDeliveryRequestToJson(AddDeliveryRequest instance) =>
    <String, dynamic>{
      'deliveryType':
          addDeliveryRequestDeliveryTypeToJson(instance.deliveryType),
      'date': instance.date,
      'adressFrom': instance.adressFrom,
      'adressTo': instance.adressTo,
      'period': instance.period,
      'productId': instance.productId,
      'farmerId': instance.farmerId,
      'consumerId': instance.consumerId,
      'paymentType': addDeliveryRequestPaymentTypeToJson(instance.paymentType),
      'count': instance.count,
    };

UpdateCourseRequest _$UpdateCourseRequestFromJson(Map<String, dynamic> json) =>
    UpdateCourseRequest(
      id: json['id'] as int,
      link: json['link'] as String,
      header: json['header'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$UpdateCourseRequestToJson(
        UpdateCourseRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'link': instance.link,
      'header': instance.header,
      'description': instance.description,
    };

Course _$CourseFromJson(Map<String, dynamic> json) => Course(
      id: json['id'] as int,
      link: json['link'] as String,
      header: json['header'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$CourseToJson(Course instance) => <String, dynamic>{
      'id': instance.id,
      'link': instance.link,
      'header': instance.header,
      'description': instance.description,
    };

AddCourseRequest _$AddCourseRequestFromJson(Map<String, dynamic> json) =>
    AddCourseRequest(
      link: json['link'] as String,
      header: json['header'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$AddCourseRequestToJson(AddCourseRequest instance) =>
    <String, dynamic>{
      'link': instance.link,
      'header': instance.header,
      'description': instance.description,
    };

Cart _$CartFromJson(Map<String, dynamic> json) => Cart(
      id: json['id'] as int,
      owner: UserInfo.fromJson(json['owner'] as Map<String, dynamic>),
      products: (json['products'] as List<dynamic>?)
              ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$CartToJson(Cart instance) => <String, dynamic>{
      'id': instance.id,
      'owner': instance.owner.toJson(),
      'products': instance.products.map((e) => e.toJson()).toList(),
    };

UserInfo _$UserInfoFromJson(Map<String, dynamic> json) => UserInfo(
      fullName: json['fullName'] as String,
      bio: json['bio'] as String,
      email: json['email'] as String,
      id: json['id'] as int,
      roles: userInfoRolesListFromJson(json['roles'] as List?),
      dateRegistration: json['dateRegistration'] as int,
      rating: (json['rating'] as num).toDouble(),
    );

Map<String, dynamic> _$UserInfoToJson(UserInfo instance) => <String, dynamic>{
      'fullName': instance.fullName,
      'bio': instance.bio,
      'email': instance.email,
      'id': instance.id,
      'roles': userInfoRolesListToJson(instance.roles),
      'dateRegistration': instance.dateRegistration,
      'rating': instance.rating,
    };

SignUpRequest _$SignUpRequestFromJson(Map<String, dynamic> json) =>
    SignUpRequest(
      fullName: json['fullName'] as String,
      bio: json['bio'] as String,
      email: json['email'] as String,
      code: json['code'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$SignUpRequestToJson(SignUpRequest instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'bio': instance.bio,
      'email': instance.email,
      'code': instance.code,
      'password': instance.password,
    };

SendEmailRequest _$SendEmailRequestFromJson(Map<String, dynamic> json) =>
    SendEmailRequest(
      email: json['email'] as String?,
    );

Map<String, dynamic> _$SendEmailRequestToJson(SendEmailRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
    };

SignInRequest _$SignInRequestFromJson(Map<String, dynamic> json) =>
    SignInRequest(
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$SignInRequestToJson(SignInRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };

UpdateUserRequest _$UpdateUserRequestFromJson(Map<String, dynamic> json) =>
    UpdateUserRequest(
      id: json['id'] as int,
      fullName: json['fullName'] as String,
      bio: json['bio'] as String,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$UpdateUserRequestToJson(UpdateUserRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullName': instance.fullName,
      'bio': instance.bio,
      'email': instance.email,
    };

ChangeRoleRequest _$ChangeRoleRequestFromJson(Map<String, dynamic> json) =>
    ChangeRoleRequest(
      role: changeRoleRequestRoleListFromJson(json['role'] as List?),
      id: json['id'] as int,
    );

Map<String, dynamic> _$ChangeRoleRequestToJson(ChangeRoleRequest instance) =>
    <String, dynamic>{
      'role': changeRoleRequestRoleListToJson(instance.role),
      'id': instance.id,
    };

ChangePasswordRequest _$ChangePasswordRequestFromJson(
        Map<String, dynamic> json) =>
    ChangePasswordRequest(
      id: json['id'] as int,
      password: json['password'] as String,
    );

Map<String, dynamic> _$ChangePasswordRequestToJson(
        ChangePasswordRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'password': instance.password,
    };

SignUpCustomRequest _$SignUpCustomRequestFromJson(Map<String, dynamic> json) =>
    SignUpCustomRequest(
      fullName: json['fullName'] as String,
      bio: json['bio'] as String,
      email: json['email'] as String,
      code: json['code'] as String,
      password: json['password'] as String,
      dateRegistration: json['dateRegistration'] as int,
    );

Map<String, dynamic> _$SignUpCustomRequestToJson(
        SignUpCustomRequest instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'bio': instance.bio,
      'email': instance.email,
      'code': instance.code,
      'password': instance.password,
      'dateRegistration': instance.dateRegistration,
    };

UserInfoListResponse _$UserInfoListResponseFromJson(
        Map<String, dynamic> json) =>
    UserInfoListResponse(
      usersList: (json['usersList'] as List<dynamic>?)
              ?.map((e) => UserInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$UserInfoListResponseToJson(
        UserInfoListResponse instance) =>
    <String, dynamic>{
      'usersList': instance.usersList.map((e) => e.toJson()).toList(),
    };
