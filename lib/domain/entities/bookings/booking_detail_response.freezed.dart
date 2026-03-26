// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_detail_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BookingDetailResponse {

@JsonKey(name: "data") BookingDetailResponseData? get data;@JsonKey(name: "message") String? get message;@JsonKey(name: "meta") dynamic get meta;
/// Create a copy of BookingDetailResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookingDetailResponseCopyWith<BookingDetailResponse> get copyWith => _$BookingDetailResponseCopyWithImpl<BookingDetailResponse>(this as BookingDetailResponse, _$identity);

  /// Serializes this BookingDetailResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookingDetailResponse&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.meta, meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data,message,const DeepCollectionEquality().hash(meta));

@override
String toString() {
  return 'BookingDetailResponse(data: $data, message: $message, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $BookingDetailResponseCopyWith<$Res>  {
  factory $BookingDetailResponseCopyWith(BookingDetailResponse value, $Res Function(BookingDetailResponse) _then) = _$BookingDetailResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "data") BookingDetailResponseData? data,@JsonKey(name: "message") String? message,@JsonKey(name: "meta") dynamic meta
});


$BookingDetailResponseDataCopyWith<$Res>? get data;

}
/// @nodoc
class _$BookingDetailResponseCopyWithImpl<$Res>
    implements $BookingDetailResponseCopyWith<$Res> {
  _$BookingDetailResponseCopyWithImpl(this._self, this._then);

  final BookingDetailResponse _self;
  final $Res Function(BookingDetailResponse) _then;

/// Create a copy of BookingDetailResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,Object? message = freezed,Object? meta = freezed,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as BookingDetailResponseData?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}
/// Create a copy of BookingDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BookingDetailResponseDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $BookingDetailResponseDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [BookingDetailResponse].
extension BookingDetailResponsePatterns on BookingDetailResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BookingDetailResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BookingDetailResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BookingDetailResponse value)  $default,){
final _that = this;
switch (_that) {
case _BookingDetailResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BookingDetailResponse value)?  $default,){
final _that = this;
switch (_that) {
case _BookingDetailResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "data")  BookingDetailResponseData? data, @JsonKey(name: "message")  String? message, @JsonKey(name: "meta")  dynamic meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BookingDetailResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "data")  BookingDetailResponseData? data, @JsonKey(name: "message")  String? message, @JsonKey(name: "meta")  dynamic meta)  $default,) {final _that = this;
switch (_that) {
case _BookingDetailResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "data")  BookingDetailResponseData? data, @JsonKey(name: "message")  String? message, @JsonKey(name: "meta")  dynamic meta)?  $default,) {final _that = this;
switch (_that) {
case _BookingDetailResponse() when $default != null:
return $default(_that.data,_that.message,_that.meta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BookingDetailResponse implements BookingDetailResponse {
  const _BookingDetailResponse({@JsonKey(name: "data") this.data, @JsonKey(name: "message") this.message, @JsonKey(name: "meta") this.meta});
  factory _BookingDetailResponse.fromJson(Map<String, dynamic> json) => _$BookingDetailResponseFromJson(json);

@override@JsonKey(name: "data") final  BookingDetailResponseData? data;
@override@JsonKey(name: "message") final  String? message;
@override@JsonKey(name: "meta") final  dynamic meta;

/// Create a copy of BookingDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookingDetailResponseCopyWith<_BookingDetailResponse> get copyWith => __$BookingDetailResponseCopyWithImpl<_BookingDetailResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BookingDetailResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookingDetailResponse&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.meta, meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data,message,const DeepCollectionEquality().hash(meta));

@override
String toString() {
  return 'BookingDetailResponse(data: $data, message: $message, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$BookingDetailResponseCopyWith<$Res> implements $BookingDetailResponseCopyWith<$Res> {
  factory _$BookingDetailResponseCopyWith(_BookingDetailResponse value, $Res Function(_BookingDetailResponse) _then) = __$BookingDetailResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "data") BookingDetailResponseData? data,@JsonKey(name: "message") String? message,@JsonKey(name: "meta") dynamic meta
});


@override $BookingDetailResponseDataCopyWith<$Res>? get data;

}
/// @nodoc
class __$BookingDetailResponseCopyWithImpl<$Res>
    implements _$BookingDetailResponseCopyWith<$Res> {
  __$BookingDetailResponseCopyWithImpl(this._self, this._then);

  final _BookingDetailResponse _self;
  final $Res Function(_BookingDetailResponse) _then;

/// Create a copy of BookingDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,Object? message = freezed,Object? meta = freezed,}) {
  return _then(_BookingDetailResponse(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as BookingDetailResponseData?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

/// Create a copy of BookingDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BookingDetailResponseDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $BookingDetailResponseDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$BookingDetailResponseData {

@JsonKey(name: "id") String? get id;@JsonKey(name: "activity") ActivityBookingDetail? get activity;@JsonKey(name: "bookingDate") DateTime? get bookingDate;@JsonKey(name: "qty") int? get qty;@JsonKey(name: "unitPrice") int? get unitPrice;@JsonKey(name: "totalPrice") int? get totalPrice;@JsonKey(name: "bookingStatus") String? get bookingStatus;@JsonKey(name: "payment") PaymentBookingDetail? get payment;@JsonKey(name: "createdAt") DateTime? get createdAt;
/// Create a copy of BookingDetailResponseData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookingDetailResponseDataCopyWith<BookingDetailResponseData> get copyWith => _$BookingDetailResponseDataCopyWithImpl<BookingDetailResponseData>(this as BookingDetailResponseData, _$identity);

  /// Serializes this BookingDetailResponseData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookingDetailResponseData&&(identical(other.id, id) || other.id == id)&&(identical(other.activity, activity) || other.activity == activity)&&(identical(other.bookingDate, bookingDate) || other.bookingDate == bookingDate)&&(identical(other.qty, qty) || other.qty == qty)&&(identical(other.unitPrice, unitPrice) || other.unitPrice == unitPrice)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice)&&(identical(other.bookingStatus, bookingStatus) || other.bookingStatus == bookingStatus)&&(identical(other.payment, payment) || other.payment == payment)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,activity,bookingDate,qty,unitPrice,totalPrice,bookingStatus,payment,createdAt);

@override
String toString() {
  return 'BookingDetailResponseData(id: $id, activity: $activity, bookingDate: $bookingDate, qty: $qty, unitPrice: $unitPrice, totalPrice: $totalPrice, bookingStatus: $bookingStatus, payment: $payment, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $BookingDetailResponseDataCopyWith<$Res>  {
  factory $BookingDetailResponseDataCopyWith(BookingDetailResponseData value, $Res Function(BookingDetailResponseData) _then) = _$BookingDetailResponseDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") String? id,@JsonKey(name: "activity") ActivityBookingDetail? activity,@JsonKey(name: "bookingDate") DateTime? bookingDate,@JsonKey(name: "qty") int? qty,@JsonKey(name: "unitPrice") int? unitPrice,@JsonKey(name: "totalPrice") int? totalPrice,@JsonKey(name: "bookingStatus") String? bookingStatus,@JsonKey(name: "payment") PaymentBookingDetail? payment,@JsonKey(name: "createdAt") DateTime? createdAt
});


$ActivityBookingDetailCopyWith<$Res>? get activity;$PaymentBookingDetailCopyWith<$Res>? get payment;

}
/// @nodoc
class _$BookingDetailResponseDataCopyWithImpl<$Res>
    implements $BookingDetailResponseDataCopyWith<$Res> {
  _$BookingDetailResponseDataCopyWithImpl(this._self, this._then);

  final BookingDetailResponseData _self;
  final $Res Function(BookingDetailResponseData) _then;

/// Create a copy of BookingDetailResponseData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? activity = freezed,Object? bookingDate = freezed,Object? qty = freezed,Object? unitPrice = freezed,Object? totalPrice = freezed,Object? bookingStatus = freezed,Object? payment = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,activity: freezed == activity ? _self.activity : activity // ignore: cast_nullable_to_non_nullable
as ActivityBookingDetail?,bookingDate: freezed == bookingDate ? _self.bookingDate : bookingDate // ignore: cast_nullable_to_non_nullable
as DateTime?,qty: freezed == qty ? _self.qty : qty // ignore: cast_nullable_to_non_nullable
as int?,unitPrice: freezed == unitPrice ? _self.unitPrice : unitPrice // ignore: cast_nullable_to_non_nullable
as int?,totalPrice: freezed == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as int?,bookingStatus: freezed == bookingStatus ? _self.bookingStatus : bookingStatus // ignore: cast_nullable_to_non_nullable
as String?,payment: freezed == payment ? _self.payment : payment // ignore: cast_nullable_to_non_nullable
as PaymentBookingDetail?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}
/// Create a copy of BookingDetailResponseData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ActivityBookingDetailCopyWith<$Res>? get activity {
    if (_self.activity == null) {
    return null;
  }

  return $ActivityBookingDetailCopyWith<$Res>(_self.activity!, (value) {
    return _then(_self.copyWith(activity: value));
  });
}/// Create a copy of BookingDetailResponseData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentBookingDetailCopyWith<$Res>? get payment {
    if (_self.payment == null) {
    return null;
  }

  return $PaymentBookingDetailCopyWith<$Res>(_self.payment!, (value) {
    return _then(_self.copyWith(payment: value));
  });
}
}


/// Adds pattern-matching-related methods to [BookingDetailResponseData].
extension BookingDetailResponseDataPatterns on BookingDetailResponseData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BookingDetailResponseData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BookingDetailResponseData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BookingDetailResponseData value)  $default,){
final _that = this;
switch (_that) {
case _BookingDetailResponseData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BookingDetailResponseData value)?  $default,){
final _that = this;
switch (_that) {
case _BookingDetailResponseData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  String? id, @JsonKey(name: "activity")  ActivityBookingDetail? activity, @JsonKey(name: "bookingDate")  DateTime? bookingDate, @JsonKey(name: "qty")  int? qty, @JsonKey(name: "unitPrice")  int? unitPrice, @JsonKey(name: "totalPrice")  int? totalPrice, @JsonKey(name: "bookingStatus")  String? bookingStatus, @JsonKey(name: "payment")  PaymentBookingDetail? payment, @JsonKey(name: "createdAt")  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BookingDetailResponseData() when $default != null:
return $default(_that.id,_that.activity,_that.bookingDate,_that.qty,_that.unitPrice,_that.totalPrice,_that.bookingStatus,_that.payment,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  String? id, @JsonKey(name: "activity")  ActivityBookingDetail? activity, @JsonKey(name: "bookingDate")  DateTime? bookingDate, @JsonKey(name: "qty")  int? qty, @JsonKey(name: "unitPrice")  int? unitPrice, @JsonKey(name: "totalPrice")  int? totalPrice, @JsonKey(name: "bookingStatus")  String? bookingStatus, @JsonKey(name: "payment")  PaymentBookingDetail? payment, @JsonKey(name: "createdAt")  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _BookingDetailResponseData():
return $default(_that.id,_that.activity,_that.bookingDate,_that.qty,_that.unitPrice,_that.totalPrice,_that.bookingStatus,_that.payment,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "id")  String? id, @JsonKey(name: "activity")  ActivityBookingDetail? activity, @JsonKey(name: "bookingDate")  DateTime? bookingDate, @JsonKey(name: "qty")  int? qty, @JsonKey(name: "unitPrice")  int? unitPrice, @JsonKey(name: "totalPrice")  int? totalPrice, @JsonKey(name: "bookingStatus")  String? bookingStatus, @JsonKey(name: "payment")  PaymentBookingDetail? payment, @JsonKey(name: "createdAt")  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _BookingDetailResponseData() when $default != null:
return $default(_that.id,_that.activity,_that.bookingDate,_that.qty,_that.unitPrice,_that.totalPrice,_that.bookingStatus,_that.payment,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BookingDetailResponseData implements BookingDetailResponseData {
  const _BookingDetailResponseData({@JsonKey(name: "id") this.id, @JsonKey(name: "activity") this.activity, @JsonKey(name: "bookingDate") this.bookingDate, @JsonKey(name: "qty") this.qty, @JsonKey(name: "unitPrice") this.unitPrice, @JsonKey(name: "totalPrice") this.totalPrice, @JsonKey(name: "bookingStatus") this.bookingStatus, @JsonKey(name: "payment") this.payment, @JsonKey(name: "createdAt") this.createdAt});
  factory _BookingDetailResponseData.fromJson(Map<String, dynamic> json) => _$BookingDetailResponseDataFromJson(json);

@override@JsonKey(name: "id") final  String? id;
@override@JsonKey(name: "activity") final  ActivityBookingDetail? activity;
@override@JsonKey(name: "bookingDate") final  DateTime? bookingDate;
@override@JsonKey(name: "qty") final  int? qty;
@override@JsonKey(name: "unitPrice") final  int? unitPrice;
@override@JsonKey(name: "totalPrice") final  int? totalPrice;
@override@JsonKey(name: "bookingStatus") final  String? bookingStatus;
@override@JsonKey(name: "payment") final  PaymentBookingDetail? payment;
@override@JsonKey(name: "createdAt") final  DateTime? createdAt;

/// Create a copy of BookingDetailResponseData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookingDetailResponseDataCopyWith<_BookingDetailResponseData> get copyWith => __$BookingDetailResponseDataCopyWithImpl<_BookingDetailResponseData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BookingDetailResponseDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookingDetailResponseData&&(identical(other.id, id) || other.id == id)&&(identical(other.activity, activity) || other.activity == activity)&&(identical(other.bookingDate, bookingDate) || other.bookingDate == bookingDate)&&(identical(other.qty, qty) || other.qty == qty)&&(identical(other.unitPrice, unitPrice) || other.unitPrice == unitPrice)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice)&&(identical(other.bookingStatus, bookingStatus) || other.bookingStatus == bookingStatus)&&(identical(other.payment, payment) || other.payment == payment)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,activity,bookingDate,qty,unitPrice,totalPrice,bookingStatus,payment,createdAt);

@override
String toString() {
  return 'BookingDetailResponseData(id: $id, activity: $activity, bookingDate: $bookingDate, qty: $qty, unitPrice: $unitPrice, totalPrice: $totalPrice, bookingStatus: $bookingStatus, payment: $payment, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$BookingDetailResponseDataCopyWith<$Res> implements $BookingDetailResponseDataCopyWith<$Res> {
  factory _$BookingDetailResponseDataCopyWith(_BookingDetailResponseData value, $Res Function(_BookingDetailResponseData) _then) = __$BookingDetailResponseDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") String? id,@JsonKey(name: "activity") ActivityBookingDetail? activity,@JsonKey(name: "bookingDate") DateTime? bookingDate,@JsonKey(name: "qty") int? qty,@JsonKey(name: "unitPrice") int? unitPrice,@JsonKey(name: "totalPrice") int? totalPrice,@JsonKey(name: "bookingStatus") String? bookingStatus,@JsonKey(name: "payment") PaymentBookingDetail? payment,@JsonKey(name: "createdAt") DateTime? createdAt
});


@override $ActivityBookingDetailCopyWith<$Res>? get activity;@override $PaymentBookingDetailCopyWith<$Res>? get payment;

}
/// @nodoc
class __$BookingDetailResponseDataCopyWithImpl<$Res>
    implements _$BookingDetailResponseDataCopyWith<$Res> {
  __$BookingDetailResponseDataCopyWithImpl(this._self, this._then);

  final _BookingDetailResponseData _self;
  final $Res Function(_BookingDetailResponseData) _then;

/// Create a copy of BookingDetailResponseData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? activity = freezed,Object? bookingDate = freezed,Object? qty = freezed,Object? unitPrice = freezed,Object? totalPrice = freezed,Object? bookingStatus = freezed,Object? payment = freezed,Object? createdAt = freezed,}) {
  return _then(_BookingDetailResponseData(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,activity: freezed == activity ? _self.activity : activity // ignore: cast_nullable_to_non_nullable
as ActivityBookingDetail?,bookingDate: freezed == bookingDate ? _self.bookingDate : bookingDate // ignore: cast_nullable_to_non_nullable
as DateTime?,qty: freezed == qty ? _self.qty : qty // ignore: cast_nullable_to_non_nullable
as int?,unitPrice: freezed == unitPrice ? _self.unitPrice : unitPrice // ignore: cast_nullable_to_non_nullable
as int?,totalPrice: freezed == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as int?,bookingStatus: freezed == bookingStatus ? _self.bookingStatus : bookingStatus // ignore: cast_nullable_to_non_nullable
as String?,payment: freezed == payment ? _self.payment : payment // ignore: cast_nullable_to_non_nullable
as PaymentBookingDetail?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of BookingDetailResponseData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ActivityBookingDetailCopyWith<$Res>? get activity {
    if (_self.activity == null) {
    return null;
  }

  return $ActivityBookingDetailCopyWith<$Res>(_self.activity!, (value) {
    return _then(_self.copyWith(activity: value));
  });
}/// Create a copy of BookingDetailResponseData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentBookingDetailCopyWith<$Res>? get payment {
    if (_self.payment == null) {
    return null;
  }

  return $PaymentBookingDetailCopyWith<$Res>(_self.payment!, (value) {
    return _then(_self.copyWith(payment: value));
  });
}
}


/// @nodoc
mixin _$ActivityBookingDetail {

@JsonKey(name: "id") int? get id;@JsonKey(name: "title") String? get title;@JsonKey(name: "imageUrl") String? get imageUrl;@JsonKey(name: "location") String? get location;@JsonKey(name: "price") int? get price;
/// Create a copy of ActivityBookingDetail
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ActivityBookingDetailCopyWith<ActivityBookingDetail> get copyWith => _$ActivityBookingDetailCopyWithImpl<ActivityBookingDetail>(this as ActivityBookingDetail, _$identity);

  /// Serializes this ActivityBookingDetail to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ActivityBookingDetail&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.location, location) || other.location == location)&&(identical(other.price, price) || other.price == price));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,imageUrl,location,price);

@override
String toString() {
  return 'ActivityBookingDetail(id: $id, title: $title, imageUrl: $imageUrl, location: $location, price: $price)';
}


}

/// @nodoc
abstract mixin class $ActivityBookingDetailCopyWith<$Res>  {
  factory $ActivityBookingDetailCopyWith(ActivityBookingDetail value, $Res Function(ActivityBookingDetail) _then) = _$ActivityBookingDetailCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "title") String? title,@JsonKey(name: "imageUrl") String? imageUrl,@JsonKey(name: "location") String? location,@JsonKey(name: "price") int? price
});




}
/// @nodoc
class _$ActivityBookingDetailCopyWithImpl<$Res>
    implements $ActivityBookingDetailCopyWith<$Res> {
  _$ActivityBookingDetailCopyWithImpl(this._self, this._then);

  final ActivityBookingDetail _self;
  final $Res Function(ActivityBookingDetail) _then;

/// Create a copy of ActivityBookingDetail
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? title = freezed,Object? imageUrl = freezed,Object? location = freezed,Object? price = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [ActivityBookingDetail].
extension ActivityBookingDetailPatterns on ActivityBookingDetail {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ActivityBookingDetail value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ActivityBookingDetail() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ActivityBookingDetail value)  $default,){
final _that = this;
switch (_that) {
case _ActivityBookingDetail():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ActivityBookingDetail value)?  $default,){
final _that = this;
switch (_that) {
case _ActivityBookingDetail() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "title")  String? title, @JsonKey(name: "imageUrl")  String? imageUrl, @JsonKey(name: "location")  String? location, @JsonKey(name: "price")  int? price)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ActivityBookingDetail() when $default != null:
return $default(_that.id,_that.title,_that.imageUrl,_that.location,_that.price);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "title")  String? title, @JsonKey(name: "imageUrl")  String? imageUrl, @JsonKey(name: "location")  String? location, @JsonKey(name: "price")  int? price)  $default,) {final _that = this;
switch (_that) {
case _ActivityBookingDetail():
return $default(_that.id,_that.title,_that.imageUrl,_that.location,_that.price);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "title")  String? title, @JsonKey(name: "imageUrl")  String? imageUrl, @JsonKey(name: "location")  String? location, @JsonKey(name: "price")  int? price)?  $default,) {final _that = this;
switch (_that) {
case _ActivityBookingDetail() when $default != null:
return $default(_that.id,_that.title,_that.imageUrl,_that.location,_that.price);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ActivityBookingDetail implements ActivityBookingDetail {
  const _ActivityBookingDetail({@JsonKey(name: "id") this.id, @JsonKey(name: "title") this.title, @JsonKey(name: "imageUrl") this.imageUrl, @JsonKey(name: "location") this.location, @JsonKey(name: "price") this.price});
  factory _ActivityBookingDetail.fromJson(Map<String, dynamic> json) => _$ActivityBookingDetailFromJson(json);

@override@JsonKey(name: "id") final  int? id;
@override@JsonKey(name: "title") final  String? title;
@override@JsonKey(name: "imageUrl") final  String? imageUrl;
@override@JsonKey(name: "location") final  String? location;
@override@JsonKey(name: "price") final  int? price;

/// Create a copy of ActivityBookingDetail
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ActivityBookingDetailCopyWith<_ActivityBookingDetail> get copyWith => __$ActivityBookingDetailCopyWithImpl<_ActivityBookingDetail>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ActivityBookingDetailToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ActivityBookingDetail&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.location, location) || other.location == location)&&(identical(other.price, price) || other.price == price));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,imageUrl,location,price);

@override
String toString() {
  return 'ActivityBookingDetail(id: $id, title: $title, imageUrl: $imageUrl, location: $location, price: $price)';
}


}

/// @nodoc
abstract mixin class _$ActivityBookingDetailCopyWith<$Res> implements $ActivityBookingDetailCopyWith<$Res> {
  factory _$ActivityBookingDetailCopyWith(_ActivityBookingDetail value, $Res Function(_ActivityBookingDetail) _then) = __$ActivityBookingDetailCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "title") String? title,@JsonKey(name: "imageUrl") String? imageUrl,@JsonKey(name: "location") String? location,@JsonKey(name: "price") int? price
});




}
/// @nodoc
class __$ActivityBookingDetailCopyWithImpl<$Res>
    implements _$ActivityBookingDetailCopyWith<$Res> {
  __$ActivityBookingDetailCopyWithImpl(this._self, this._then);

  final _ActivityBookingDetail _self;
  final $Res Function(_ActivityBookingDetail) _then;

/// Create a copy of ActivityBookingDetail
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? title = freezed,Object? imageUrl = freezed,Object? location = freezed,Object? price = freezed,}) {
  return _then(_ActivityBookingDetail(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$PaymentBookingDetail {

@JsonKey(name: "id") String? get id;@JsonKey(name: "method") String? get method;@JsonKey(name: "paymentStatus") String? get paymentStatus;@JsonKey(name: "paidAt") dynamic get paidAt;
/// Create a copy of PaymentBookingDetail
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentBookingDetailCopyWith<PaymentBookingDetail> get copyWith => _$PaymentBookingDetailCopyWithImpl<PaymentBookingDetail>(this as PaymentBookingDetail, _$identity);

  /// Serializes this PaymentBookingDetail to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentBookingDetail&&(identical(other.id, id) || other.id == id)&&(identical(other.method, method) || other.method == method)&&(identical(other.paymentStatus, paymentStatus) || other.paymentStatus == paymentStatus)&&const DeepCollectionEquality().equals(other.paidAt, paidAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,method,paymentStatus,const DeepCollectionEquality().hash(paidAt));

@override
String toString() {
  return 'PaymentBookingDetail(id: $id, method: $method, paymentStatus: $paymentStatus, paidAt: $paidAt)';
}


}

/// @nodoc
abstract mixin class $PaymentBookingDetailCopyWith<$Res>  {
  factory $PaymentBookingDetailCopyWith(PaymentBookingDetail value, $Res Function(PaymentBookingDetail) _then) = _$PaymentBookingDetailCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") String? id,@JsonKey(name: "method") String? method,@JsonKey(name: "paymentStatus") String? paymentStatus,@JsonKey(name: "paidAt") dynamic paidAt
});




}
/// @nodoc
class _$PaymentBookingDetailCopyWithImpl<$Res>
    implements $PaymentBookingDetailCopyWith<$Res> {
  _$PaymentBookingDetailCopyWithImpl(this._self, this._then);

  final PaymentBookingDetail _self;
  final $Res Function(PaymentBookingDetail) _then;

/// Create a copy of PaymentBookingDetail
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? method = freezed,Object? paymentStatus = freezed,Object? paidAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,method: freezed == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as String?,paymentStatus: freezed == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as String?,paidAt: freezed == paidAt ? _self.paidAt : paidAt // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentBookingDetail].
extension PaymentBookingDetailPatterns on PaymentBookingDetail {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentBookingDetail value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentBookingDetail() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentBookingDetail value)  $default,){
final _that = this;
switch (_that) {
case _PaymentBookingDetail():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentBookingDetail value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentBookingDetail() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  String? id, @JsonKey(name: "method")  String? method, @JsonKey(name: "paymentStatus")  String? paymentStatus, @JsonKey(name: "paidAt")  dynamic paidAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentBookingDetail() when $default != null:
return $default(_that.id,_that.method,_that.paymentStatus,_that.paidAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  String? id, @JsonKey(name: "method")  String? method, @JsonKey(name: "paymentStatus")  String? paymentStatus, @JsonKey(name: "paidAt")  dynamic paidAt)  $default,) {final _that = this;
switch (_that) {
case _PaymentBookingDetail():
return $default(_that.id,_that.method,_that.paymentStatus,_that.paidAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "id")  String? id, @JsonKey(name: "method")  String? method, @JsonKey(name: "paymentStatus")  String? paymentStatus, @JsonKey(name: "paidAt")  dynamic paidAt)?  $default,) {final _that = this;
switch (_that) {
case _PaymentBookingDetail() when $default != null:
return $default(_that.id,_that.method,_that.paymentStatus,_that.paidAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentBookingDetail implements PaymentBookingDetail {
  const _PaymentBookingDetail({@JsonKey(name: "id") this.id, @JsonKey(name: "method") this.method, @JsonKey(name: "paymentStatus") this.paymentStatus, @JsonKey(name: "paidAt") this.paidAt});
  factory _PaymentBookingDetail.fromJson(Map<String, dynamic> json) => _$PaymentBookingDetailFromJson(json);

@override@JsonKey(name: "id") final  String? id;
@override@JsonKey(name: "method") final  String? method;
@override@JsonKey(name: "paymentStatus") final  String? paymentStatus;
@override@JsonKey(name: "paidAt") final  dynamic paidAt;

/// Create a copy of PaymentBookingDetail
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentBookingDetailCopyWith<_PaymentBookingDetail> get copyWith => __$PaymentBookingDetailCopyWithImpl<_PaymentBookingDetail>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentBookingDetailToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentBookingDetail&&(identical(other.id, id) || other.id == id)&&(identical(other.method, method) || other.method == method)&&(identical(other.paymentStatus, paymentStatus) || other.paymentStatus == paymentStatus)&&const DeepCollectionEquality().equals(other.paidAt, paidAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,method,paymentStatus,const DeepCollectionEquality().hash(paidAt));

@override
String toString() {
  return 'PaymentBookingDetail(id: $id, method: $method, paymentStatus: $paymentStatus, paidAt: $paidAt)';
}


}

/// @nodoc
abstract mixin class _$PaymentBookingDetailCopyWith<$Res> implements $PaymentBookingDetailCopyWith<$Res> {
  factory _$PaymentBookingDetailCopyWith(_PaymentBookingDetail value, $Res Function(_PaymentBookingDetail) _then) = __$PaymentBookingDetailCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") String? id,@JsonKey(name: "method") String? method,@JsonKey(name: "paymentStatus") String? paymentStatus,@JsonKey(name: "paidAt") dynamic paidAt
});




}
/// @nodoc
class __$PaymentBookingDetailCopyWithImpl<$Res>
    implements _$PaymentBookingDetailCopyWith<$Res> {
  __$PaymentBookingDetailCopyWithImpl(this._self, this._then);

  final _PaymentBookingDetail _self;
  final $Res Function(_PaymentBookingDetail) _then;

/// Create a copy of PaymentBookingDetail
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? method = freezed,Object? paymentStatus = freezed,Object? paidAt = freezed,}) {
  return _then(_PaymentBookingDetail(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,method: freezed == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as String?,paymentStatus: freezed == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as String?,paidAt: freezed == paidAt ? _self.paidAt : paidAt // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

// dart format on
