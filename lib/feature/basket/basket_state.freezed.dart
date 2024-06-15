// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'basket_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BasketState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Object e) failure,
    required TResult Function(Object e, Map<Product, int> pasketList)
        basketError,
    required TResult Function(Map<Product, int> pasketList) products,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Object e)? failure,
    TResult? Function(Object e, Map<Product, int> pasketList)? basketError,
    TResult? Function(Map<Product, int> pasketList)? products,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Object e)? failure,
    TResult Function(Object e, Map<Product, int> pasketList)? basketError,
    TResult Function(Map<Product, int> pasketList)? products,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BasketStateLoading value) loading,
    required TResult Function(BasketStateFailure value) failure,
    required TResult Function(BasketStateBasketError value) basketError,
    required TResult Function(BasketStateProducts value) products,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BasketStateLoading value)? loading,
    TResult? Function(BasketStateFailure value)? failure,
    TResult? Function(BasketStateBasketError value)? basketError,
    TResult? Function(BasketStateProducts value)? products,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BasketStateLoading value)? loading,
    TResult Function(BasketStateFailure value)? failure,
    TResult Function(BasketStateBasketError value)? basketError,
    TResult Function(BasketStateProducts value)? products,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasketStateCopyWith<$Res> {
  factory $BasketStateCopyWith(
          BasketState value, $Res Function(BasketState) then) =
      _$BasketStateCopyWithImpl<$Res, BasketState>;
}

/// @nodoc
class _$BasketStateCopyWithImpl<$Res, $Val extends BasketState>
    implements $BasketStateCopyWith<$Res> {
  _$BasketStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$BasketStateLoadingImplCopyWith<$Res> {
  factory _$$BasketStateLoadingImplCopyWith(_$BasketStateLoadingImpl value,
          $Res Function(_$BasketStateLoadingImpl) then) =
      __$$BasketStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BasketStateLoadingImplCopyWithImpl<$Res>
    extends _$BasketStateCopyWithImpl<$Res, _$BasketStateLoadingImpl>
    implements _$$BasketStateLoadingImplCopyWith<$Res> {
  __$$BasketStateLoadingImplCopyWithImpl(_$BasketStateLoadingImpl _value,
      $Res Function(_$BasketStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BasketStateLoadingImpl implements BasketStateLoading {
  const _$BasketStateLoadingImpl();

  @override
  String toString() {
    return 'BasketState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BasketStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Object e) failure,
    required TResult Function(Object e, Map<Product, int> pasketList)
        basketError,
    required TResult Function(Map<Product, int> pasketList) products,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Object e)? failure,
    TResult? Function(Object e, Map<Product, int> pasketList)? basketError,
    TResult? Function(Map<Product, int> pasketList)? products,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Object e)? failure,
    TResult Function(Object e, Map<Product, int> pasketList)? basketError,
    TResult Function(Map<Product, int> pasketList)? products,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BasketStateLoading value) loading,
    required TResult Function(BasketStateFailure value) failure,
    required TResult Function(BasketStateBasketError value) basketError,
    required TResult Function(BasketStateProducts value) products,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BasketStateLoading value)? loading,
    TResult? Function(BasketStateFailure value)? failure,
    TResult? Function(BasketStateBasketError value)? basketError,
    TResult? Function(BasketStateProducts value)? products,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BasketStateLoading value)? loading,
    TResult Function(BasketStateFailure value)? failure,
    TResult Function(BasketStateBasketError value)? basketError,
    TResult Function(BasketStateProducts value)? products,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class BasketStateLoading implements BasketState {
  const factory BasketStateLoading() = _$BasketStateLoadingImpl;
}

/// @nodoc
abstract class _$$BasketStateFailureImplCopyWith<$Res> {
  factory _$$BasketStateFailureImplCopyWith(_$BasketStateFailureImpl value,
          $Res Function(_$BasketStateFailureImpl) then) =
      __$$BasketStateFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object e});
}

/// @nodoc
class __$$BasketStateFailureImplCopyWithImpl<$Res>
    extends _$BasketStateCopyWithImpl<$Res, _$BasketStateFailureImpl>
    implements _$$BasketStateFailureImplCopyWith<$Res> {
  __$$BasketStateFailureImplCopyWithImpl(_$BasketStateFailureImpl _value,
      $Res Function(_$BasketStateFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? e = null,
  }) {
    return _then(_$BasketStateFailureImpl(
      null == e ? _value.e : e,
    ));
  }
}

/// @nodoc

class _$BasketStateFailureImpl implements BasketStateFailure {
  const _$BasketStateFailureImpl(this.e);

  @override
  final Object e;

  @override
  String toString() {
    return 'BasketState.failure(e: $e)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BasketStateFailureImpl &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(e));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BasketStateFailureImplCopyWith<_$BasketStateFailureImpl> get copyWith =>
      __$$BasketStateFailureImplCopyWithImpl<_$BasketStateFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Object e) failure,
    required TResult Function(Object e, Map<Product, int> pasketList)
        basketError,
    required TResult Function(Map<Product, int> pasketList) products,
  }) {
    return failure(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Object e)? failure,
    TResult? Function(Object e, Map<Product, int> pasketList)? basketError,
    TResult? Function(Map<Product, int> pasketList)? products,
  }) {
    return failure?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Object e)? failure,
    TResult Function(Object e, Map<Product, int> pasketList)? basketError,
    TResult Function(Map<Product, int> pasketList)? products,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(e);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BasketStateLoading value) loading,
    required TResult Function(BasketStateFailure value) failure,
    required TResult Function(BasketStateBasketError value) basketError,
    required TResult Function(BasketStateProducts value) products,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BasketStateLoading value)? loading,
    TResult? Function(BasketStateFailure value)? failure,
    TResult? Function(BasketStateBasketError value)? basketError,
    TResult? Function(BasketStateProducts value)? products,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BasketStateLoading value)? loading,
    TResult Function(BasketStateFailure value)? failure,
    TResult Function(BasketStateBasketError value)? basketError,
    TResult Function(BasketStateProducts value)? products,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class BasketStateFailure implements BasketState {
  const factory BasketStateFailure(final Object e) = _$BasketStateFailureImpl;

  Object get e;
  @JsonKey(ignore: true)
  _$$BasketStateFailureImplCopyWith<_$BasketStateFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BasketStateBasketErrorImplCopyWith<$Res> {
  factory _$$BasketStateBasketErrorImplCopyWith(
          _$BasketStateBasketErrorImpl value,
          $Res Function(_$BasketStateBasketErrorImpl) then) =
      __$$BasketStateBasketErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object e, Map<Product, int> pasketList});
}

/// @nodoc
class __$$BasketStateBasketErrorImplCopyWithImpl<$Res>
    extends _$BasketStateCopyWithImpl<$Res, _$BasketStateBasketErrorImpl>
    implements _$$BasketStateBasketErrorImplCopyWith<$Res> {
  __$$BasketStateBasketErrorImplCopyWithImpl(
      _$BasketStateBasketErrorImpl _value,
      $Res Function(_$BasketStateBasketErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? e = null,
    Object? pasketList = null,
  }) {
    return _then(_$BasketStateBasketErrorImpl(
      null == e ? _value.e : e,
      null == pasketList
          ? _value._pasketList
          : pasketList // ignore: cast_nullable_to_non_nullable
              as Map<Product, int>,
    ));
  }
}

/// @nodoc

class _$BasketStateBasketErrorImpl implements BasketStateBasketError {
  const _$BasketStateBasketErrorImpl(this.e, final Map<Product, int> pasketList)
      : _pasketList = pasketList;

  @override
  final Object e;
  final Map<Product, int> _pasketList;
  @override
  Map<Product, int> get pasketList {
    if (_pasketList is EqualUnmodifiableMapView) return _pasketList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_pasketList);
  }

  @override
  String toString() {
    return 'BasketState.basketError(e: $e, pasketList: $pasketList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BasketStateBasketErrorImpl &&
            const DeepCollectionEquality().equals(other.e, e) &&
            const DeepCollectionEquality()
                .equals(other._pasketList, _pasketList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(e),
      const DeepCollectionEquality().hash(_pasketList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BasketStateBasketErrorImplCopyWith<_$BasketStateBasketErrorImpl>
      get copyWith => __$$BasketStateBasketErrorImplCopyWithImpl<
          _$BasketStateBasketErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Object e) failure,
    required TResult Function(Object e, Map<Product, int> pasketList)
        basketError,
    required TResult Function(Map<Product, int> pasketList) products,
  }) {
    return basketError(e, pasketList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Object e)? failure,
    TResult? Function(Object e, Map<Product, int> pasketList)? basketError,
    TResult? Function(Map<Product, int> pasketList)? products,
  }) {
    return basketError?.call(e, pasketList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Object e)? failure,
    TResult Function(Object e, Map<Product, int> pasketList)? basketError,
    TResult Function(Map<Product, int> pasketList)? products,
    required TResult orElse(),
  }) {
    if (basketError != null) {
      return basketError(e, pasketList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BasketStateLoading value) loading,
    required TResult Function(BasketStateFailure value) failure,
    required TResult Function(BasketStateBasketError value) basketError,
    required TResult Function(BasketStateProducts value) products,
  }) {
    return basketError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BasketStateLoading value)? loading,
    TResult? Function(BasketStateFailure value)? failure,
    TResult? Function(BasketStateBasketError value)? basketError,
    TResult? Function(BasketStateProducts value)? products,
  }) {
    return basketError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BasketStateLoading value)? loading,
    TResult Function(BasketStateFailure value)? failure,
    TResult Function(BasketStateBasketError value)? basketError,
    TResult Function(BasketStateProducts value)? products,
    required TResult orElse(),
  }) {
    if (basketError != null) {
      return basketError(this);
    }
    return orElse();
  }
}

abstract class BasketStateBasketError implements BasketState {
  const factory BasketStateBasketError(
          final Object e, final Map<Product, int> pasketList) =
      _$BasketStateBasketErrorImpl;

  Object get e;
  Map<Product, int> get pasketList;
  @JsonKey(ignore: true)
  _$$BasketStateBasketErrorImplCopyWith<_$BasketStateBasketErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BasketStateProductsImplCopyWith<$Res> {
  factory _$$BasketStateProductsImplCopyWith(_$BasketStateProductsImpl value,
          $Res Function(_$BasketStateProductsImpl) then) =
      __$$BasketStateProductsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<Product, int> pasketList});
}

/// @nodoc
class __$$BasketStateProductsImplCopyWithImpl<$Res>
    extends _$BasketStateCopyWithImpl<$Res, _$BasketStateProductsImpl>
    implements _$$BasketStateProductsImplCopyWith<$Res> {
  __$$BasketStateProductsImplCopyWithImpl(_$BasketStateProductsImpl _value,
      $Res Function(_$BasketStateProductsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pasketList = null,
  }) {
    return _then(_$BasketStateProductsImpl(
      null == pasketList
          ? _value._pasketList
          : pasketList // ignore: cast_nullable_to_non_nullable
              as Map<Product, int>,
    ));
  }
}

/// @nodoc

class _$BasketStateProductsImpl implements BasketStateProducts {
  const _$BasketStateProductsImpl(final Map<Product, int> pasketList)
      : _pasketList = pasketList;

  final Map<Product, int> _pasketList;
  @override
  Map<Product, int> get pasketList {
    if (_pasketList is EqualUnmodifiableMapView) return _pasketList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_pasketList);
  }

  @override
  String toString() {
    return 'BasketState.products(pasketList: $pasketList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BasketStateProductsImpl &&
            const DeepCollectionEquality()
                .equals(other._pasketList, _pasketList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_pasketList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BasketStateProductsImplCopyWith<_$BasketStateProductsImpl> get copyWith =>
      __$$BasketStateProductsImplCopyWithImpl<_$BasketStateProductsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Object e) failure,
    required TResult Function(Object e, Map<Product, int> pasketList)
        basketError,
    required TResult Function(Map<Product, int> pasketList) products,
  }) {
    return products(pasketList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Object e)? failure,
    TResult? Function(Object e, Map<Product, int> pasketList)? basketError,
    TResult? Function(Map<Product, int> pasketList)? products,
  }) {
    return products?.call(pasketList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Object e)? failure,
    TResult Function(Object e, Map<Product, int> pasketList)? basketError,
    TResult Function(Map<Product, int> pasketList)? products,
    required TResult orElse(),
  }) {
    if (products != null) {
      return products(pasketList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BasketStateLoading value) loading,
    required TResult Function(BasketStateFailure value) failure,
    required TResult Function(BasketStateBasketError value) basketError,
    required TResult Function(BasketStateProducts value) products,
  }) {
    return products(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BasketStateLoading value)? loading,
    TResult? Function(BasketStateFailure value)? failure,
    TResult? Function(BasketStateBasketError value)? basketError,
    TResult? Function(BasketStateProducts value)? products,
  }) {
    return products?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BasketStateLoading value)? loading,
    TResult Function(BasketStateFailure value)? failure,
    TResult Function(BasketStateBasketError value)? basketError,
    TResult Function(BasketStateProducts value)? products,
    required TResult orElse(),
  }) {
    if (products != null) {
      return products(this);
    }
    return orElse();
  }
}

abstract class BasketStateProducts implements BasketState {
  const factory BasketStateProducts(final Map<Product, int> pasketList) =
      _$BasketStateProductsImpl;

  Map<Product, int> get pasketList;
  @JsonKey(ignore: true)
  _$$BasketStateProductsImplCopyWith<_$BasketStateProductsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
