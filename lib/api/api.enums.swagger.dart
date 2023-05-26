import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';

enum AddDeliveryRequestDeliveryType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('PICKUP')
  pickup('PICKUP'),
  @JsonValue('FARMER_DELIVERY')
  farmerDelivery('FARMER_DELIVERY'),
  @JsonValue('OUR_DELIVERY')
  ourDelivery('OUR_DELIVERY');

  final String? value;

  const AddDeliveryRequestDeliveryType(this.value);
}

enum DeliveryDeliveryType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('PICKUP')
  pickup('PICKUP'),
  @JsonValue('FARMER_DELIVERY')
  farmerDelivery('FARMER_DELIVERY'),
  @JsonValue('OUR_DELIVERY')
  ourDelivery('OUR_DELIVERY');

  final String? value;

  const DeliveryDeliveryType(this.value);
}

enum DeliveryUnit {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('KG')
  kg('KG'),
  @JsonValue('PIECES')
  pieces('PIECES');

  final String? value;

  const DeliveryUnit(this.value);
}

enum UserInfoRoles {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('ADMIN')
  admin('ADMIN'),
  @JsonValue('USER')
  user('USER'),
  @JsonValue('FARMER')
  farmer('FARMER');

  final String? value;

  const UserInfoRoles(this.value);
}

enum UpdateProductRequestTags {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('POST')
  post('POST'),
  @JsonValue('EKO')
  eko('EKO'),
  @JsonValue('HALAL')
  halal('HALAL');

  final String? value;

  const UpdateProductRequestTags(this.value);
}

enum UpdateProductRequestUnit {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('KG')
  kg('KG'),
  @JsonValue('PIECES')
  pieces('PIECES');

  final String? value;

  const UpdateProductRequestUnit(this.value);
}

enum ProductTags {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('POST')
  post('POST'),
  @JsonValue('EKO')
  eko('EKO'),
  @JsonValue('HALAL')
  halal('HALAL');

  final String? value;

  const ProductTags(this.value);
}

enum ProductUnit {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('KG')
  kg('KG'),
  @JsonValue('PIECES')
  pieces('PIECES');

  final String? value;

  const ProductUnit(this.value);
}

enum AddProductRequestTags {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('POST')
  post('POST'),
  @JsonValue('EKO')
  eko('EKO'),
  @JsonValue('HALAL')
  halal('HALAL');

  final String? value;

  const AddProductRequestTags(this.value);
}

enum AddProductRequestUnit {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('KG')
  kg('KG'),
  @JsonValue('PIECES')
  pieces('PIECES');

  final String? value;

  const AddProductRequestUnit(this.value);
}

enum ChangeRoleRequestRole {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('ADMIN')
  admin('ADMIN'),
  @JsonValue('USER')
  user('USER'),
  @JsonValue('FARMER')
  farmer('FARMER');

  final String? value;

  const ChangeRoleRequestRole(this.value);
}
