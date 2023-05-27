// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$allProductsListHash() => r'24d924b050d5b4003f4a92a9479ef70fde5dd7c2';

/// See also [allProductsList].
@ProviderFor(allProductsList)
final allProductsListProvider =
    AutoDisposeFutureProvider<List<Product>>.internal(
  allProductsList,
  name: r'allProductsListProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$allProductsListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AllProductsListRef = AutoDisposeFutureProviderRef<List<Product>>;
String _$myProductsListHash() => r'1633b100a5941935569823f7c407aa4102a5c809';

/// See also [myProductsList].
@ProviderFor(myProductsList)
final myProductsListProvider =
    AutoDisposeFutureProvider<List<Product>>.internal(
  myProductsList,
  name: r'myProductsListProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$myProductsListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef MyProductsListRef = AutoDisposeFutureProviderRef<List<Product>>;
String _$cartProductsListHash() => r'919c6e690d3f845c837b041c1b7d6b235836b425';

/// See also [cartProductsList].
@ProviderFor(cartProductsList)
final cartProductsListProvider =
    AutoDisposeFutureProvider<List<Product>>.internal(
  cartProductsList,
  name: r'cartProductsListProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$cartProductsListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef CartProductsListRef = AutoDisposeFutureProviderRef<List<Product>>;
String _$productIsInCardHash() => r'421a80782c43a88e6c2f86752959f9d43821a783';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

typedef ProductIsInCardRef = AutoDisposeFutureProviderRef<bool>;

/// See also [productIsInCard].
@ProviderFor(productIsInCard)
const productIsInCardProvider = ProductIsInCardFamily();

/// See also [productIsInCard].
class ProductIsInCardFamily extends Family<AsyncValue<bool>> {
  /// See also [productIsInCard].
  const ProductIsInCardFamily();

  /// See also [productIsInCard].
  ProductIsInCardProvider call(
    int id,
  ) {
    return ProductIsInCardProvider(
      id,
    );
  }

  @override
  ProductIsInCardProvider getProviderOverride(
    covariant ProductIsInCardProvider provider,
  ) {
    return call(
      provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'productIsInCardProvider';
}

/// See also [productIsInCard].
class ProductIsInCardProvider extends AutoDisposeFutureProvider<bool> {
  /// See also [productIsInCard].
  ProductIsInCardProvider(
    this.id,
  ) : super.internal(
          (ref) => productIsInCard(
            ref,
            id,
          ),
          from: productIsInCardProvider,
          name: r'productIsInCardProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$productIsInCardHash,
          dependencies: ProductIsInCardFamily._dependencies,
          allTransitiveDependencies:
              ProductIsInCardFamily._allTransitiveDependencies,
        );

  final int id;

  @override
  bool operator ==(Object other) {
    return other is ProductIsInCardProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
