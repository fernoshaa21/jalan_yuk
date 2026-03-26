// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pay_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PayResponse {

@JsonKey(name: "data") PayResponseData? get data;@JsonKey(name: "message") String? get message;@JsonKey(name: "meta") dynamic get meta;
/// Create a copy of PayResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PayResponseCopyWith<PayResponse> get copyWith => _$PayResponseCopyWithImpl<PayResponse>(this as PayResponse, _$identity);

  /// Serializes this PayResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PayResponse&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.meta, meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data,message,const DeepCollectionEquality().hash(meta));

@override
String toString() {
  return 'PayResponse(data: $data, message: $message, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $PayResponseCopyWith<$Res>  {
  factory $PayResponseCopyWith(PayResponse value, $Res Function(PayResponse) _then) = _$PayResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "data") PayResponseData? data,@JsonKey(name: "message") String? message,@JsonKey(name: "meta") dynamic meta
});


$PayResponseDataCopyWith<$Res>? get data;

}
/// @nodoc
class _$PayResponseCopyWithImpl<$Res>
    implements $PayResponseCopyWith<$Res> {
  _$PayResponseCopyWithImpl(this._self, this._then);

  final PayResponse _self;
  final $Res Function(PayResponse) _then;

/// Create a copy of PayResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,Object? message = freezed,Object? meta = freezed,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as PayResponseData?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}
/// Create a copy of PayResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PayResponseDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $PayResponseDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [PayResponse].
extension PayResponsePatterns on PayResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PayResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PayResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PayResponse value)  $default,){
final _that = this;
switch (_that) {
case _PayResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PayResponse value)?  $default,){
final _that = this;
switch (_that) {
case _PayResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "data")  PayResponseData? data, @JsonKey(name: "message")  String? message, @JsonKey(name: "meta")  dynamic meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PayResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "data")  PayResponseData? data, @JsonKey(name: "message")  String? message, @JsonKey(name: "meta")  dynamic meta)  $default,) {final _that = this;
switch (_that) {
case _PayResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "data")  PayResponseData? data, @JsonKey(name: "message")  String? message, @JsonKey(name: "meta")  dynamic meta)?  $default,) {final _that = this;
switch (_that) {
case _PayResponse() when $default != null:
return $default(_that.data,_that.message,_that.meta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PayResponse implements PayResponse {
  const _PayResponse({@JsonKey(name: "data") this.data, @JsonKey(name: "message") this.message, @JsonKey(name: "meta") this.meta});
  factory _PayResponse.fromJson(Map<String, dynamic> json) => _$PayResponseFromJson(json);

@override@JsonKey(name: "data") final  PayResponseData? data;
@override@JsonKey(name: "message") final  String? message;
@override@JsonKey(name: "meta") final  dynamic meta;

/// Create a copy of PayResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PayResponseCopyWith<_PayResponse> get copyWith => __$PayResponseCopyWithImpl<_PayResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PayResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PayResponse&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.meta, meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data,message,const DeepCollectionEquality().hash(meta));

@override
String toString() {
  return 'PayResponse(data: $data, message: $message, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$PayResponseCopyWith<$Res> implements $PayResponseCopyWith<$Res> {
  factory _$PayResponseCopyWith(_PayResponse value, $Res Function(_PayResponse) _then) = __$PayResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "data") PayResponseData? data,@JsonKey(name: "message") String? message,@JsonKey(name: "meta") dynamic meta
});


@override $PayResponseDataCopyWith<$Res>? get data;

}
/// @nodoc
class __$PayResponseCopyWithImpl<$Res>
    implements _$PayResponseCopyWith<$Res> {
  __$PayResponseCopyWithImpl(this._self, this._then);

  final _PayResponse _self;
  final $Res Function(_PayResponse) _then;

/// Create a copy of PayResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,Object? message = freezed,Object? meta = freezed,}) {
  return _then(_PayResponse(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as PayResponseData?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

/// Create a copy of PayResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PayResponseDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $PayResponseDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$PayResponseData {

@JsonKey(name: "bookingId") String? get bookingId;@JsonKey(name: "paymentId") String? get paymentId;@JsonKey(name: "method") String? get method;@JsonKey(name: "paymentStatus") String? get paymentStatus;@JsonKey(name: "amount") int? get amount;@JsonKey(name: "paidAt") DateTime? get paidAt;
/// Create a copy of PayResponseData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PayResponseDataCopyWith<PayResponseData> get copyWith => _$PayResponseDataCopyWithImpl<PayResponseData>(this as PayResponseData, _$identity);

  /// Serializes this PayResponseData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PayResponseData&&(identical(other.bookingId, bookingId) || other.bookingId == bookingId)&&(identical(other.paymentId, paymentId) || other.paymentId == paymentId)&&(identical(other.method, method) || other.method == method)&&(identical(other.paymentStatus, paymentStatus) || other.paymentStatus == paymentStatus)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.paidAt, paidAt) || other.paidAt == paidAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,bookingId,paymentId,method,paymentStatus,amount,paidAt);

@override
String toString() {
  return 'PayResponseData(bookingId: $bookingId, paymentId: $paymentId, method: $method, paymentStatus: $paymentStatus, amount: $amount, paidAt: $paidAt)';
}


}

/// @nodoc
abstract mixin class $PayResponseDataCopyWith<$Res>  {
  factory $PayResponseDataCopyWith(PayResponseData value, $Res Function(PayResponseData) _then) = _$PayResponseDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "bookingId") String? bookingId,@JsonKey(name: "paymentId") String? paymentId,@JsonKey(name: "method") String? method,@JsonKey(name: "paymentStatus") String? paymentStatus,@JsonKey(name: "amount") int? amount,@JsonKey(name: "paidAt") DateTime? paidAt
});




}
/// @nodoc
class _$PayResponseDataCopyWithImpl<$Res>
    implements $PayResponseDataCopyWith<$Res> {
  _$PayResponseDataCopyWithImpl(this._self, this._then);

  final PayResponseData _self;
  final $Res Function(PayResponseData) _then;

/// Create a copy of PayResponseData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bookingId = freezed,Object? paymentId = freezed,Object? method = freezed,Object? paymentStatus = freezed,Object? amount = freezed,Object? paidAt = freezed,}) {
  return _then(_self.copyWith(
bookingId: freezed == bookingId ? _self.bookingId : bookingId // ignore: cast_nullable_to_non_nullable
as String?,paymentId: freezed == paymentId ? _self.paymentId : paymentId // ignore: cast_nullable_to_non_nullable
as String?,method: freezed == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as String?,paymentStatus: freezed == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int?,paidAt: freezed == paidAt ? _self.paidAt : paidAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [PayResponseData].
extension PayResponseDataPatterns on PayResponseData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PayResponseData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PayResponseData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PayResponseData value)  $default,){
final _that = this;
switch (_that) {
case _PayResponseData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PayResponseData value)?  $default,){
final _that = this;
switch (_that) {
case _PayResponseData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "bookingId")  String? bookingId, @JsonKey(name: "paymentId")  String? paymentId, @JsonKey(name: "method")  String? method, @JsonKey(name: "paymentStatus")  String? paymentStatus, @JsonKey(name: "amount")  int? amount, @JsonKey(name: "paidAt")  DateTime? paidAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PayResponseData() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "bookingId")  String? bookingId, @JsonKey(name: "paymentId")  String? paymentId, @JsonKey(name: "method")  String? method, @JsonKey(name: "paymentStatus")  String? paymentStatus, @JsonKey(name: "amount")  int? amount, @JsonKey(name: "paidAt")  DateTime? paidAt)  $default,) {final _that = this;
switch (_that) {
case _PayResponseData():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "bookingId")  String? bookingId, @JsonKey(name: "paymentId")  String? paymentId, @JsonKey(name: "method")  String? method, @JsonKey(name: "paymentStatus")  String? paymentStatus, @JsonKey(name: "amount")  int? amount, @JsonKey(name: "paidAt")  DateTime? paidAt)?  $default,) {final _that = this;
switch (_that) {
case _PayResponseData() when $default != null:
return $default(_that.bookingId,_that.paymentId,_that.method,_that.paymentStatus,_that.amount,_that.paidAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PayResponseData implements PayResponseData {
  const _PayResponseData({@JsonKey(name: "bookingId") this.bookingId, @JsonKey(name: "paymentId") this.paymentId, @JsonKey(name: "method") this.method, @JsonKey(name: "paymentStatus") this.paymentStatus, @JsonKey(name: "amount") this.amount, @JsonKey(name: "paidAt") this.paidAt});
  factory _PayResponseData.fromJson(Map<String, dynamic> json) => _$PayResponseDataFromJson(json);

@override@JsonKey(name: "bookingId") final  String? bookingId;
@override@JsonKey(name: "paymentId") final  String? paymentId;
@override@JsonKey(name: "method") final  String? method;
@override@JsonKey(name: "paymentStatus") final  String? paymentStatus;
@override@JsonKey(name: "amount") final  int? amount;
@override@JsonKey(name: "paidAt") final  DateTime? paidAt;

/// Create a copy of PayResponseData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PayResponseDataCopyWith<_PayResponseData> get copyWith => __$PayResponseDataCopyWithImpl<_PayResponseData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PayResponseDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PayResponseData&&(identical(other.bookingId, bookingId) || other.bookingId == bookingId)&&(identical(other.paymentId, paymentId) || other.paymentId == paymentId)&&(identical(other.method, method) || other.method == method)&&(identical(other.paymentStatus, paymentStatus) || other.paymentStatus == paymentStatus)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.paidAt, paidAt) || other.paidAt == paidAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,bookingId,paymentId,method,paymentStatus,amount,paidAt);

@override
String toString() {
  return 'PayResponseData(bookingId: $bookingId, paymentId: $paymentId, method: $method, paymentStatus: $paymentStatus, amount: $amount, paidAt: $paidAt)';
}


}

/// @nodoc
abstract mixin class _$PayResponseDataCopyWith<$Res> implements $PayResponseDataCopyWith<$Res> {
  factory _$PayResponseDataCopyWith(_PayResponseData value, $Res Function(_PayResponseData) _then) = __$PayResponseDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "bookingId") String? bookingId,@JsonKey(name: "paymentId") String? paymentId,@JsonKey(name: "method") String? method,@JsonKey(name: "paymentStatus") String? paymentStatus,@JsonKey(name: "amount") int? amount,@JsonKey(name: "paidAt") DateTime? paidAt
});




}
/// @nodoc
class __$PayResponseDataCopyWithImpl<$Res>
    implements _$PayResponseDataCopyWith<$Res> {
  __$PayResponseDataCopyWithImpl(this._self, this._then);

  final _PayResponseData _self;
  final $Res Function(_PayResponseData) _then;

/// Create a copy of PayResponseData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? bookingId = freezed,Object? paymentId = freezed,Object? method = freezed,Object? paymentStatus = freezed,Object? amount = freezed,Object? paidAt = freezed,}) {
  return _then(_PayResponseData(
bookingId: freezed == bookingId ? _self.bookingId : bookingId // ignore: cast_nullable_to_non_nullable
as String?,paymentId: freezed == paymentId ? _self.paymentId : paymentId // ignore: cast_nullable_to_non_nullable
as String?,method: freezed == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as String?,paymentStatus: freezed == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int?,paidAt: freezed == paidAt ? _self.paidAt : paidAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
