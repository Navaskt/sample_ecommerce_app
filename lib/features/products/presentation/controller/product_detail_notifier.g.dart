// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_detail_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$productDetailNotifierHash() =>
    r'9d5aa8b323ae55fb7fed666552c19a414754789e';

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

abstract class _$ProductDetailNotifier
    extends BuildlessAutoDisposeNotifier<ProductDetailState> {
  late final int id;

  ProductDetailState build(int id);
}

/// See also [ProductDetailNotifier].
@ProviderFor(ProductDetailNotifier)
const productDetailNotifierProvider = ProductDetailNotifierFamily();

/// See also [ProductDetailNotifier].
class ProductDetailNotifierFamily extends Family<ProductDetailState> {
  /// See also [ProductDetailNotifier].
  const ProductDetailNotifierFamily();

  /// See also [ProductDetailNotifier].
  ProductDetailNotifierProvider call(int id) {
    return ProductDetailNotifierProvider(id);
  }

  @override
  ProductDetailNotifierProvider getProviderOverride(
    covariant ProductDetailNotifierProvider provider,
  ) {
    return call(provider.id);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'productDetailNotifierProvider';
}

/// See also [ProductDetailNotifier].
class ProductDetailNotifierProvider
    extends
        AutoDisposeNotifierProviderImpl<
          ProductDetailNotifier,
          ProductDetailState
        > {
  /// See also [ProductDetailNotifier].
  ProductDetailNotifierProvider(int id)
    : this._internal(
        () => ProductDetailNotifier()..id = id,
        from: productDetailNotifierProvider,
        name: r'productDetailNotifierProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$productDetailNotifierHash,
        dependencies: ProductDetailNotifierFamily._dependencies,
        allTransitiveDependencies:
            ProductDetailNotifierFamily._allTransitiveDependencies,
        id: id,
      );

  ProductDetailNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final int id;

  @override
  ProductDetailState runNotifierBuild(
    covariant ProductDetailNotifier notifier,
  ) {
    return notifier.build(id);
  }

  @override
  Override overrideWith(ProductDetailNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: ProductDetailNotifierProvider._internal(
        () => create()..id = id,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<ProductDetailNotifier, ProductDetailState>
  createElement() {
    return _ProductDetailNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ProductDetailNotifierProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ProductDetailNotifierRef
    on AutoDisposeNotifierProviderRef<ProductDetailState> {
  /// The parameter `id` of this provider.
  int get id;
}

class _ProductDetailNotifierProviderElement
    extends
        AutoDisposeNotifierProviderElement<
          ProductDetailNotifier,
          ProductDetailState
        >
    with ProductDetailNotifierRef {
  _ProductDetailNotifierProviderElement(super.provider);

  @override
  int get id => (origin as ProductDetailNotifierProvider).id;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
