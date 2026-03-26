// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payments_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaymentsResponse {

@JsonKey(name: "data") PaymentsResponseData? get data;@JsonKey(name: "message") String? get message;@JsonKey(name: "meta") dynamic get meta;
/// Create a copy of PaymentsResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentsResponseCopyWith<PaymentsResponse> get copyWith => _$PaymentsResponseCopyWithImpl<PaymentsResponse>(this as PaymentsResponse, _$identity);

  /// Serializes this PaymentsResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentsResponse&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.meta, meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data,message,const DeepCollectionEquality().hash(meta));

@override
String toString() {
  return 'PaymentsResponse(data: $data, message: $message, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $PaymentsResponseCopyWith<$Res>  {
  factory $PaymentsResponseCopyWith(PaymentsResponse value, $Res Function(PaymentsResponse) _then) = _$PaymentsResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "data") PaymentsResponseData? data,@JsonKey(name: "message") String? message,@JsonKey(name: "meta") dynamic meta
});


$PaymentsResponseDataCopyWith<$Res>? get data;

}
/// @nodoc
class _$PaymentsResponseCopyWithImpl<$Res>
    implements $PaymentsResponseCopyWith<$Res> {
  _$PaymentsResponseCopyWithImpl(this._self, this._then);

  final PaymentsResponse _self;
  final $Res Function(PaymentsResponse) _then;

/// Create a copy of PaymentsResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,Object? message = freezed,Object? meta = freezed,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as PaymentsResponseData?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}
/// Create a copy of PaymentsResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentsResponseDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $PaymentsResponseDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [PaymentsResponse].
extension PaymentsResponsePatterns on PaymentsResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentsResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentsResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentsResponse value)  $default,){
final _that = this;
switch (_that) {
case _PaymentsResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentsResponse value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentsResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "data")  PaymentsResponseData? data, @JsonKey(name: "message")  String? message, @JsonKey(name: "meta")  dynamic meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentsResponse() when $default != null:
return $default(_that.data,_that.message,_that.meta);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "data")  PaymentsResponseData? data, @JsonKey(name: "message")  String? message, @JsonKey(name: "meta")  dynamic meta)  $default,) {final _that = this;
switch (_that) {
case _PaymentsResponse():
return $default(_that.data,_that.message,_that.meta);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "data")  PaymentsResponseData? data, @JsonKey(name: "message")  String? message, @JsonKey(name: "meta")  dynamic meta)?  $default,) {final _that = this;
switch (_that) {
case _PaymentsResponse() when $default != null:
return $default(_that.data,_that.message,_that.meta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentsResponse implements PaymentsResponse {
  const _PaymentsResponse({@JsonKey(name: "data") this.data, @JsonKey(name: "message") this.message, @JsonKey(name: "meta") this.meta});
  factory _PaymentsResponse.fromJson(Map<String, dynamic> json) => _$PaymentsResponseFromJson(json);

@override@JsonKey(name: "data") final  PaymentsResponseData? data;
@override@JsonKey(name: "message") final  String? message;
@override@JsonKey(name: "meta") final  dynamic meta;

/// Create a copy of PaymentsResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentsResponseCopyWith<_PaymentsResponse> get copyWith => __$PaymentsResponseCopyWithImpl<_PaymentsResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentsResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentsResponse&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.meta, meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data,message,const DeepCollectionEquality().hash(meta));

@override
String toString() {
  return 'PaymentsResponse(data: $data, message: $message, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$PaymentsResponseCopyWith<$Res> implements $PaymentsResponseCopyWith<$Res> {
  factory _$PaymentsResponseCopyWith(_PaymentsResponse value, $Res Function(_PaymentsResponse) _then) = __$PaymentsResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "data") PaymentsResponseData? data,@JsonKey(name: "message") String? message,@JsonKey(name: "meta") dynamic meta
});


@override $PaymentsResponseDataCopyWith<$Res>? get data;

}
/// @nodoc
class __$PaymentsResponseCopyWithImpl<$Res>
    implements _$PaymentsResponseCopyWith<$Res> {
  __$PaymentsResponseCopyWithImpl(this._self, this._then);

  final _PaymentsResponse _self;
  final $Res Function(_PaymentsResponse) _then;

/// Create a copy of PaymentsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,Object? message = freezed,Object? meta = freezed,}) {
  return _then(_PaymentsResponse(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as PaymentsResponseData?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

/// Create a copy of PaymentsResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentsResponseDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $PaymentsResponseDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$PaymentsResponseData {

@JsonKey(name: "bookingId") String? get bookingId;@JsonKey(name: "paymentId") String? get paymentId;@JsonKey(name: "method") String? get method;@JsonKey(name: "paymentStatus") String? get paymentStatus;@JsonKey(name: "amount") int? get amount;@JsonKey(name: "paidAt") dynamic get paidAt;
/// Create a copy of PaymentsResponseData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentsResponseDataCopyWith<PaymentsResponseData> get copyWith => _$PaymentsResponseDataCopyWithImpl<PaymentsResponseData>(this as PaymentsResponseData, _$identity);

  /// Serializes this PaymentsResponseData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentsResponseData&&(identical(other.bookingId, bookingId) || other.bookingId == bookingId)&&(identical(other.paymentId, paymentId) || other.paymentId == paymentId)&&(identical(other.method, method) || other.method == method)&&(identical(other.paymentStatus, paymentStatus) || other.paymentStatus == paymentStatus)&&(identical(other.amount, amount) || other.amount == amount)&&const DeepCollectionEquality().equals(other.paidAt, paidAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,bookingId,paymentId,method,paymentStatus,amount,const DeepCollectionEquality().hash(paidAt));

@override
String toString() {
  return 'PaymentsResponseData(bookingId: $bookingId, paymentId: $paymentId, method: $method, paymentStatus: $paymentStatus, amount: $amount, paidAt: $paidAt)';
}


}

/// @nodoc
abstract mixin class $PaymentsResponseDataCopyWith<$Res>  {
  factory $PaymentsResponseDataCopyWith(PaymentsResponseData value, $Res Function(PaymentsResponseData) _then) = _$PaymentsResponseDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "bookingId") String? bookingId,@JsonKey(name: "paymentId") String? paymentId,@JsonKey(name: "method") String? method,@JsonKey(name: "paymentStatus") String? paymentStatus,@JsonKey(name: "amount") int? amount,@JsonKey(name: "paidAt") dynamic paidAt
});




}
/// @nodoc
class _$PaymentsResponseDataCopyWithImpl<$Res>
    implements $PaymentsResponseDataCopyWith<$Res> {
  _$PaymentsResponseDataCopyWithImpl(this._self, this._then);

  final PaymentsResponseData _self;
  final $Res Function(PaymentsResponseData) _then;

/// Create a copy of PaymentsResponseData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bookingId = freezed,Object? paymentId = freezed,Object? method = freezed,Object? paymentStatus = freezed,Object? amount = freezed,Object? paidAt = freezed,}) {
  return _then(_self.copyWith(
bookingId: freezed == bookingId ? _self.bookingId : bookingId // ignore: cast_nullable_to_non_nullable
as String?,paymentId: freezed == paymentId ? _self.paymentId : paymentId // ignore: cast_nullable_to_non_nullable
as String?,method: freezed == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as String?,paymentStatus: freezed == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int?,paidAt: freezed == paidAt ? _self.paidAt : paidAt // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentsResponseData].
extension PaymentsResponseDataPatterns on PaymentsResponseData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentsResponseData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentsResponseData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentsResponseData value)  $default,){
final _that = this;
switch (_that) {
case _PaymentsResponseData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentsResponseData value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentsResponseData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "bookingId")  String? bookingId, @JsonKey(name: "paymentId")  String? paymentId, @JsonKey(name: "method")  String? method, @JsonKey(name: "paymentStatus")  String? paymentStatus, @JsonKey(name: "amount")  int? amount, @JsonKey(name: "paidAt")  dynamic paidAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentsResponseData() when $default != null:
return $default(_that.bookingId,_that.paymentId,_that.method,_that.paymentStatus,_that.amount,_that.paidAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "bookingId")  String? bookingId, @JsonKey(name: "paymentId")  String? paymentId, @JsonKey(name: "method")  String? method, @JsonKey(name: "paymentStatus")  String? paymentStatus, @JsonKey(name: "amount")  int? amount, @JsonKey(name: "paidAt")  dynamic paidAt)  $default,) {final _that = this;
switch (_that) {
case _PaymentsResponseData():
return $default(_that.bookingId,_that.paymentId,_that.method,_that.paymentStatus,_that.amount,_that.paidAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "bookingId")  String? bookingId, @JsonKey(name: "paymentId")  String? paymentId, @JsonKey(name: "method")  String? method, @JsonKey(name: "paymentStatus")  String? paymentStatus, @JsonKey(name: "amount")  int? amount, @JsonKey(name: "paidAt")  dynamic paidAt)?  $default,) {final _that = this;
switch (_that) {
case _PaymentsResponseData() when $default != null:
return $default(_that.bookingId,_that.paymentId,_that.method,_that.paymentStatus,_that.amount,_that.paidAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentsResponseData implements PaymentsResponseData {
  const _PaymentsResponseData({@JsonKey(name: "bookingId") this.bookingId, @JsonKey(name: "paymentId") this.paymentId, @JsonKey(name: "method") this.method, @JsonKey(name: "paymentStatus") this.paymentStatus, @JsonKey(name: "amount") this.amount, @JsonKey(name: "paidAt") this.paidAt});
  factory _PaymentsResponseData.fromJson(Map<String, dynamic> json) => _$PaymentsResponseDataFromJson(json);

@override@JsonKey(name: "bookingId") final  String? bookingId;
@override@JsonKey(name: "paymentId") final  String? paymentId;
@override@JsonKey(name: "method") final  String? method;
@override@JsonKey(name: "paymentStatus") final  String? paymentStatus;
@override@JsonKey(name: "amount") final  int? amount;
@override@JsonKey(name: "paidAt") final  dynamic paidAt;

/// Create a copy of PaymentsResponseData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentsResponseDataCopyWith<_PaymentsResponseData> get copyWith => __$PaymentsResponseDataCopyWithImpl<_PaymentsResponseData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentsResponseDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentsResponseData&&(identical(other.bookingId, bookingId) || other.bookingId == bookingId)&&(identical(other.paymentId, paymentId) || other.paymentId == paymentId)&&(identical(other.method, method) || other.method == method)&&(identical(other.paymentStatus, paymentStatus) || other.paymentStatus == paymentStatus)&&(identical(other.amount, amount) || other.amount == amount)&&const DeepCollectionEquality().equals(other.paidAt, paidAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,bookingId,paymentId,method,paymentStatus,amount,const DeepCollectionEquality().hash(paidAt));

@override
String toString() {
  return 'PaymentsResponseData(bookingId: $bookingId, paymentId: $paymentId, method: $method, paymentStatus: $paymentStatus, amount: $amount, paidAt: $paidAt)';
}


}

/// @nodoc
abstract mixin class _$PaymentsResponseDataCopyWith<$Res> implements $PaymentsResponseDataCopyWith<$Res> {
  factory _$PaymentsResponseDataCopyWith(_PaymentsResponseData value, $Res Function(_PaymentsResponseData) _then) = __$PaymentsResponseDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "bookingId") String? bookingId,@JsonKey(name: "paymentId") String? paymentId,@JsonKey(name: "method") String? method,@JsonKey(name: "paymentStatus") String? paymentStatus,@JsonKey(name: "amount") int? amount,@JsonKey(name: "paidAt") dynamic paidAt
});




}
/// @nodoc
class __$PaymentsResponseDataCopyWithImpl<$Res>
    implements _$PaymentsResponseDataCopyWith<$Res> {
  __$PaymentsResponseDataCopyWithImpl(this._self, this._then);

  final _PaymentsResponseData _self;
  final $Res Function(_PaymentsResponseData) _then;

/// Create a copy of PaymentsResponseData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? bookingId = freezed,Object? paymentId = freezed,Object? method = freezed,Object? paymentStatus = freezed,Object? amount = freezed,Object? paidAt = freezed,}) {
  return _then(_PaymentsResponseData(
bookingId: freezed == bookingId ? _self.bookingId : bookingId // ignore: cast_nullable_to_non_nullable
as String?,paymentId: freezed == paymentId ? _self.paymentId : paymentId // ignore: cast_nullable_to_non_nullable
as String?,method: freezed == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as String?,paymentStatus: freezed == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int?,paidAt: freezed == paidAt ? _self.paidAt : paidAt // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

// dart format on
