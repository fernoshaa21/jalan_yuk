// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cancel_booking_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CancelBookingResponse {

@JsonKey(name: "data") CancelBookingResponseData? get data;@JsonKey(name: "message") String? get message;@JsonKey(name: "meta") dynamic get meta;
/// Create a copy of CancelBookingResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CancelBookingResponseCopyWith<CancelBookingResponse> get copyWith => _$CancelBookingResponseCopyWithImpl<CancelBookingResponse>(this as CancelBookingResponse, _$identity);

  /// Serializes this CancelBookingResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CancelBookingResponse&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.meta, meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data,message,const DeepCollectionEquality().hash(meta));

@override
String toString() {
  return 'CancelBookingResponse(data: $data, message: $message, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $CancelBookingResponseCopyWith<$Res>  {
  factory $CancelBookingResponseCopyWith(CancelBookingResponse value, $Res Function(CancelBookingResponse) _then) = _$CancelBookingResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "data") CancelBookingResponseData? data,@JsonKey(name: "message") String? message,@JsonKey(name: "meta") dynamic meta
});


$CancelBookingResponseDataCopyWith<$Res>? get data;

}
/// @nodoc
class _$CancelBookingResponseCopyWithImpl<$Res>
    implements $CancelBookingResponseCopyWith<$Res> {
  _$CancelBookingResponseCopyWithImpl(this._self, this._then);

  final CancelBookingResponse _self;
  final $Res Function(CancelBookingResponse) _then;

/// Create a copy of CancelBookingResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,Object? message = freezed,Object? meta = freezed,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CancelBookingResponseData?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}
/// Create a copy of CancelBookingResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CancelBookingResponseDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $CancelBookingResponseDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [CancelBookingResponse].
extension CancelBookingResponsePatterns on CancelBookingResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CancelBookingResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CancelBookingResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CancelBookingResponse value)  $default,){
final _that = this;
switch (_that) {
case _CancelBookingResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CancelBookingResponse value)?  $default,){
final _that = this;
switch (_that) {
case _CancelBookingResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "data")  CancelBookingResponseData? data, @JsonKey(name: "message")  String? message, @JsonKey(name: "meta")  dynamic meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CancelBookingResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "data")  CancelBookingResponseData? data, @JsonKey(name: "message")  String? message, @JsonKey(name: "meta")  dynamic meta)  $default,) {final _that = this;
switch (_that) {
case _CancelBookingResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "data")  CancelBookingResponseData? data, @JsonKey(name: "message")  String? message, @JsonKey(name: "meta")  dynamic meta)?  $default,) {final _that = this;
switch (_that) {
case _CancelBookingResponse() when $default != null:
return $default(_that.data,_that.message,_that.meta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CancelBookingResponse implements CancelBookingResponse {
  const _CancelBookingResponse({@JsonKey(name: "data") this.data, @JsonKey(name: "message") this.message, @JsonKey(name: "meta") this.meta});
  factory _CancelBookingResponse.fromJson(Map<String, dynamic> json) => _$CancelBookingResponseFromJson(json);

@override@JsonKey(name: "data") final  CancelBookingResponseData? data;
@override@JsonKey(name: "message") final  String? message;
@override@JsonKey(name: "meta") final  dynamic meta;

/// Create a copy of CancelBookingResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CancelBookingResponseCopyWith<_CancelBookingResponse> get copyWith => __$CancelBookingResponseCopyWithImpl<_CancelBookingResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CancelBookingResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CancelBookingResponse&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.meta, meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data,message,const DeepCollectionEquality().hash(meta));

@override
String toString() {
  return 'CancelBookingResponse(data: $data, message: $message, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$CancelBookingResponseCopyWith<$Res> implements $CancelBookingResponseCopyWith<$Res> {
  factory _$CancelBookingResponseCopyWith(_CancelBookingResponse value, $Res Function(_CancelBookingResponse) _then) = __$CancelBookingResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "data") CancelBookingResponseData? data,@JsonKey(name: "message") String? message,@JsonKey(name: "meta") dynamic meta
});


@override $CancelBookingResponseDataCopyWith<$Res>? get data;

}
/// @nodoc
class __$CancelBookingResponseCopyWithImpl<$Res>
    implements _$CancelBookingResponseCopyWith<$Res> {
  __$CancelBookingResponseCopyWithImpl(this._self, this._then);

  final _CancelBookingResponse _self;
  final $Res Function(_CancelBookingResponse) _then;

/// Create a copy of CancelBookingResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,Object? message = freezed,Object? meta = freezed,}) {
  return _then(_CancelBookingResponse(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CancelBookingResponseData?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

/// Create a copy of CancelBookingResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CancelBookingResponseDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $CancelBookingResponseDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$CancelBookingResponseData {

@JsonKey(name: "bookingId") String? get bookingId;@JsonKey(name: "bookingStatus") String? get bookingStatus;@JsonKey(name: "paymentStatus") dynamic get paymentStatus;
/// Create a copy of CancelBookingResponseData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CancelBookingResponseDataCopyWith<CancelBookingResponseData> get copyWith => _$CancelBookingResponseDataCopyWithImpl<CancelBookingResponseData>(this as CancelBookingResponseData, _$identity);

  /// Serializes this CancelBookingResponseData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CancelBookingResponseData&&(identical(other.bookingId, bookingId) || other.bookingId == bookingId)&&(identical(other.bookingStatus, bookingStatus) || other.bookingStatus == bookingStatus)&&const DeepCollectionEquality().equals(other.paymentStatus, paymentStatus));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,bookingId,bookingStatus,const DeepCollectionEquality().hash(paymentStatus));

@override
String toString() {
  return 'CancelBookingResponseData(bookingId: $bookingId, bookingStatus: $bookingStatus, paymentStatus: $paymentStatus)';
}


}

/// @nodoc
abstract mixin class $CancelBookingResponseDataCopyWith<$Res>  {
  factory $CancelBookingResponseDataCopyWith(CancelBookingResponseData value, $Res Function(CancelBookingResponseData) _then) = _$CancelBookingResponseDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "bookingId") String? bookingId,@JsonKey(name: "bookingStatus") String? bookingStatus,@JsonKey(name: "paymentStatus") dynamic paymentStatus
});




}
/// @nodoc
class _$CancelBookingResponseDataCopyWithImpl<$Res>
    implements $CancelBookingResponseDataCopyWith<$Res> {
  _$CancelBookingResponseDataCopyWithImpl(this._self, this._then);

  final CancelBookingResponseData _self;
  final $Res Function(CancelBookingResponseData) _then;

/// Create a copy of CancelBookingResponseData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bookingId = freezed,Object? bookingStatus = freezed,Object? paymentStatus = freezed,}) {
  return _then(_self.copyWith(
bookingId: freezed == bookingId ? _self.bookingId : bookingId // ignore: cast_nullable_to_non_nullable
as String?,bookingStatus: freezed == bookingStatus ? _self.bookingStatus : bookingStatus // ignore: cast_nullable_to_non_nullable
as String?,paymentStatus: freezed == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [CancelBookingResponseData].
extension CancelBookingResponseDataPatterns on CancelBookingResponseData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CancelBookingResponseData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CancelBookingResponseData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CancelBookingResponseData value)  $default,){
final _that = this;
switch (_that) {
case _CancelBookingResponseData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CancelBookingResponseData value)?  $default,){
final _that = this;
switch (_that) {
case _CancelBookingResponseData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "bookingId")  String? bookingId, @JsonKey(name: "bookingStatus")  String? bookingStatus, @JsonKey(name: "paymentStatus")  dynamic paymentStatus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CancelBookingResponseData() when $default != null:
return $default(_that.bookingId,_that.bookingStatus,_that.paymentStatus);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "bookingId")  String? bookingId, @JsonKey(name: "bookingStatus")  String? bookingStatus, @JsonKey(name: "paymentStatus")  dynamic paymentStatus)  $default,) {final _that = this;
switch (_that) {
case _CancelBookingResponseData():
return $default(_that.bookingId,_that.bookingStatus,_that.paymentStatus);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "bookingId")  String? bookingId, @JsonKey(name: "bookingStatus")  String? bookingStatus, @JsonKey(name: "paymentStatus")  dynamic paymentStatus)?  $default,) {final _that = this;
switch (_that) {
case _CancelBookingResponseData() when $default != null:
return $default(_that.bookingId,_that.bookingStatus,_that.paymentStatus);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CancelBookingResponseData implements CancelBookingResponseData {
  const _CancelBookingResponseData({@JsonKey(name: "bookingId") this.bookingId, @JsonKey(name: "bookingStatus") this.bookingStatus, @JsonKey(name: "paymentStatus") this.paymentStatus});
  factory _CancelBookingResponseData.fromJson(Map<String, dynamic> json) => _$CancelBookingResponseDataFromJson(json);

@override@JsonKey(name: "bookingId") final  String? bookingId;
@override@JsonKey(name: "bookingStatus") final  String? bookingStatus;
@override@JsonKey(name: "paymentStatus") final  dynamic paymentStatus;

/// Create a copy of CancelBookingResponseData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CancelBookingResponseDataCopyWith<_CancelBookingResponseData> get copyWith => __$CancelBookingResponseDataCopyWithImpl<_CancelBookingResponseData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CancelBookingResponseDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CancelBookingResponseData&&(identical(other.bookingId, bookingId) || other.bookingId == bookingId)&&(identical(other.bookingStatus, bookingStatus) || other.bookingStatus == bookingStatus)&&const DeepCollectionEquality().equals(other.paymentStatus, paymentStatus));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,bookingId,bookingStatus,const DeepCollectionEquality().hash(paymentStatus));

@override
String toString() {
  return 'CancelBookingResponseData(bookingId: $bookingId, bookingStatus: $bookingStatus, paymentStatus: $paymentStatus)';
}


}

/// @nodoc
abstract mixin class _$CancelBookingResponseDataCopyWith<$Res> implements $CancelBookingResponseDataCopyWith<$Res> {
  factory _$CancelBookingResponseDataCopyWith(_CancelBookingResponseData value, $Res Function(_CancelBookingResponseData) _then) = __$CancelBookingResponseDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "bookingId") String? bookingId,@JsonKey(name: "bookingStatus") String? bookingStatus,@JsonKey(name: "paymentStatus") dynamic paymentStatus
});




}
/// @nodoc
class __$CancelBookingResponseDataCopyWithImpl<$Res>
    implements _$CancelBookingResponseDataCopyWith<$Res> {
  __$CancelBookingResponseDataCopyWithImpl(this._self, this._then);

  final _CancelBookingResponseData _self;
  final $Res Function(_CancelBookingResponseData) _then;

/// Create a copy of CancelBookingResponseData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? bookingId = freezed,Object? bookingStatus = freezed,Object? paymentStatus = freezed,}) {
  return _then(_CancelBookingResponseData(
bookingId: freezed == bookingId ? _self.bookingId : bookingId // ignore: cast_nullable_to_non_nullable
as String?,bookingStatus: freezed == bookingStatus ? _self.bookingStatus : bookingStatus // ignore: cast_nullable_to_non_nullable
as String?,paymentStatus: freezed == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

// dart format on
