// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'code_generation_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$newStateHash() => r'94d9e7ca78390b657c824baa60e233a60e64a2ec';

/// See also [newState].
@ProviderFor(newState)
final newStateProvider = AutoDisposeProvider<String>.internal(
  newState,
  name: r'newStateProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$newStateHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef NewStateRef = AutoDisposeProviderRef<String>;
String _$newFutureHash() => r'f4d6a5f6c2ec5fa72b6a0566591e24eec50a5192';

/// See also [newFuture].
@ProviderFor(newFuture)
final newFutureProvider = AutoDisposeFutureProvider<String>.internal(
  newFuture,
  name: r'newFutureProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$newFutureHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef NewFutureRef = AutoDisposeFutureProviderRef<String>;
String _$gStateHash() => r'7ccdacb016fab2894413745b936f82987f9f72cf';

/// See also [gState].
@ProviderFor(gState)
final gStateProvider = AutoDisposeProvider<String>.internal(
  gState,
  name: r'gStateProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$gStateHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GStateRef = AutoDisposeProviderRef<String>;
String _$gStateFutureHash() => r'6fdc12fc073cddf0fffbed76825d7e1e2b83a577';

/// See also [gStateFuture].
@ProviderFor(gStateFuture)
final gStateFutureProvider = AutoDisposeFutureProvider<int>.internal(
  gStateFuture,
  name: r'gStateFutureProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$gStateFutureHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GStateFutureRef = AutoDisposeFutureProviderRef<int>;
String _$gStateFuture2Hash() => r'7e87666430f62746072d9bc5073c3a11f60ad45c';

/// See also [gStateFuture2].
@ProviderFor(gStateFuture2)
final gStateFuture2Provider = FutureProvider<int>.internal(
  gStateFuture2,
  name: r'gStateFuture2Provider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$gStateFuture2Hash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GStateFuture2Ref = FutureProviderRef<int>;
String _$newFamilyHash() => r'00cc3784574d298352ba1fac1157c3e658da8615';

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

/// See also [newFamily].
@ProviderFor(newFamily)
const newFamilyProvider = NewFamilyFamily();

/// See also [newFamily].
class NewFamilyFamily extends Family<int> {
  /// See also [newFamily].
  const NewFamilyFamily();

  /// See also [newFamily].
  NewFamilyProvider call({
    required int number1,
    required int number2,
  }) {
    return NewFamilyProvider(
      number1: number1,
      number2: number2,
    );
  }

  @override
  NewFamilyProvider getProviderOverride(
    covariant NewFamilyProvider provider,
  ) {
    return call(
      number1: provider.number1,
      number2: provider.number2,
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
  String? get name => r'newFamilyProvider';
}

/// See also [newFamily].
class NewFamilyProvider extends AutoDisposeProvider<int> {
  /// See also [newFamily].
  NewFamilyProvider({
    required int number1,
    required int number2,
  }) : this._internal(
          (ref) => newFamily(
            ref as NewFamilyRef,
            number1: number1,
            number2: number2,
          ),
          from: newFamilyProvider,
          name: r'newFamilyProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$newFamilyHash,
          dependencies: NewFamilyFamily._dependencies,
          allTransitiveDependencies: NewFamilyFamily._allTransitiveDependencies,
          number1: number1,
          number2: number2,
        );

  NewFamilyProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.number1,
    required this.number2,
  }) : super.internal();

  final int number1;
  final int number2;

  @override
  Override overrideWith(
    int Function(NewFamilyRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: NewFamilyProvider._internal(
        (ref) => create(ref as NewFamilyRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        number1: number1,
        number2: number2,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<int> createElement() {
    return _NewFamilyProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is NewFamilyProvider &&
        other.number1 == number1 &&
        other.number2 == number2;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, number1.hashCode);
    hash = _SystemHash.combine(hash, number2.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin NewFamilyRef on AutoDisposeProviderRef<int> {
  /// The parameter `number1` of this provider.
  int get number1;

  /// The parameter `number2` of this provider.
  int get number2;
}

class _NewFamilyProviderElement extends AutoDisposeProviderElement<int>
    with NewFamilyRef {
  _NewFamilyProviderElement(super.provider);

  @override
  int get number1 => (origin as NewFamilyProvider).number1;
  @override
  int get number2 => (origin as NewFamilyProvider).number2;
}

String _$newStateNotifierHash() => r'cc67d399ebd83fa20c9a33631c8112b8b8c4486c';

/// See also [NewStateNotifier].
@ProviderFor(NewStateNotifier)
final newStateNotifierProvider =
    AutoDisposeNotifierProvider<NewStateNotifier, int>.internal(
  NewStateNotifier.new,
  name: r'newStateNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$newStateNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$NewStateNotifier = AutoDisposeNotifier<int>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
