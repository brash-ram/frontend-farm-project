import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../api.dart';

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
