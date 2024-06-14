// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductsState {
  String get user => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String user) loading,
    required TResult Function(String user) failure,
    required TResult Function(List<Product> products, String user) products,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String user)? loading,
    TResult? Function(String user)? failure,
    TResult? Function(List<Product> products, String user)? products,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String user)? loading,
    TResult Function(String user)? failure,
    TResult Function(List<Product> products, String user)? products,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductsStateLoading value) loading,
    required TResult Function(ProductsStateFailure value) failure,
    required TResult Function(ProductsStateProducts value) products,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductsStateLoading value)? loading,
    TResult? Function(ProductsStateFailure value)? failure,
    TResult? Function(ProductsStateProducts value)? products,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductsStateLoading value)? loading,
    TResult Function(ProductsStateFailure value)? failure,
    TResult Function(ProductsStateProducts value)? products,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductsStateCopyWith<ProductsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsStateCopyWith<$Res> {
  factory $ProductsStateCopyWith(
          ProductsState value, $Res Function(ProductsState) then) =
      _$ProductsStateCopyWithImpl<$Res, ProductsState>;
  @useResult
  $Res call({String user});
}

/// @nodoc
class _$ProductsStateCopyWithImpl<$Res, $Val extends ProductsState>
    implements $ProductsStateCopyWith<$Res> {
  _$ProductsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductsStateLoadingImplCopyWith<$Res>
    implements $ProductsStateCopyWith<$Res> {
  factory _$$ProductsStateLoadingImplCopyWith(_$ProductsStateLoadingImpl value,
          $Res Function(_$ProductsStateLoadingImpl) then) =
      __$$ProductsStateLoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String user});
}

/// @nodoc
class __$$ProductsStateLoadingImplCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res, _$ProductsStateLoadingImpl>
    implements _$$ProductsStateLoadingImplCopyWith<$Res> {
  __$$ProductsStateLoadingImplCopyWithImpl(_$ProductsStateLoadingImpl _value,
      $Res Function(_$ProductsStateLoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$ProductsStateLoadingImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProductsStateLoadingImpl implements ProductsStateLoading {
  const _$ProductsStateLoadingImpl(this.user);

  @override
  final String user;

  @override
  String toString() {
    return 'ProductsState.loading(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsStateLoadingImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsStateLoadingImplCopyWith<_$ProductsStateLoadingImpl>
      get copyWith =>
          __$$ProductsStateLoadingImplCopyWithImpl<_$ProductsStateLoadingImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String user) loading,
    required TResult Function(String user) failure,
    required TResult Function(List<Product> products, String user) products,
  }) {
    return loading(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String user)? loading,
    TResult? Function(String user)? failure,
    TResult? Function(List<Product> products, String user)? products,
  }) {
    return loading?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String user)? loading,
    TResult Function(String user)? failure,
    TResult Function(List<Product> products, String user)? products,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductsStateLoading value) loading,
    required TResult Function(ProductsStateFailure value) failure,
    required TResult Function(ProductsStateProducts value) products,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductsStateLoading value)? loading,
    TResult? Function(ProductsStateFailure value)? failure,
    TResult? Function(ProductsStateProducts value)? products,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductsStateLoading value)? loading,
    TResult Function(ProductsStateFailure value)? failure,
    TResult Function(ProductsStateProducts value)? products,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ProductsStateLoading implements ProductsState {
  const factory ProductsStateLoading(final String user) =
      _$ProductsStateLoadingImpl;

  @override
  String get user;
  @override
  @JsonKey(ignore: true)
  _$$ProductsStateLoadingImplCopyWith<_$ProductsStateLoadingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProductsStateFailureImplCopyWith<$Res>
    implements $ProductsStateCopyWith<$Res> {
  factory _$$ProductsStateFailureImplCopyWith(_$ProductsStateFailureImpl value,
          $Res Function(_$ProductsStateFailureImpl) then) =
      __$$ProductsStateFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String user});
}

/// @nodoc
class __$$ProductsStateFailureImplCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res, _$ProductsStateFailureImpl>
    implements _$$ProductsStateFailureImplCopyWith<$Res> {
  __$$ProductsStateFailureImplCopyWithImpl(_$ProductsStateFailureImpl _value,
      $Res Function(_$ProductsStateFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$ProductsStateFailureImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProductsStateFailureImpl implements ProductsStateFailure {
  const _$ProductsStateFailureImpl(this.user);

  @override
  final String user;

  @override
  String toString() {
    return 'ProductsState.failure(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsStateFailureImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsStateFailureImplCopyWith<_$ProductsStateFailureImpl>
      get copyWith =>
          __$$ProductsStateFailureImplCopyWithImpl<_$ProductsStateFailureImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String user) loading,
    required TResult Function(String user) failure,
    required TResult Function(List<Product> products, String user) products,
  }) {
    return failure(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String user)? loading,
    TResult? Function(String user)? failure,
    TResult? Function(List<Product> products, String user)? products,
  }) {
    return failure?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String user)? loading,
    TResult Function(String user)? failure,
    TResult Function(List<Product> products, String user)? products,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductsStateLoading value) loading,
    required TResult Function(ProductsStateFailure value) failure,
    required TResult Function(ProductsStateProducts value) products,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductsStateLoading value)? loading,
    TResult? Function(ProductsStateFailure value)? failure,
    TResult? Function(ProductsStateProducts value)? products,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductsStateLoading value)? loading,
    TResult Function(ProductsStateFailure value)? failure,
    TResult Function(ProductsStateProducts value)? products,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class ProductsStateFailure implements ProductsState {
  const factory ProductsStateFailure(final String user) =
      _$ProductsStateFailureImpl;

  @override
  String get user;
  @override
  @JsonKey(ignore: true)
  _$$ProductsStateFailureImplCopyWith<_$ProductsStateFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProductsStateProductsImplCopyWith<$Res>
    implements $ProductsStateCopyWith<$Res> {
  factory _$$ProductsStateProductsImplCopyWith(
          _$ProductsStateProductsImpl value,
          $Res Function(_$ProductsStateProductsImpl) then) =
      __$$ProductsStateProductsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Product> products, String user});
}

/// @nodoc
class __$$ProductsStateProductsImplCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res, _$ProductsStateProductsImpl>
    implements _$$ProductsStateProductsImplCopyWith<$Res> {
  __$$ProductsStateProductsImplCopyWithImpl(_$ProductsStateProductsImpl _value,
      $Res Function(_$ProductsStateProductsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? user = null,
  }) {
    return _then(_$ProductsStateProductsImpl(
      null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProductsStateProductsImpl implements ProductsStateProducts {
  const _$ProductsStateProductsImpl(final List<Product> products, this.user)
      : _products = products;

  final List<Product> _products;
  @override
  List<Product> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  final String user;

  @override
  String toString() {
    return 'ProductsState.products(products: $products, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsStateProductsImpl &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_products), user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsStateProductsImplCopyWith<_$ProductsStateProductsImpl>
      get copyWith => __$$ProductsStateProductsImplCopyWithImpl<
          _$ProductsStateProductsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String user) loading,
    required TResult Function(String user) failure,
    required TResult Function(List<Product> products, String user) products,
  }) {
    return products(this.products, user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String user)? loading,
    TResult? Function(String user)? failure,
    TResult? Function(List<Product> products, String user)? products,
  }) {
    return products?.call(this.products, user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String user)? loading,
    TResult Function(String user)? failure,
    TResult Function(List<Product> products, String user)? products,
    required TResult orElse(),
  }) {
    if (products != null) {
      return products(this.products, user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductsStateLoading value) loading,
    required TResult Function(ProductsStateFailure value) failure,
    required TResult Function(ProductsStateProducts value) products,
  }) {
    return products(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductsStateLoading value)? loading,
    TResult? Function(ProductsStateFailure value)? failure,
    TResult? Function(ProductsStateProducts value)? products,
  }) {
    return products?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductsStateLoading value)? loading,
    TResult Function(ProductsStateFailure value)? failure,
    TResult Function(ProductsStateProducts value)? products,
    required TResult orElse(),
  }) {
    if (products != null) {
      return products(this);
    }
    return orElse();
  }
}

abstract class ProductsStateProducts implements ProductsState {
  const factory ProductsStateProducts(
          final List<Product> products, final String user) =
      _$ProductsStateProductsImpl;

  List<Product> get products;
  @override
  String get user;
  @override
  @JsonKey(ignore: true)
  _$$ProductsStateProductsImplCopyWith<_$ProductsStateProductsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
