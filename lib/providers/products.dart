import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../api.dart';
import 'user.dart';

part 'products.g.dart';


@riverpod
Future<List<Product>> allProductsList(AllProductsListRef ref) async {
  final response = await apiClient.apiProductAllGet();
  if (!response.isSuccessful)
    throw Exception(response.error);
  if (response.body case final products?)
    return products;
  throw Exception('Failed to get products.');
}

@riverpod
Future<List<Product>> myProductsList(MyProductsListRef ref) async {
  final response = await apiClient.apiProductMyPost();
  if (!response.isSuccessful)
    throw Exception(response.error);
  if (response.body case final products?)
    return products;
  throw Exception('Failed to get products.');
}

@riverpod
Future<List<Product>> cartProductsList(CartProductsListRef ref) async {
  final user = await ref.watch(userProvider.future);
  if (user == null)
    throw Exception('Failed to get products.');
  final response = await apiClient.apiCartMyGet();
  if (!response.isSuccessful)
    throw Exception(response.error);
  if (response.body case final products?)
    return products.products;
  throw Exception('Failed to get products.');
}

@riverpod
Future<bool> productIsInCard(ProductIsInCardRef ref, int id) async {
  final user = await ref.watch(userProvider.future);
  if (user == null)
    return false;
  final response = await apiClient.apiCartProductExistGet(
    userId: user.id,
    productId: id,
  );
  return response.body ?? false;
}
