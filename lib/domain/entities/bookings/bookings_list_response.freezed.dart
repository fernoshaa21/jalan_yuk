// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bookings_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BookingListResponse {

@JsonKey(name: "data") List<BookingListResponseData>? get data;@JsonKey(name: "message") String? get message;@JsonKey(name: "meta") Meta? get meta;
/// Create a copy of BookingListResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookingListResponseCopyWith<BookingListResponse> get copyWith => _$BookingListResponseCopyWithImpl<BookingListResponse>(this as BookingListResponse, _$identity);

  /// Serializes this BookingListResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookingListResponse&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.message, message) || other.message == message)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),message,meta);

@override
String toString() {
  return 'BookingListResponse(data: $data, message: $message, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $BookingListResponseCopyWith<$Res>  {
  factory $BookingListResponseCopyWith(BookingListResponse value, $Res Function(BookingListResponse) _then) = _$BookingListResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "data") List<BookingListResponseData>? data,@JsonKey(name: "message") String? message,@JsonKey(name: "meta") Meta? meta
});


$MetaCopyWith<$Res>? get meta;

}
/// @nodoc
class _$BookingListResponseCopyWithImpl<$Res>
    implements $BookingListResponseCopyWith<$Res> {
  _$BookingListResponseCopyWithImpl(this._self, this._then);

  final BookingListResponse _self;
  final $Res Function(BookingListResponse) _then;

/// Create a copy of BookingListResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,Object? message = freezed,Object? meta = freezed,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<BookingListResponseData>?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as Meta?,
  ));
}
/// Create a copy of BookingListResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetaCopyWith<$Res>? get meta {
    if (_self.meta == null) {
    return null;
  }

  return $MetaCopyWith<$Res>(_self.meta!, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// Adds pattern-matching-related methods to [BookingListResponse].
extension BookingListResponsePatterns on BookingListResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BookingListResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BookingListResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BookingListResponse value)  $default,){
final _that = this;
switch (_that) {
case _BookingListResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BookingListResponse value)?  $default,){
final _that = this;
switch (_that) {
case _BookingListResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "data")  List<BookingListResponseData>? data, @JsonKey(name: "message")  String? message, @JsonKey(name: "meta")  Meta? meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BookingListResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "data")  List<BookingListResponseData>? data, @JsonKey(name: "message")  String? message, @JsonKey(name: "meta")  Meta? meta)  $default,) {final _that = this;
switch (_that) {
case _BookingListResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "data")  List<BookingListResponseData>? data, @JsonKey(name: "message")  String? message, @JsonKey(name: "meta")  Meta? meta)?  $default,) {final _that = this;
switch (_that) {
case _BookingListResponse() when $default != null:
return $default(_that.data,_that.message,_that.meta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BookingListResponse implements BookingListResponse {
  const _BookingListResponse({@JsonKey(name: "data") final  List<BookingListResponseData>? data, @JsonKey(name: "message") this.message, @JsonKey(name: "meta") this.meta}): _data = data;
  factory _BookingListResponse.fromJson(Map<String, dynamic> json) => _$BookingListResponseFromJson(json);

 final  List<BookingListResponseData>? _data;
@override@JsonKey(name: "data") List<BookingListResponseData>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: "message") final  String? message;
@override@JsonKey(name: "meta") final  Meta? meta;

/// Create a copy of BookingListResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookingListResponseCopyWith<_BookingListResponse> get copyWith => __$BookingListResponseCopyWithImpl<_BookingListResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BookingListResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookingListResponse&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.message, message) || other.message == message)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),message,meta);

@override
String toString() {
  return 'BookingListResponse(data: $data, message: $message, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$BookingListResponseCopyWith<$Res> implements $BookingListResponseCopyWith<$Res> {
  factory _$BookingListResponseCopyWith(_BookingListResponse value, $Res Function(_BookingListResponse) _then) = __$BookingListResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "data") List<BookingListResponseData>? data,@JsonKey(name: "message") String? message,@JsonKey(name: "meta") Meta? meta
});


@override $MetaCopyWith<$Res>? get meta;

}
/// @nodoc
class __$BookingListResponseCopyWithImpl<$Res>
    implements _$BookingListResponseCopyWith<$Res> {
  __$BookingListResponseCopyWithImpl(this._self, this._then);

  final _BookingListResponse _self;
  final $Res Function(_BookingListResponse) _then;

/// Create a copy of BookingListResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,Object? message = freezed,Object? meta = freezed,}) {
  return _then(_BookingListResponse(
data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<BookingListResponseData>?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as Meta?,
  ));
}

/// Create a copy of BookingListResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetaCopyWith<$Res>? get meta {
    if (_self.meta == null) {
    return null;
  }

  return $MetaCopyWith<$Res>(_self.meta!, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// @nodoc
mixin _$BookingListResponseData {

@JsonKey(name: "id") String? get id;@JsonKey(name: "activity") Activity? get activity;@JsonKey(name: "bookingDate") DateTime? get bookingDate;@JsonKey(name: "qty") int? get qty;@JsonKey(name: "totalPrice") int? get totalPrice;@JsonKey(name: "bookingStatus") String? get bookingStatus;@JsonKey(name: "paymentStatus") dynamic get paymentStatus;@JsonKey(name: "createdAt") DateTime? get createdAt;
/// Create a copy of BookingListResponseData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookingListResponseDataCopyWith<BookingListResponseData> get copyWith => _$BookingListResponseDataCopyWithImpl<BookingListResponseData>(this as BookingListResponseData, _$identity);

  /// Serializes this BookingListResponseData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookingListResponseData&&(identical(other.id, id) || other.id == id)&&(identical(other.activity, activity) || other.activity == activity)&&(identical(other.bookingDate, bookingDate) || other.bookingDate == bookingDate)&&(identical(other.qty, qty) || other.qty == qty)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice)&&(identical(other.bookingStatus, bookingStatus) || other.bookingStatus == bookingStatus)&&const DeepCollectionEquality().equals(other.paymentStatus, paymentStatus)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,activity,bookingDate,qty,totalPrice,bookingStatus,const DeepCollectionEquality().hash(paymentStatus),createdAt);

@override
String toString() {
  return 'BookingListResponseData(id: $id, activity: $activity, bookingDate: $bookingDate, qty: $qty, totalPrice: $totalPrice, bookingStatus: $bookingStatus, paymentStatus: $paymentStatus, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $BookingListResponseDataCopyWith<$Res>  {
  factory $BookingListResponseDataCopyWith(BookingListResponseData value, $Res Function(BookingListResponseData) _then) = _$BookingListResponseDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") String? id,@JsonKey(name: "activity") Activity? activity,@JsonKey(name: "bookingDate") DateTime? bookingDate,@JsonKey(name: "qty") int? qty,@JsonKey(name: "totalPrice") int? totalPrice,@JsonKey(name: "bookingStatus") String? bookingStatus,@JsonKey(name: "paymentStatus") dynamic paymentStatus,@JsonKey(name: "createdAt") DateTime? createdAt
});


$ActivityCopyWith<$Res>? get activity;

}
/// @nodoc
class _$BookingListResponseDataCopyWithImpl<$Res>
    implements $BookingListResponseDataCopyWith<$Res> {
  _$BookingListResponseDataCopyWithImpl(this._self, this._then);

  final BookingListResponseData _self;
  final $Res Function(BookingListResponseData) _then;

/// Create a copy of BookingListResponseData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? activity = freezed,Object? bookingDate = freezed,Object? qty = freezed,Object? totalPrice = freezed,Object? bookingStatus = freezed,Object? paymentStatus = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,activity: freezed == activity ? _self.activity : activity // ignore: cast_nullable_to_non_nullable
as Activity?,bookingDate: freezed == bookingDate ? _self.bookingDate : bookingDate // ignore: cast_nullable_to_non_nullable
as DateTime?,qty: freezed == qty ? _self.qty : qty // ignore: cast_nullable_to_non_nullable
as int?,totalPrice: freezed == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as int?,bookingStatus: freezed == bookingStatus ? _self.bookingStatus : bookingStatus // ignore: cast_nullable_to_non_nullable
as String?,paymentStatus: freezed == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as dynamic,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}
/// Create a copy of BookingListResponseData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ActivityCopyWith<$Res>? get activity {
    if (_self.activity == null) {
    return null;
  }

  return $ActivityCopyWith<$Res>(_self.activity!, (value) {
    return _then(_self.copyWith(activity: value));
  });
}
}


/// Adds pattern-matching-related methods to [BookingListResponseData].
extension BookingListResponseDataPatterns on BookingListResponseData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BookingListResponseData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BookingListResponseData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BookingListResponseData value)  $default,){
final _that = this;
switch (_that) {
case _BookingListResponseData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BookingListResponseData value)?  $default,){
final _that = this;
switch (_that) {
case _BookingListResponseData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  String? id, @JsonKey(name: "activity")  Activity? activity, @JsonKey(name: "bookingDate")  DateTime? bookingDate, @JsonKey(name: "qty")  int? qty, @JsonKey(name: "totalPrice")  int? totalPrice, @JsonKey(name: "bookingStatus")  String? bookingStatus, @JsonKey(name: "paymentStatus")  dynamic paymentStatus, @JsonKey(name: "createdAt")  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BookingListResponseData() when $default != null:
return $default(_that.id,_that.activity,_that.bookingDate,_that.qty,_that.totalPrice,_that.bookingStatus,_that.paymentStatus,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  String? id, @JsonKey(name: "activity")  Activity? activity, @JsonKey(name: "bookingDate")  DateTime? bookingDate, @JsonKey(name: "qty")  int? qty, @JsonKey(name: "totalPrice")  int? totalPrice, @JsonKey(name: "bookingStatus")  String? bookingStatus, @JsonKey(name: "paymentStatus")  dynamic paymentStatus, @JsonKey(name: "createdAt")  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _BookingListResponseData():
return $default(_that.id,_that.activity,_that.bookingDate,_that.qty,_that.totalPrice,_that.bookingStatus,_that.paymentStatus,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "id")  String? id, @JsonKey(name: "activity")  Activity? activity, @JsonKey(name: "bookingDate")  DateTime? bookingDate, @JsonKey(name: "qty")  int? qty, @JsonKey(name: "totalPrice")  int? totalPrice, @JsonKey(name: "bookingStatus")  String? bookingStatus, @JsonKey(name: "paymentStatus")  dynamic paymentStatus, @JsonKey(name: "createdAt")  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _BookingListResponseData() when $default != null:
return $default(_that.id,_that.activity,_that.bookingDate,_that.qty,_that.totalPrice,_that.bookingStatus,_that.paymentStatus,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BookingListResponseData implements BookingListResponseData {
  const _BookingListResponseData({@JsonKey(name: "id") this.id, @JsonKey(name: "activity") this.activity, @JsonKey(name: "bookingDate") this.bookingDate, @JsonKey(name: "qty") this.qty, @JsonKey(name: "totalPrice") this.totalPrice, @JsonKey(name: "bookingStatus") this.bookingStatus, @JsonKey(name: "paymentStatus") this.paymentStatus, @JsonKey(name: "createdAt") this.createdAt});
  factory _BookingListResponseData.fromJson(Map<String, dynamic> json) => _$BookingListResponseDataFromJson(json);

@override@JsonKey(name: "id") final  String? id;
@override@JsonKey(name: "activity") final  Activity? activity;
@override@JsonKey(name: "bookingDate") final  DateTime? bookingDate;
@override@JsonKey(name: "qty") final  int? qty;
@override@JsonKey(name: "totalPrice") final  int? totalPrice;
@override@JsonKey(name: "bookingStatus") final  String? bookingStatus;
@override@JsonKey(name: "paymentStatus") final  dynamic paymentStatus;
@override@JsonKey(name: "createdAt") final  DateTime? createdAt;

/// Create a copy of BookingListResponseData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookingListResponseDataCopyWith<_BookingListResponseData> get copyWith => __$BookingListResponseDataCopyWithImpl<_BookingListResponseData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BookingListResponseDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookingListResponseData&&(identical(other.id, id) || other.id == id)&&(identical(other.activity, activity) || other.activity == activity)&&(identical(other.bookingDate, bookingDate) || other.bookingDate == bookingDate)&&(identical(other.qty, qty) || other.qty == qty)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice)&&(identical(other.bookingStatus, bookingStatus) || other.bookingStatus == bookingStatus)&&const DeepCollectionEquality().equals(other.paymentStatus, paymentStatus)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,activity,bookingDate,qty,totalPrice,bookingStatus,const DeepCollectionEquality().hash(paymentStatus),createdAt);

@override
String toString() {
  return 'BookingListResponseData(id: $id, activity: $activity, bookingDate: $bookingDate, qty: $qty, totalPrice: $totalPrice, bookingStatus: $bookingStatus, paymentStatus: $paymentStatus, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$BookingListResponseDataCopyWith<$Res> implements $BookingListResponseDataCopyWith<$Res> {
  factory _$BookingListResponseDataCopyWith(_BookingListResponseData value, $Res Function(_BookingListResponseData) _then) = __$BookingListResponseDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") String? id,@JsonKey(name: "activity") Activity? activity,@JsonKey(name: "bookingDate") DateTime? bookingDate,@JsonKey(name: "qty") int? qty,@JsonKey(name: "totalPrice") int? totalPrice,@JsonKey(name: "bookingStatus") String? bookingStatus,@JsonKey(name: "paymentStatus") dynamic paymentStatus,@JsonKey(name: "createdAt") DateTime? createdAt
});


@override $ActivityCopyWith<$Res>? get activity;

}
/// @nodoc
class __$BookingListResponseDataCopyWithImpl<$Res>
    implements _$BookingListResponseDataCopyWith<$Res> {
  __$BookingListResponseDataCopyWithImpl(this._self, this._then);

  final _BookingListResponseData _self;
  final $Res Function(_BookingListResponseData) _then;

/// Create a copy of BookingListResponseData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? activity = freezed,Object? bookingDate = freezed,Object? qty = freezed,Object? totalPrice = freezed,Object? bookingStatus = freezed,Object? paymentStatus = freezed,Object? createdAt = freezed,}) {
  return _then(_BookingListResponseData(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,activity: freezed == activity ? _self.activity : activity // ignore: cast_nullable_to_non_nullable
as Activity?,bookingDate: freezed == bookingDate ? _self.bookingDate : bookingDate // ignore: cast_nullable_to_non_nullable
as DateTime?,qty: freezed == qty ? _self.qty : qty // ignore: cast_nullable_to_non_nullable
as int?,totalPrice: freezed == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as int?,bookingStatus: freezed == bookingStatus ? _self.bookingStatus : bookingStatus // ignore: cast_nullable_to_non_nullable
as String?,paymentStatus: freezed == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as dynamic,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of BookingListResponseData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ActivityCopyWith<$Res>? get activity {
    if (_self.activity == null) {
    return null;
  }

  return $ActivityCopyWith<$Res>(_self.activity!, (value) {
    return _then(_self.copyWith(activity: value));
  });
}
}


/// @nodoc
mixin _$Activity {

@JsonKey(name: "id") int? get id;@JsonKey(name: "title") String? get title;@JsonKey(name: "imageUrl") String? get imageUrl;@JsonKey(name: "location") String? get location;@JsonKey(name: "category") String? get category;
/// Create a copy of Activity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ActivityCopyWith<Activity> get copyWith => _$ActivityCopyWithImpl<Activity>(this as Activity, _$identity);

  /// Serializes this Activity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Activity&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.location, location) || other.location == location)&&(identical(other.category, category) || other.category == category));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,imageUrl,location,category);

@override
String toString() {
  return 'Activity(id: $id, title: $title, imageUrl: $imageUrl, location: $location, category: $category)';
}


}

/// @nodoc
abstract mixin class $ActivityCopyWith<$Res>  {
  factory $ActivityCopyWith(Activity value, $Res Function(Activity) _then) = _$ActivityCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "title") String? title,@JsonKey(name: "imageUrl") String? imageUrl,@JsonKey(name: "location") String? location,@JsonKey(name: "category") String? category
});




}
/// @nodoc
class _$ActivityCopyWithImpl<$Res>
    implements $ActivityCopyWith<$Res> {
  _$ActivityCopyWithImpl(this._self, this._then);

  final Activity _self;
  final $Res Function(Activity) _then;

/// Create a copy of Activity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? title = freezed,Object? imageUrl = freezed,Object? location = freezed,Object? category = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Activity].
extension ActivityPatterns on Activity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Activity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Activity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Activity value)  $default,){
final _that = this;
switch (_that) {
case _Activity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Activity value)?  $default,){
final _that = this;
switch (_that) {
case _Activity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "title")  String? title, @JsonKey(name: "imageUrl")  String? imageUrl, @JsonKey(name: "location")  String? location, @JsonKey(name: "category")  String? category)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Activity() when $default != null:
return $default(_that.id,_that.title,_that.imageUrl,_that.location,_that.category);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "title")  String? title, @JsonKey(name: "imageUrl")  String? imageUrl, @JsonKey(name: "location")  String? location, @JsonKey(name: "category")  String? category)  $default,) {final _that = this;
switch (_that) {
case _Activity():
return $default(_that.id,_that.title,_that.imageUrl,_that.location,_that.category);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "title")  String? title, @JsonKey(name: "imageUrl")  String? imageUrl, @JsonKey(name: "location")  String? location, @JsonKey(name: "category")  String? category)?  $default,) {final _that = this;
switch (_that) {
case _Activity() when $default != null:
return $default(_that.id,_that.title,_that.imageUrl,_that.location,_that.category);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Activity implements Activity {
  const _Activity({@JsonKey(name: "id") this.id, @JsonKey(name: "title") this.title, @JsonKey(name: "imageUrl") this.imageUrl, @JsonKey(name: "location") this.location, @JsonKey(name: "category") this.category});
  factory _Activity.fromJson(Map<String, dynamic> json) => _$ActivityFromJson(json);

@override@JsonKey(name: "id") final  int? id;
@override@JsonKey(name: "title") final  String? title;
@override@JsonKey(name: "imageUrl") final  String? imageUrl;
@override@JsonKey(name: "location") final  String? location;
@override@JsonKey(name: "category") final  String? category;

/// Create a copy of Activity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ActivityCopyWith<_Activity> get copyWith => __$ActivityCopyWithImpl<_Activity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ActivityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Activity&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.location, location) || other.location == location)&&(identical(other.category, category) || other.category == category));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,imageUrl,location,category);

@override
String toString() {
  return 'Activity(id: $id, title: $title, imageUrl: $imageUrl, location: $location, category: $category)';
}


}

/// @nodoc
abstract mixin class _$ActivityCopyWith<$Res> implements $ActivityCopyWith<$Res> {
  factory _$ActivityCopyWith(_Activity value, $Res Function(_Activity) _then) = __$ActivityCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "title") String? title,@JsonKey(name: "imageUrl") String? imageUrl,@JsonKey(name: "location") String? location,@JsonKey(name: "category") String? category
});




}
/// @nodoc
class __$ActivityCopyWithImpl<$Res>
    implements _$ActivityCopyWith<$Res> {
  __$ActivityCopyWithImpl(this._self, this._then);

  final _Activity _self;
  final $Res Function(_Activity) _then;

/// Create a copy of Activity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? title = freezed,Object? imageUrl = freezed,Object? location = freezed,Object? category = freezed,}) {
  return _then(_Activity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Meta {

@JsonKey(name: "total") int? get total;@JsonKey(name: "page") int? get page;@JsonKey(name: "limit") int? get limit;@JsonKey(name: "totalPages") int? get totalPages;
/// Create a copy of Meta
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MetaCopyWith<Meta> get copyWith => _$MetaCopyWithImpl<Meta>(this as Meta, _$identity);

  /// Serializes this Meta to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Meta&&(identical(other.total, total) || other.total == total)&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,page,limit,totalPages);

@override
String toString() {
  return 'Meta(total: $total, page: $page, limit: $limit, totalPages: $totalPages)';
}


}

/// @nodoc
abstract mixin class $MetaCopyWith<$Res>  {
  factory $MetaCopyWith(Meta value, $Res Function(Meta) _then) = _$MetaCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "total") int? total,@JsonKey(name: "page") int? page,@JsonKey(name: "limit") int? limit,@JsonKey(name: "totalPages") int? totalPages
});




}
/// @nodoc
class _$MetaCopyWithImpl<$Res>
    implements $MetaCopyWith<$Res> {
  _$MetaCopyWithImpl(this._self, this._then);

  final Meta _self;
  final $Res Function(Meta) _then;

/// Create a copy of Meta
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? total = freezed,Object? page = freezed,Object? limit = freezed,Object? totalPages = freezed,}) {
  return _then(_self.copyWith(
total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,limit: freezed == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int?,totalPages: freezed == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [Meta].
extension MetaPatterns on Meta {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Meta value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Meta() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Meta value)  $default,){
final _that = this;
switch (_that) {
case _Meta():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Meta value)?  $default,){
final _that = this;
switch (_that) {
case _Meta() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "total")  int? total, @JsonKey(name: "page")  int? page, @JsonKey(name: "limit")  int? limit, @JsonKey(name: "totalPages")  int? totalPages)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Meta() when $default != null:
return $default(_that.total,_that.page,_that.limit,_that.totalPages);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "total")  int? total, @JsonKey(name: "page")  int? page, @JsonKey(name: "limit")  int? limit, @JsonKey(name: "totalPages")  int? totalPages)  $default,) {final _that = this;
switch (_that) {
case _Meta():
return $default(_that.total,_that.page,_that.limit,_that.totalPages);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "total")  int? total, @JsonKey(name: "page")  int? page, @JsonKey(name: "limit")  int? limit, @JsonKey(name: "totalPages")  int? totalPages)?  $default,) {final _that = this;
switch (_that) {
case _Meta() when $default != null:
return $default(_that.total,_that.page,_that.limit,_that.totalPages);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Meta implements Meta {
  const _Meta({@JsonKey(name: "total") this.total, @JsonKey(name: "page") this.page, @JsonKey(name: "limit") this.limit, @JsonKey(name: "totalPages") this.totalPages});
  factory _Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);

@override@JsonKey(name: "total") final  int? total;
@override@JsonKey(name: "page") final  int? page;
@override@JsonKey(name: "limit") final  int? limit;
@override@JsonKey(name: "totalPages") final  int? totalPages;

/// Create a copy of Meta
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MetaCopyWith<_Meta> get copyWith => __$MetaCopyWithImpl<_Meta>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MetaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Meta&&(identical(other.total, total) || other.total == total)&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,page,limit,totalPages);

@override
String toString() {
  return 'Meta(total: $total, page: $page, limit: $limit, totalPages: $totalPages)';
}


}

/// @nodoc
abstract mixin class _$MetaCopyWith<$Res> implements $MetaCopyWith<$Res> {
  factory _$MetaCopyWith(_Meta value, $Res Function(_Meta) _then) = __$MetaCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "total") int? total,@JsonKey(name: "page") int? page,@JsonKey(name: "limit") int? limit,@JsonKey(name: "totalPages") int? totalPages
});




}
/// @nodoc
class __$MetaCopyWithImpl<$Res>
    implements _$MetaCopyWith<$Res> {
  __$MetaCopyWithImpl(this._self, this._then);

  final _Meta _self;
  final $Res Function(_Meta) _then;

/// Create a copy of Meta
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = freezed,Object? page = freezed,Object? limit = freezed,Object? totalPages = freezed,}) {
  return _then(_Meta(
total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,limit: freezed == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int?,totalPages: freezed == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
