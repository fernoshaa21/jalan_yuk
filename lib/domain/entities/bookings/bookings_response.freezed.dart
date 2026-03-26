// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bookings_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BookingsResponse {

 BookingsReponseData? get data; String? get message; dynamic get meta;
/// Create a copy of BookingsResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookingsResponseCopyWith<BookingsResponse> get copyWith => _$BookingsResponseCopyWithImpl<BookingsResponse>(this as BookingsResponse, _$identity);

  /// Serializes this BookingsResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookingsResponse&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.meta, meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data,message,const DeepCollectionEquality().hash(meta));

@override
String toString() {
  return 'BookingsResponse(data: $data, message: $message, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $BookingsResponseCopyWith<$Res>  {
  factory $BookingsResponseCopyWith(BookingsResponse value, $Res Function(BookingsResponse) _then) = _$BookingsResponseCopyWithImpl;
@useResult
$Res call({
 BookingsReponseData? data, String? message, dynamic meta
});


$BookingsReponseDataCopyWith<$Res>? get data;

}
/// @nodoc
class _$BookingsResponseCopyWithImpl<$Res>
    implements $BookingsResponseCopyWith<$Res> {
  _$BookingsResponseCopyWithImpl(this._self, this._then);

  final BookingsResponse _self;
  final $Res Function(BookingsResponse) _then;

/// Create a copy of BookingsResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,Object? message = freezed,Object? meta = freezed,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as BookingsReponseData?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}
/// Create a copy of BookingsResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BookingsReponseDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $BookingsReponseDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [BookingsResponse].
extension BookingsResponsePatterns on BookingsResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BookingsResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BookingsResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BookingsResponse value)  $default,){
final _that = this;
switch (_that) {
case _BookingsResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BookingsResponse value)?  $default,){
final _that = this;
switch (_that) {
case _BookingsResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( BookingsReponseData? data,  String? message,  dynamic meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BookingsResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( BookingsReponseData? data,  String? message,  dynamic meta)  $default,) {final _that = this;
switch (_that) {
case _BookingsResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( BookingsReponseData? data,  String? message,  dynamic meta)?  $default,) {final _that = this;
switch (_that) {
case _BookingsResponse() when $default != null:
return $default(_that.data,_that.message,_that.meta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BookingsResponse implements BookingsResponse {
  const _BookingsResponse({this.data, this.message, this.meta});
  factory _BookingsResponse.fromJson(Map<String, dynamic> json) => _$BookingsResponseFromJson(json);

@override final  BookingsReponseData? data;
@override final  String? message;
@override final  dynamic meta;

/// Create a copy of BookingsResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookingsResponseCopyWith<_BookingsResponse> get copyWith => __$BookingsResponseCopyWithImpl<_BookingsResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BookingsResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookingsResponse&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.meta, meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data,message,const DeepCollectionEquality().hash(meta));

@override
String toString() {
  return 'BookingsResponse(data: $data, message: $message, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$BookingsResponseCopyWith<$Res> implements $BookingsResponseCopyWith<$Res> {
  factory _$BookingsResponseCopyWith(_BookingsResponse value, $Res Function(_BookingsResponse) _then) = __$BookingsResponseCopyWithImpl;
@override @useResult
$Res call({
 BookingsReponseData? data, String? message, dynamic meta
});


@override $BookingsReponseDataCopyWith<$Res>? get data;

}
/// @nodoc
class __$BookingsResponseCopyWithImpl<$Res>
    implements _$BookingsResponseCopyWith<$Res> {
  __$BookingsResponseCopyWithImpl(this._self, this._then);

  final _BookingsResponse _self;
  final $Res Function(_BookingsResponse) _then;

/// Create a copy of BookingsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,Object? message = freezed,Object? meta = freezed,}) {
  return _then(_BookingsResponse(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as BookingsReponseData?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

/// Create a copy of BookingsResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BookingsReponseDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $BookingsReponseDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$BookingsReponseData {

 String? get id; Activity? get activity; DateTime? get bookingDate; int? get qty; int? get unitPrice; int? get totalPrice; String? get status; DateTime? get createdAt;
/// Create a copy of BookingsReponseData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookingsReponseDataCopyWith<BookingsReponseData> get copyWith => _$BookingsReponseDataCopyWithImpl<BookingsReponseData>(this as BookingsReponseData, _$identity);

  /// Serializes this BookingsReponseData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookingsReponseData&&(identical(other.id, id) || other.id == id)&&(identical(other.activity, activity) || other.activity == activity)&&(identical(other.bookingDate, bookingDate) || other.bookingDate == bookingDate)&&(identical(other.qty, qty) || other.qty == qty)&&(identical(other.unitPrice, unitPrice) || other.unitPrice == unitPrice)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,activity,bookingDate,qty,unitPrice,totalPrice,status,createdAt);

@override
String toString() {
  return 'BookingsReponseData(id: $id, activity: $activity, bookingDate: $bookingDate, qty: $qty, unitPrice: $unitPrice, totalPrice: $totalPrice, status: $status, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $BookingsReponseDataCopyWith<$Res>  {
  factory $BookingsReponseDataCopyWith(BookingsReponseData value, $Res Function(BookingsReponseData) _then) = _$BookingsReponseDataCopyWithImpl;
@useResult
$Res call({
 String? id, Activity? activity, DateTime? bookingDate, int? qty, int? unitPrice, int? totalPrice, String? status, DateTime? createdAt
});


$ActivityCopyWith<$Res>? get activity;

}
/// @nodoc
class _$BookingsReponseDataCopyWithImpl<$Res>
    implements $BookingsReponseDataCopyWith<$Res> {
  _$BookingsReponseDataCopyWithImpl(this._self, this._then);

  final BookingsReponseData _self;
  final $Res Function(BookingsReponseData) _then;

/// Create a copy of BookingsReponseData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? activity = freezed,Object? bookingDate = freezed,Object? qty = freezed,Object? unitPrice = freezed,Object? totalPrice = freezed,Object? status = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,activity: freezed == activity ? _self.activity : activity // ignore: cast_nullable_to_non_nullable
as Activity?,bookingDate: freezed == bookingDate ? _self.bookingDate : bookingDate // ignore: cast_nullable_to_non_nullable
as DateTime?,qty: freezed == qty ? _self.qty : qty // ignore: cast_nullable_to_non_nullable
as int?,unitPrice: freezed == unitPrice ? _self.unitPrice : unitPrice // ignore: cast_nullable_to_non_nullable
as int?,totalPrice: freezed == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}
/// Create a copy of BookingsReponseData
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


/// Adds pattern-matching-related methods to [BookingsReponseData].
extension BookingsReponseDataPatterns on BookingsReponseData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BookingsReponseData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BookingsReponseData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BookingsReponseData value)  $default,){
final _that = this;
switch (_that) {
case _BookingsReponseData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BookingsReponseData value)?  $default,){
final _that = this;
switch (_that) {
case _BookingsReponseData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  Activity? activity,  DateTime? bookingDate,  int? qty,  int? unitPrice,  int? totalPrice,  String? status,  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BookingsReponseData() when $default != null:
return $default(_that.id,_that.activity,_that.bookingDate,_that.qty,_that.unitPrice,_that.totalPrice,_that.status,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  Activity? activity,  DateTime? bookingDate,  int? qty,  int? unitPrice,  int? totalPrice,  String? status,  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _BookingsReponseData():
return $default(_that.id,_that.activity,_that.bookingDate,_that.qty,_that.unitPrice,_that.totalPrice,_that.status,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  Activity? activity,  DateTime? bookingDate,  int? qty,  int? unitPrice,  int? totalPrice,  String? status,  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _BookingsReponseData() when $default != null:
return $default(_that.id,_that.activity,_that.bookingDate,_that.qty,_that.unitPrice,_that.totalPrice,_that.status,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BookingsReponseData implements BookingsReponseData {
  const _BookingsReponseData({this.id, this.activity, this.bookingDate, this.qty, this.unitPrice, this.totalPrice, this.status, this.createdAt});
  factory _BookingsReponseData.fromJson(Map<String, dynamic> json) => _$BookingsReponseDataFromJson(json);

@override final  String? id;
@override final  Activity? activity;
@override final  DateTime? bookingDate;
@override final  int? qty;
@override final  int? unitPrice;
@override final  int? totalPrice;
@override final  String? status;
@override final  DateTime? createdAt;

/// Create a copy of BookingsReponseData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookingsReponseDataCopyWith<_BookingsReponseData> get copyWith => __$BookingsReponseDataCopyWithImpl<_BookingsReponseData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BookingsReponseDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookingsReponseData&&(identical(other.id, id) || other.id == id)&&(identical(other.activity, activity) || other.activity == activity)&&(identical(other.bookingDate, bookingDate) || other.bookingDate == bookingDate)&&(identical(other.qty, qty) || other.qty == qty)&&(identical(other.unitPrice, unitPrice) || other.unitPrice == unitPrice)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,activity,bookingDate,qty,unitPrice,totalPrice,status,createdAt);

@override
String toString() {
  return 'BookingsReponseData(id: $id, activity: $activity, bookingDate: $bookingDate, qty: $qty, unitPrice: $unitPrice, totalPrice: $totalPrice, status: $status, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$BookingsReponseDataCopyWith<$Res> implements $BookingsReponseDataCopyWith<$Res> {
  factory _$BookingsReponseDataCopyWith(_BookingsReponseData value, $Res Function(_BookingsReponseData) _then) = __$BookingsReponseDataCopyWithImpl;
@override @useResult
$Res call({
 String? id, Activity? activity, DateTime? bookingDate, int? qty, int? unitPrice, int? totalPrice, String? status, DateTime? createdAt
});


@override $ActivityCopyWith<$Res>? get activity;

}
/// @nodoc
class __$BookingsReponseDataCopyWithImpl<$Res>
    implements _$BookingsReponseDataCopyWith<$Res> {
  __$BookingsReponseDataCopyWithImpl(this._self, this._then);

  final _BookingsReponseData _self;
  final $Res Function(_BookingsReponseData) _then;

/// Create a copy of BookingsReponseData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? activity = freezed,Object? bookingDate = freezed,Object? qty = freezed,Object? unitPrice = freezed,Object? totalPrice = freezed,Object? status = freezed,Object? createdAt = freezed,}) {
  return _then(_BookingsReponseData(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,activity: freezed == activity ? _self.activity : activity // ignore: cast_nullable_to_non_nullable
as Activity?,bookingDate: freezed == bookingDate ? _self.bookingDate : bookingDate // ignore: cast_nullable_to_non_nullable
as DateTime?,qty: freezed == qty ? _self.qty : qty // ignore: cast_nullable_to_non_nullable
as int?,unitPrice: freezed == unitPrice ? _self.unitPrice : unitPrice // ignore: cast_nullable_to_non_nullable
as int?,totalPrice: freezed == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of BookingsReponseData
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

 int? get id; String? get title; String? get imageUrl; String? get location;
/// Create a copy of Activity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ActivityCopyWith<Activity> get copyWith => _$ActivityCopyWithImpl<Activity>(this as Activity, _$identity);

  /// Serializes this Activity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Activity&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.location, location) || other.location == location));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,imageUrl,location);

@override
String toString() {
  return 'Activity(id: $id, title: $title, imageUrl: $imageUrl, location: $location)';
}


}

/// @nodoc
abstract mixin class $ActivityCopyWith<$Res>  {
  factory $ActivityCopyWith(Activity value, $Res Function(Activity) _then) = _$ActivityCopyWithImpl;
@useResult
$Res call({
 int? id, String? title, String? imageUrl, String? location
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? title = freezed,Object? imageUrl = freezed,Object? location = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? title,  String? imageUrl,  String? location)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Activity() when $default != null:
return $default(_that.id,_that.title,_that.imageUrl,_that.location);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? title,  String? imageUrl,  String? location)  $default,) {final _that = this;
switch (_that) {
case _Activity():
return $default(_that.id,_that.title,_that.imageUrl,_that.location);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? title,  String? imageUrl,  String? location)?  $default,) {final _that = this;
switch (_that) {
case _Activity() when $default != null:
return $default(_that.id,_that.title,_that.imageUrl,_that.location);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Activity implements Activity {
  const _Activity({this.id, this.title, this.imageUrl, this.location});
  factory _Activity.fromJson(Map<String, dynamic> json) => _$ActivityFromJson(json);

@override final  int? id;
@override final  String? title;
@override final  String? imageUrl;
@override final  String? location;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Activity&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.location, location) || other.location == location));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,imageUrl,location);

@override
String toString() {
  return 'Activity(id: $id, title: $title, imageUrl: $imageUrl, location: $location)';
}


}

/// @nodoc
abstract mixin class _$ActivityCopyWith<$Res> implements $ActivityCopyWith<$Res> {
  factory _$ActivityCopyWith(_Activity value, $Res Function(_Activity) _then) = __$ActivityCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? title, String? imageUrl, String? location
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? title = freezed,Object? imageUrl = freezed,Object? location = freezed,}) {
  return _then(_Activity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
