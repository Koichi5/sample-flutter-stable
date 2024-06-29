// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_device_type_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getDeviceTypeByMediaQueryHash() =>
    r'f252e6063d6d222881716dd7135271a114913a8c';

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

/// See also [getDeviceTypeByMediaQuery].
@ProviderFor(getDeviceTypeByMediaQuery)
const getDeviceTypeByMediaQueryProvider = GetDeviceTypeByMediaQueryFamily();

/// See also [getDeviceTypeByMediaQuery].
class GetDeviceTypeByMediaQueryFamily extends Family<DeviceType> {
  /// See also [getDeviceTypeByMediaQuery].
  const GetDeviceTypeByMediaQueryFamily();

  /// See also [getDeviceTypeByMediaQuery].
  GetDeviceTypeByMediaQueryProvider call(
    MediaQueryData mediaQuery,
  ) {
    return GetDeviceTypeByMediaQueryProvider(
      mediaQuery,
    );
  }

  @override
  GetDeviceTypeByMediaQueryProvider getProviderOverride(
    covariant GetDeviceTypeByMediaQueryProvider provider,
  ) {
    return call(
      provider.mediaQuery,
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
  String? get name => r'getDeviceTypeByMediaQueryProvider';
}

/// See also [getDeviceTypeByMediaQuery].
class GetDeviceTypeByMediaQueryProvider
    extends AutoDisposeProvider<DeviceType> {
  /// See also [getDeviceTypeByMediaQuery].
  GetDeviceTypeByMediaQueryProvider(
    MediaQueryData mediaQuery,
  ) : this._internal(
          (ref) => getDeviceTypeByMediaQuery(
            ref as GetDeviceTypeByMediaQueryRef,
            mediaQuery,
          ),
          from: getDeviceTypeByMediaQueryProvider,
          name: r'getDeviceTypeByMediaQueryProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getDeviceTypeByMediaQueryHash,
          dependencies: GetDeviceTypeByMediaQueryFamily._dependencies,
          allTransitiveDependencies:
              GetDeviceTypeByMediaQueryFamily._allTransitiveDependencies,
          mediaQuery: mediaQuery,
        );

  GetDeviceTypeByMediaQueryProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.mediaQuery,
  }) : super.internal();

  final MediaQueryData mediaQuery;

  @override
  Override overrideWith(
    DeviceType Function(GetDeviceTypeByMediaQueryRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetDeviceTypeByMediaQueryProvider._internal(
        (ref) => create(ref as GetDeviceTypeByMediaQueryRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        mediaQuery: mediaQuery,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<DeviceType> createElement() {
    return _GetDeviceTypeByMediaQueryProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetDeviceTypeByMediaQueryProvider &&
        other.mediaQuery == mediaQuery;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, mediaQuery.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetDeviceTypeByMediaQueryRef on AutoDisposeProviderRef<DeviceType> {
  /// The parameter `mediaQuery` of this provider.
  MediaQueryData get mediaQuery;
}

class _GetDeviceTypeByMediaQueryProviderElement
    extends AutoDisposeProviderElement<DeviceType>
    with GetDeviceTypeByMediaQueryRef {
  _GetDeviceTypeByMediaQueryProviderElement(super.provider);

  @override
  MediaQueryData get mediaQuery =>
      (origin as GetDeviceTypeByMediaQueryProvider).mediaQuery;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
