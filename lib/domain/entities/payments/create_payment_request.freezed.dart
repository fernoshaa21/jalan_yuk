// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_payment_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreatePaymentRequest {

 String get bookingId; String get method;
/// Create a copy of CreatePaymentRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreatePaymentRequestCopyWith<CreatePaymentRequest> get copyWith => _$CreatePaymentRequestCopyWithImpl<CreatePaymentRequest>(this as CreatePaymentRequest, _$identity);

  /// Serializes this CreatePaymentRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreatePaymentRequest&&(identical(other.bookingId, bookingId) || other.bookingId == bookingId)&&(identical(other.method, method) || other.method == method));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,bookingId,method);

@override
String toString() {
  return 'CreatePaymentRequest(bookingId: $bookingId, method: $method)';
}


}

/// @nodoc
abstract mixin class $CreatePaymentRequestCopyWith<$Res>  {
  factory $CreatePaymentRequestCopyWith(CreatePaymentRequest value, $Res Function(CreatePaymentRequest) _then) = _$CreatePaymentRequestCopyWithImpl;
@useResult
$Res call({
 String bookingId, String method
});




}
/// @nodoc
class _$CreatePaymentRequestCopyWithImpl<$Res>
    implements $CreatePaymentRequestCopyWith<$Res> {
  _$CreatePaymentRequestCopyWithImpl(this._self, this._then);

  final CreatePaymentRequest _self;
  final $Res Function(CreatePaymentRequest) _then;

/// Create a copy of CreatePaymentRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bookingId = null,Object? method = null,}) {
  return _then(_self.copyWith(
bookingId: null == bookingId ? _self.bookingId : bookingId // ignore: cast_nullable_to_non_nullable
as String,method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CreatePaymentRequest].
extension CreatePaymentRequestPatterns on CreatePaymentRequest {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreatePaymentRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreatePaymentRequest() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreatePaymentRequest value)  $default,){
final _that = this;
switch (_that) {
case _CreatePaymentRequest():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreatePaymentRequest value)?  $default,){
final _that = this;
switch (_that) {
case _CreatePaymentRequest() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String bookingId,  String method)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreatePaymentRequest() when $default != null:
return $default(_that.bookingId,_that.method);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String bookingId,  String method)  $default,) {final _that = this;
switch (_that) {
case _CreatePaymentRequest():
return $default(_that.bookingId,_that.method);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String bookingId,  String method)?  $default,) {final _that = this;
switch (_that) {
case _CreatePaymentRequest() when $default != null:
return $default(_that.bookingId,_that.method);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreatePaymentRequest implements CreatePaymentRequest {
  const _CreatePaymentRequest({required this.bookingId, required this.method});
  factory _CreatePaymentRequest.fromJson(Map<String, dynamic> json) => _$CreatePaymentRequestFromJson(json);

@override final  String bookingId;
@override final  String method;

/// Create a copy of CreatePaymentRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreatePaymentRequestCopyWith<_CreatePaymentRequest> get copyWith => __$CreatePaymentRequestCopyWithImpl<_CreatePaymentRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreatePaymentRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreatePaymentRequest&&(identical(other.bookingId, bookingId) || other.bookingId == bookingId)&&(identical(other.method, method) || other.method == method));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,bookingId,method);

@override
String toString() {
  return 'CreatePaymentRequest(bookingId: $bookingId, method: $method)';
}


}

/// @nodoc
abstract mixin class _$CreatePaymentRequestCopyWith<$Res> implements $CreatePaymentRequestCopyWith<$Res> {
  factory _$CreatePaymentRequestCopyWith(_CreatePaymentRequest value, $Res Function(_CreatePaymentRequest) _then) = __$CreatePaymentRequestCopyWithImpl;
@override @useResult
$Res call({
 String bookingId, String method
});




}
/// @nodoc
class __$CreatePaymentRequestCopyWithImpl<$Res>
    implements _$CreatePaymentRequestCopyWith<$Res> {
  __$CreatePaymentRequestCopyWithImpl(this._self, this._then);

  final _CreatePaymentRequest _self;
  final $Res Function(_CreatePaymentRequest) _then;

/// Create a copy of CreatePaymentRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? bookingId = null,Object? method = null,}) {
  return _then(_CreatePaymentRequest(
bookingId: null == bookingId ? _self.bookingId : bookingId // ignore: cast_nullable_to_non_nullable
as String,method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
