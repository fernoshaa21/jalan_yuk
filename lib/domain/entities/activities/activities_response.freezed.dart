// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activities_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ActivitiesResponse {

 List<ActivitiesResponseData> get data; String? get message; ActivitiesMeta? get meta;
/// Create a copy of ActivitiesResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ActivitiesResponseCopyWith<ActivitiesResponse> get copyWith => _$ActivitiesResponseCopyWithImpl<ActivitiesResponse>(this as ActivitiesResponse, _$identity);

  /// Serializes this ActivitiesResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ActivitiesResponse&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.message, message) || other.message == message)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),message,meta);

@override
String toString() {
  return 'ActivitiesResponse(data: $data, message: $message, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $ActivitiesResponseCopyWith<$Res>  {
  factory $ActivitiesResponseCopyWith(ActivitiesResponse value, $Res Function(ActivitiesResponse) _then) = _$ActivitiesResponseCopyWithImpl;
@useResult
$Res call({
 List<ActivitiesResponseData> data, String? message, ActivitiesMeta? meta
});


$ActivitiesMetaCopyWith<$Res>? get meta;

}
/// @nodoc
class _$ActivitiesResponseCopyWithImpl<$Res>
    implements $ActivitiesResponseCopyWith<$Res> {
  _$ActivitiesResponseCopyWithImpl(this._self, this._then);

  final ActivitiesResponse _self;
  final $Res Function(ActivitiesResponse) _then;

/// Create a copy of ActivitiesResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? message = freezed,Object? meta = freezed,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<ActivitiesResponseData>,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as ActivitiesMeta?,
  ));
}
/// Create a copy of ActivitiesResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ActivitiesMetaCopyWith<$Res>? get meta {
    if (_self.meta == null) {
    return null;
  }

  return $ActivitiesMetaCopyWith<$Res>(_self.meta!, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// Adds pattern-matching-related methods to [ActivitiesResponse].
extension ActivitiesResponsePatterns on ActivitiesResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ActivitiesResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ActivitiesResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ActivitiesResponse value)  $default,){
final _that = this;
switch (_that) {
case _ActivitiesResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ActivitiesResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ActivitiesResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ActivitiesResponseData> data,  String? message,  ActivitiesMeta? meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ActivitiesResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ActivitiesResponseData> data,  String? message,  ActivitiesMeta? meta)  $default,) {final _that = this;
switch (_that) {
case _ActivitiesResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ActivitiesResponseData> data,  String? message,  ActivitiesMeta? meta)?  $default,) {final _that = this;
switch (_that) {
case _ActivitiesResponse() when $default != null:
return $default(_that.data,_that.message,_that.meta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ActivitiesResponse implements ActivitiesResponse {
  const _ActivitiesResponse({final  List<ActivitiesResponseData> data = const <ActivitiesResponseData>[], this.message, this.meta}): _data = data;
  factory _ActivitiesResponse.fromJson(Map<String, dynamic> json) => _$ActivitiesResponseFromJson(json);

 final  List<ActivitiesResponseData> _data;
@override@JsonKey() List<ActivitiesResponseData> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override final  String? message;
@override final  ActivitiesMeta? meta;

/// Create a copy of ActivitiesResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ActivitiesResponseCopyWith<_ActivitiesResponse> get copyWith => __$ActivitiesResponseCopyWithImpl<_ActivitiesResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ActivitiesResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ActivitiesResponse&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.message, message) || other.message == message)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),message,meta);

@override
String toString() {
  return 'ActivitiesResponse(data: $data, message: $message, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$ActivitiesResponseCopyWith<$Res> implements $ActivitiesResponseCopyWith<$Res> {
  factory _$ActivitiesResponseCopyWith(_ActivitiesResponse value, $Res Function(_ActivitiesResponse) _then) = __$ActivitiesResponseCopyWithImpl;
@override @useResult
$Res call({
 List<ActivitiesResponseData> data, String? message, ActivitiesMeta? meta
});


@override $ActivitiesMetaCopyWith<$Res>? get meta;

}
/// @nodoc
class __$ActivitiesResponseCopyWithImpl<$Res>
    implements _$ActivitiesResponseCopyWith<$Res> {
  __$ActivitiesResponseCopyWithImpl(this._self, this._then);

  final _ActivitiesResponse _self;
  final $Res Function(_ActivitiesResponse) _then;

/// Create a copy of ActivitiesResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? message = freezed,Object? meta = freezed,}) {
  return _then(_ActivitiesResponse(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<ActivitiesResponseData>,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as ActivitiesMeta?,
  ));
}

/// Create a copy of ActivitiesResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ActivitiesMetaCopyWith<$Res>? get meta {
    if (_self.meta == null) {
    return null;
  }

  return $ActivitiesMetaCopyWith<$Res>(_self.meta!, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// @nodoc
mixin _$ActivitiesResponseData {

 int? get id; String? get title; String? get description; String? get location; String? get price; int? get availableSlots; int? get currentParticipants; String? get imageUrl; bool? get isFeatured; bool? get isActive; Category? get category; String? get rating; DateTime? get createdAt; DateTime? get updatedAt;
/// Create a copy of ActivitiesResponseData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ActivitiesResponseDataCopyWith<ActivitiesResponseData> get copyWith => _$ActivitiesResponseDataCopyWithImpl<ActivitiesResponseData>(this as ActivitiesResponseData, _$identity);

  /// Serializes this ActivitiesResponseData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ActivitiesResponseData&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.location, location) || other.location == location)&&(identical(other.price, price) || other.price == price)&&(identical(other.availableSlots, availableSlots) || other.availableSlots == availableSlots)&&(identical(other.currentParticipants, currentParticipants) || other.currentParticipants == currentParticipants)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.isFeatured, isFeatured) || other.isFeatured == isFeatured)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.category, category) || other.category == category)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,location,price,availableSlots,currentParticipants,imageUrl,isFeatured,isActive,category,rating,createdAt,updatedAt);

@override
String toString() {
  return 'ActivitiesResponseData(id: $id, title: $title, description: $description, location: $location, price: $price, availableSlots: $availableSlots, currentParticipants: $currentParticipants, imageUrl: $imageUrl, isFeatured: $isFeatured, isActive: $isActive, category: $category, rating: $rating, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $ActivitiesResponseDataCopyWith<$Res>  {
  factory $ActivitiesResponseDataCopyWith(ActivitiesResponseData value, $Res Function(ActivitiesResponseData) _then) = _$ActivitiesResponseDataCopyWithImpl;
@useResult
$Res call({
 int? id, String? title, String? description, String? location, String? price, int? availableSlots, int? currentParticipants, String? imageUrl, bool? isFeatured, bool? isActive, Category? category, String? rating, DateTime? createdAt, DateTime? updatedAt
});




}
/// @nodoc
class _$ActivitiesResponseDataCopyWithImpl<$Res>
    implements $ActivitiesResponseDataCopyWith<$Res> {
  _$ActivitiesResponseDataCopyWithImpl(this._self, this._then);

  final ActivitiesResponseData _self;
  final $Res Function(ActivitiesResponseData) _then;

/// Create a copy of ActivitiesResponseData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? title = freezed,Object? description = freezed,Object? location = freezed,Object? price = freezed,Object? availableSlots = freezed,Object? currentParticipants = freezed,Object? imageUrl = freezed,Object? isFeatured = freezed,Object? isActive = freezed,Object? category = freezed,Object? rating = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String?,availableSlots: freezed == availableSlots ? _self.availableSlots : availableSlots // ignore: cast_nullable_to_non_nullable
as int?,currentParticipants: freezed == currentParticipants ? _self.currentParticipants : currentParticipants // ignore: cast_nullable_to_non_nullable
as int?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,isFeatured: freezed == isFeatured ? _self.isFeatured : isFeatured // ignore: cast_nullable_to_non_nullable
as bool?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as Category?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [ActivitiesResponseData].
extension ActivitiesResponseDataPatterns on ActivitiesResponseData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ActivitiesResponseData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ActivitiesResponseData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ActivitiesResponseData value)  $default,){
final _that = this;
switch (_that) {
case _ActivitiesResponseData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ActivitiesResponseData value)?  $default,){
final _that = this;
switch (_that) {
case _ActivitiesResponseData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? title,  String? description,  String? location,  String? price,  int? availableSlots,  int? currentParticipants,  String? imageUrl,  bool? isFeatured,  bool? isActive,  Category? category,  String? rating,  DateTime? createdAt,  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ActivitiesResponseData() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.location,_that.price,_that.availableSlots,_that.currentParticipants,_that.imageUrl,_that.isFeatured,_that.isActive,_that.category,_that.rating,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? title,  String? description,  String? location,  String? price,  int? availableSlots,  int? currentParticipants,  String? imageUrl,  bool? isFeatured,  bool? isActive,  Category? category,  String? rating,  DateTime? createdAt,  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _ActivitiesResponseData():
return $default(_that.id,_that.title,_that.description,_that.location,_that.price,_that.availableSlots,_that.currentParticipants,_that.imageUrl,_that.isFeatured,_that.isActive,_that.category,_that.rating,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? title,  String? description,  String? location,  String? price,  int? availableSlots,  int? currentParticipants,  String? imageUrl,  bool? isFeatured,  bool? isActive,  Category? category,  String? rating,  DateTime? createdAt,  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _ActivitiesResponseData() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.location,_that.price,_that.availableSlots,_that.currentParticipants,_that.imageUrl,_that.isFeatured,_that.isActive,_that.category,_that.rating,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ActivitiesResponseData implements ActivitiesResponseData {
  const _ActivitiesResponseData({this.id, this.title, this.description, this.location, this.price, this.availableSlots, this.currentParticipants, this.imageUrl, this.isFeatured, this.isActive, this.category, this.rating, this.createdAt, this.updatedAt});
  factory _ActivitiesResponseData.fromJson(Map<String, dynamic> json) => _$ActivitiesResponseDataFromJson(json);

@override final  int? id;
@override final  String? title;
@override final  String? description;
@override final  String? location;
@override final  String? price;
@override final  int? availableSlots;
@override final  int? currentParticipants;
@override final  String? imageUrl;
@override final  bool? isFeatured;
@override final  bool? isActive;
@override final  Category? category;
@override final  String? rating;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;

/// Create a copy of ActivitiesResponseData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ActivitiesResponseDataCopyWith<_ActivitiesResponseData> get copyWith => __$ActivitiesResponseDataCopyWithImpl<_ActivitiesResponseData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ActivitiesResponseDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ActivitiesResponseData&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.location, location) || other.location == location)&&(identical(other.price, price) || other.price == price)&&(identical(other.availableSlots, availableSlots) || other.availableSlots == availableSlots)&&(identical(other.currentParticipants, currentParticipants) || other.currentParticipants == currentParticipants)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.isFeatured, isFeatured) || other.isFeatured == isFeatured)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.category, category) || other.category == category)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,location,price,availableSlots,currentParticipants,imageUrl,isFeatured,isActive,category,rating,createdAt,updatedAt);

@override
String toString() {
  return 'ActivitiesResponseData(id: $id, title: $title, description: $description, location: $location, price: $price, availableSlots: $availableSlots, currentParticipants: $currentParticipants, imageUrl: $imageUrl, isFeatured: $isFeatured, isActive: $isActive, category: $category, rating: $rating, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$ActivitiesResponseDataCopyWith<$Res> implements $ActivitiesResponseDataCopyWith<$Res> {
  factory _$ActivitiesResponseDataCopyWith(_ActivitiesResponseData value, $Res Function(_ActivitiesResponseData) _then) = __$ActivitiesResponseDataCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? title, String? description, String? location, String? price, int? availableSlots, int? currentParticipants, String? imageUrl, bool? isFeatured, bool? isActive, Category? category, String? rating, DateTime? createdAt, DateTime? updatedAt
});




}
/// @nodoc
class __$ActivitiesResponseDataCopyWithImpl<$Res>
    implements _$ActivitiesResponseDataCopyWith<$Res> {
  __$ActivitiesResponseDataCopyWithImpl(this._self, this._then);

  final _ActivitiesResponseData _self;
  final $Res Function(_ActivitiesResponseData) _then;

/// Create a copy of ActivitiesResponseData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? title = freezed,Object? description = freezed,Object? location = freezed,Object? price = freezed,Object? availableSlots = freezed,Object? currentParticipants = freezed,Object? imageUrl = freezed,Object? isFeatured = freezed,Object? isActive = freezed,Object? category = freezed,Object? rating = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_ActivitiesResponseData(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String?,availableSlots: freezed == availableSlots ? _self.availableSlots : availableSlots // ignore: cast_nullable_to_non_nullable
as int?,currentParticipants: freezed == currentParticipants ? _self.currentParticipants : currentParticipants // ignore: cast_nullable_to_non_nullable
as int?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,isFeatured: freezed == isFeatured ? _self.isFeatured : isFeatured // ignore: cast_nullable_to_non_nullable
as bool?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as Category?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$ActivitiesMeta {

 int? get total; int? get page; int? get limit; int? get totalPages; bool? get hasNextPage; bool? get hasPrevPage;
/// Create a copy of ActivitiesMeta
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ActivitiesMetaCopyWith<ActivitiesMeta> get copyWith => _$ActivitiesMetaCopyWithImpl<ActivitiesMeta>(this as ActivitiesMeta, _$identity);

  /// Serializes this ActivitiesMeta to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ActivitiesMeta&&(identical(other.total, total) || other.total == total)&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.hasNextPage, hasNextPage) || other.hasNextPage == hasNextPage)&&(identical(other.hasPrevPage, hasPrevPage) || other.hasPrevPage == hasPrevPage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,page,limit,totalPages,hasNextPage,hasPrevPage);

@override
String toString() {
  return 'ActivitiesMeta(total: $total, page: $page, limit: $limit, totalPages: $totalPages, hasNextPage: $hasNextPage, hasPrevPage: $hasPrevPage)';
}


}

/// @nodoc
abstract mixin class $ActivitiesMetaCopyWith<$Res>  {
  factory $ActivitiesMetaCopyWith(ActivitiesMeta value, $Res Function(ActivitiesMeta) _then) = _$ActivitiesMetaCopyWithImpl;
@useResult
$Res call({
 int? total, int? page, int? limit, int? totalPages, bool? hasNextPage, bool? hasPrevPage
});




}
/// @nodoc
class _$ActivitiesMetaCopyWithImpl<$Res>
    implements $ActivitiesMetaCopyWith<$Res> {
  _$ActivitiesMetaCopyWithImpl(this._self, this._then);

  final ActivitiesMeta _self;
  final $Res Function(ActivitiesMeta) _then;

/// Create a copy of ActivitiesMeta
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? total = freezed,Object? page = freezed,Object? limit = freezed,Object? totalPages = freezed,Object? hasNextPage = freezed,Object? hasPrevPage = freezed,}) {
  return _then(_self.copyWith(
total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,limit: freezed == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int?,totalPages: freezed == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int?,hasNextPage: freezed == hasNextPage ? _self.hasNextPage : hasNextPage // ignore: cast_nullable_to_non_nullable
as bool?,hasPrevPage: freezed == hasPrevPage ? _self.hasPrevPage : hasPrevPage // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [ActivitiesMeta].
extension ActivitiesMetaPatterns on ActivitiesMeta {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ActivitiesMeta value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ActivitiesMeta() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ActivitiesMeta value)  $default,){
final _that = this;
switch (_that) {
case _ActivitiesMeta():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ActivitiesMeta value)?  $default,){
final _that = this;
switch (_that) {
case _ActivitiesMeta() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? total,  int? page,  int? limit,  int? totalPages,  bool? hasNextPage,  bool? hasPrevPage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ActivitiesMeta() when $default != null:
return $default(_that.total,_that.page,_that.limit,_that.totalPages,_that.hasNextPage,_that.hasPrevPage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? total,  int? page,  int? limit,  int? totalPages,  bool? hasNextPage,  bool? hasPrevPage)  $default,) {final _that = this;
switch (_that) {
case _ActivitiesMeta():
return $default(_that.total,_that.page,_that.limit,_that.totalPages,_that.hasNextPage,_that.hasPrevPage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? total,  int? page,  int? limit,  int? totalPages,  bool? hasNextPage,  bool? hasPrevPage)?  $default,) {final _that = this;
switch (_that) {
case _ActivitiesMeta() when $default != null:
return $default(_that.total,_that.page,_that.limit,_that.totalPages,_that.hasNextPage,_that.hasPrevPage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ActivitiesMeta implements ActivitiesMeta {
  const _ActivitiesMeta({this.total, this.page, this.limit, this.totalPages, this.hasNextPage, this.hasPrevPage});
  factory _ActivitiesMeta.fromJson(Map<String, dynamic> json) => _$ActivitiesMetaFromJson(json);

@override final  int? total;
@override final  int? page;
@override final  int? limit;
@override final  int? totalPages;
@override final  bool? hasNextPage;
@override final  bool? hasPrevPage;

/// Create a copy of ActivitiesMeta
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ActivitiesMetaCopyWith<_ActivitiesMeta> get copyWith => __$ActivitiesMetaCopyWithImpl<_ActivitiesMeta>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ActivitiesMetaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ActivitiesMeta&&(identical(other.total, total) || other.total == total)&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.hasNextPage, hasNextPage) || other.hasNextPage == hasNextPage)&&(identical(other.hasPrevPage, hasPrevPage) || other.hasPrevPage == hasPrevPage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,page,limit,totalPages,hasNextPage,hasPrevPage);

@override
String toString() {
  return 'ActivitiesMeta(total: $total, page: $page, limit: $limit, totalPages: $totalPages, hasNextPage: $hasNextPage, hasPrevPage: $hasPrevPage)';
}


}

/// @nodoc
abstract mixin class _$ActivitiesMetaCopyWith<$Res> implements $ActivitiesMetaCopyWith<$Res> {
  factory _$ActivitiesMetaCopyWith(_ActivitiesMeta value, $Res Function(_ActivitiesMeta) _then) = __$ActivitiesMetaCopyWithImpl;
@override @useResult
$Res call({
 int? total, int? page, int? limit, int? totalPages, bool? hasNextPage, bool? hasPrevPage
});




}
/// @nodoc
class __$ActivitiesMetaCopyWithImpl<$Res>
    implements _$ActivitiesMetaCopyWith<$Res> {
  __$ActivitiesMetaCopyWithImpl(this._self, this._then);

  final _ActivitiesMeta _self;
  final $Res Function(_ActivitiesMeta) _then;

/// Create a copy of ActivitiesMeta
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = freezed,Object? page = freezed,Object? limit = freezed,Object? totalPages = freezed,Object? hasNextPage = freezed,Object? hasPrevPage = freezed,}) {
  return _then(_ActivitiesMeta(
total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,limit: freezed == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int?,totalPages: freezed == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int?,hasNextPage: freezed == hasNextPage ? _self.hasNextPage : hasNextPage // ignore: cast_nullable_to_non_nullable
as bool?,hasPrevPage: freezed == hasPrevPage ? _self.hasPrevPage : hasPrevPage // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
