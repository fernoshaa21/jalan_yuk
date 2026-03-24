// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_activities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DetailActivities {

@JsonKey(name: "data") DetailActivitiesData? get data;@JsonKey(name: "message") String? get message;@JsonKey(name: "meta") dynamic get meta;
/// Create a copy of DetailActivities
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DetailActivitiesCopyWith<DetailActivities> get copyWith => _$DetailActivitiesCopyWithImpl<DetailActivities>(this as DetailActivities, _$identity);

  /// Serializes this DetailActivities to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DetailActivities&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.meta, meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data,message,const DeepCollectionEquality().hash(meta));

@override
String toString() {
  return 'DetailActivities(data: $data, message: $message, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $DetailActivitiesCopyWith<$Res>  {
  factory $DetailActivitiesCopyWith(DetailActivities value, $Res Function(DetailActivities) _then) = _$DetailActivitiesCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "data") DetailActivitiesData? data,@JsonKey(name: "message") String? message,@JsonKey(name: "meta") dynamic meta
});


$DetailActivitiesDataCopyWith<$Res>? get data;

}
/// @nodoc
class _$DetailActivitiesCopyWithImpl<$Res>
    implements $DetailActivitiesCopyWith<$Res> {
  _$DetailActivitiesCopyWithImpl(this._self, this._then);

  final DetailActivities _self;
  final $Res Function(DetailActivities) _then;

/// Create a copy of DetailActivities
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,Object? message = freezed,Object? meta = freezed,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as DetailActivitiesData?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}
/// Create a copy of DetailActivities
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DetailActivitiesDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $DetailActivitiesDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [DetailActivities].
extension DetailActivitiesPatterns on DetailActivities {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DetailActivities value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DetailActivities() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DetailActivities value)  $default,){
final _that = this;
switch (_that) {
case _DetailActivities():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DetailActivities value)?  $default,){
final _that = this;
switch (_that) {
case _DetailActivities() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "data")  DetailActivitiesData? data, @JsonKey(name: "message")  String? message, @JsonKey(name: "meta")  dynamic meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DetailActivities() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "data")  DetailActivitiesData? data, @JsonKey(name: "message")  String? message, @JsonKey(name: "meta")  dynamic meta)  $default,) {final _that = this;
switch (_that) {
case _DetailActivities():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "data")  DetailActivitiesData? data, @JsonKey(name: "message")  String? message, @JsonKey(name: "meta")  dynamic meta)?  $default,) {final _that = this;
switch (_that) {
case _DetailActivities() when $default != null:
return $default(_that.data,_that.message,_that.meta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DetailActivities implements DetailActivities {
  const _DetailActivities({@JsonKey(name: "data") this.data, @JsonKey(name: "message") this.message, @JsonKey(name: "meta") this.meta});
  factory _DetailActivities.fromJson(Map<String, dynamic> json) => _$DetailActivitiesFromJson(json);

@override@JsonKey(name: "data") final  DetailActivitiesData? data;
@override@JsonKey(name: "message") final  String? message;
@override@JsonKey(name: "meta") final  dynamic meta;

/// Create a copy of DetailActivities
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DetailActivitiesCopyWith<_DetailActivities> get copyWith => __$DetailActivitiesCopyWithImpl<_DetailActivities>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DetailActivitiesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DetailActivities&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.meta, meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data,message,const DeepCollectionEquality().hash(meta));

@override
String toString() {
  return 'DetailActivities(data: $data, message: $message, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$DetailActivitiesCopyWith<$Res> implements $DetailActivitiesCopyWith<$Res> {
  factory _$DetailActivitiesCopyWith(_DetailActivities value, $Res Function(_DetailActivities) _then) = __$DetailActivitiesCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "data") DetailActivitiesData? data,@JsonKey(name: "message") String? message,@JsonKey(name: "meta") dynamic meta
});


@override $DetailActivitiesDataCopyWith<$Res>? get data;

}
/// @nodoc
class __$DetailActivitiesCopyWithImpl<$Res>
    implements _$DetailActivitiesCopyWith<$Res> {
  __$DetailActivitiesCopyWithImpl(this._self, this._then);

  final _DetailActivities _self;
  final $Res Function(_DetailActivities) _then;

/// Create a copy of DetailActivities
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,Object? message = freezed,Object? meta = freezed,}) {
  return _then(_DetailActivities(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as DetailActivitiesData?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

/// Create a copy of DetailActivities
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DetailActivitiesDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $DetailActivitiesDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$DetailActivitiesData {

@JsonKey(name: "id") int? get id;@JsonKey(name: "title") String? get title;@JsonKey(name: "description") String? get description;@JsonKey(name: "price") String? get price;@JsonKey(name: "location") String? get location;@JsonKey(name: "availableSlots") int? get availableSlots;@JsonKey(name: "imageUrl") String? get imageUrl;@JsonKey(name: "isFeatured") bool? get isFeatured;@JsonKey(name: "category") String? get category;@JsonKey(name: "rating") String? get rating;@JsonKey(name: "currentParticipants") int? get currentParticipants;@JsonKey(name: "maxParticipants") int? get maxParticipants;@JsonKey(name: "availableDates") List<DateTime>? get availableDates;
/// Create a copy of DetailActivitiesData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DetailActivitiesDataCopyWith<DetailActivitiesData> get copyWith => _$DetailActivitiesDataCopyWithImpl<DetailActivitiesData>(this as DetailActivitiesData, _$identity);

  /// Serializes this DetailActivitiesData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DetailActivitiesData&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.price, price) || other.price == price)&&(identical(other.location, location) || other.location == location)&&(identical(other.availableSlots, availableSlots) || other.availableSlots == availableSlots)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.isFeatured, isFeatured) || other.isFeatured == isFeatured)&&(identical(other.category, category) || other.category == category)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.currentParticipants, currentParticipants) || other.currentParticipants == currentParticipants)&&(identical(other.maxParticipants, maxParticipants) || other.maxParticipants == maxParticipants)&&const DeepCollectionEquality().equals(other.availableDates, availableDates));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,price,location,availableSlots,imageUrl,isFeatured,category,rating,currentParticipants,maxParticipants,const DeepCollectionEquality().hash(availableDates));

@override
String toString() {
  return 'DetailActivitiesData(id: $id, title: $title, description: $description, price: $price, location: $location, availableSlots: $availableSlots, imageUrl: $imageUrl, isFeatured: $isFeatured, category: $category, rating: $rating, currentParticipants: $currentParticipants, maxParticipants: $maxParticipants, availableDates: $availableDates)';
}


}

/// @nodoc
abstract mixin class $DetailActivitiesDataCopyWith<$Res>  {
  factory $DetailActivitiesDataCopyWith(DetailActivitiesData value, $Res Function(DetailActivitiesData) _then) = _$DetailActivitiesDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "title") String? title,@JsonKey(name: "description") String? description,@JsonKey(name: "price") String? price,@JsonKey(name: "location") String? location,@JsonKey(name: "availableSlots") int? availableSlots,@JsonKey(name: "imageUrl") String? imageUrl,@JsonKey(name: "isFeatured") bool? isFeatured,@JsonKey(name: "category") String? category,@JsonKey(name: "rating") String? rating,@JsonKey(name: "currentParticipants") int? currentParticipants,@JsonKey(name: "maxParticipants") int? maxParticipants,@JsonKey(name: "availableDates") List<DateTime>? availableDates
});




}
/// @nodoc
class _$DetailActivitiesDataCopyWithImpl<$Res>
    implements $DetailActivitiesDataCopyWith<$Res> {
  _$DetailActivitiesDataCopyWithImpl(this._self, this._then);

  final DetailActivitiesData _self;
  final $Res Function(DetailActivitiesData) _then;

/// Create a copy of DetailActivitiesData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? title = freezed,Object? description = freezed,Object? price = freezed,Object? location = freezed,Object? availableSlots = freezed,Object? imageUrl = freezed,Object? isFeatured = freezed,Object? category = freezed,Object? rating = freezed,Object? currentParticipants = freezed,Object? maxParticipants = freezed,Object? availableDates = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,availableSlots: freezed == availableSlots ? _self.availableSlots : availableSlots // ignore: cast_nullable_to_non_nullable
as int?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,isFeatured: freezed == isFeatured ? _self.isFeatured : isFeatured // ignore: cast_nullable_to_non_nullable
as bool?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as String?,currentParticipants: freezed == currentParticipants ? _self.currentParticipants : currentParticipants // ignore: cast_nullable_to_non_nullable
as int?,maxParticipants: freezed == maxParticipants ? _self.maxParticipants : maxParticipants // ignore: cast_nullable_to_non_nullable
as int?,availableDates: freezed == availableDates ? _self.availableDates : availableDates // ignore: cast_nullable_to_non_nullable
as List<DateTime>?,
  ));
}

}


/// Adds pattern-matching-related methods to [DetailActivitiesData].
extension DetailActivitiesDataPatterns on DetailActivitiesData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DetailActivitiesData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DetailActivitiesData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DetailActivitiesData value)  $default,){
final _that = this;
switch (_that) {
case _DetailActivitiesData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DetailActivitiesData value)?  $default,){
final _that = this;
switch (_that) {
case _DetailActivitiesData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "title")  String? title, @JsonKey(name: "description")  String? description, @JsonKey(name: "price")  String? price, @JsonKey(name: "location")  String? location, @JsonKey(name: "availableSlots")  int? availableSlots, @JsonKey(name: "imageUrl")  String? imageUrl, @JsonKey(name: "isFeatured")  bool? isFeatured, @JsonKey(name: "category")  String? category, @JsonKey(name: "rating")  String? rating, @JsonKey(name: "currentParticipants")  int? currentParticipants, @JsonKey(name: "maxParticipants")  int? maxParticipants, @JsonKey(name: "availableDates")  List<DateTime>? availableDates)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DetailActivitiesData() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.price,_that.location,_that.availableSlots,_that.imageUrl,_that.isFeatured,_that.category,_that.rating,_that.currentParticipants,_that.maxParticipants,_that.availableDates);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "title")  String? title, @JsonKey(name: "description")  String? description, @JsonKey(name: "price")  String? price, @JsonKey(name: "location")  String? location, @JsonKey(name: "availableSlots")  int? availableSlots, @JsonKey(name: "imageUrl")  String? imageUrl, @JsonKey(name: "isFeatured")  bool? isFeatured, @JsonKey(name: "category")  String? category, @JsonKey(name: "rating")  String? rating, @JsonKey(name: "currentParticipants")  int? currentParticipants, @JsonKey(name: "maxParticipants")  int? maxParticipants, @JsonKey(name: "availableDates")  List<DateTime>? availableDates)  $default,) {final _that = this;
switch (_that) {
case _DetailActivitiesData():
return $default(_that.id,_that.title,_that.description,_that.price,_that.location,_that.availableSlots,_that.imageUrl,_that.isFeatured,_that.category,_that.rating,_that.currentParticipants,_that.maxParticipants,_that.availableDates);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "title")  String? title, @JsonKey(name: "description")  String? description, @JsonKey(name: "price")  String? price, @JsonKey(name: "location")  String? location, @JsonKey(name: "availableSlots")  int? availableSlots, @JsonKey(name: "imageUrl")  String? imageUrl, @JsonKey(name: "isFeatured")  bool? isFeatured, @JsonKey(name: "category")  String? category, @JsonKey(name: "rating")  String? rating, @JsonKey(name: "currentParticipants")  int? currentParticipants, @JsonKey(name: "maxParticipants")  int? maxParticipants, @JsonKey(name: "availableDates")  List<DateTime>? availableDates)?  $default,) {final _that = this;
switch (_that) {
case _DetailActivitiesData() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.price,_that.location,_that.availableSlots,_that.imageUrl,_that.isFeatured,_that.category,_that.rating,_that.currentParticipants,_that.maxParticipants,_that.availableDates);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DetailActivitiesData implements DetailActivitiesData {
  const _DetailActivitiesData({@JsonKey(name: "id") this.id, @JsonKey(name: "title") this.title, @JsonKey(name: "description") this.description, @JsonKey(name: "price") this.price, @JsonKey(name: "location") this.location, @JsonKey(name: "availableSlots") this.availableSlots, @JsonKey(name: "imageUrl") this.imageUrl, @JsonKey(name: "isFeatured") this.isFeatured, @JsonKey(name: "category") this.category, @JsonKey(name: "rating") this.rating, @JsonKey(name: "currentParticipants") this.currentParticipants, @JsonKey(name: "maxParticipants") this.maxParticipants, @JsonKey(name: "availableDates") final  List<DateTime>? availableDates}): _availableDates = availableDates;
  factory _DetailActivitiesData.fromJson(Map<String, dynamic> json) => _$DetailActivitiesDataFromJson(json);

@override@JsonKey(name: "id") final  int? id;
@override@JsonKey(name: "title") final  String? title;
@override@JsonKey(name: "description") final  String? description;
@override@JsonKey(name: "price") final  String? price;
@override@JsonKey(name: "location") final  String? location;
@override@JsonKey(name: "availableSlots") final  int? availableSlots;
@override@JsonKey(name: "imageUrl") final  String? imageUrl;
@override@JsonKey(name: "isFeatured") final  bool? isFeatured;
@override@JsonKey(name: "category") final  String? category;
@override@JsonKey(name: "rating") final  String? rating;
@override@JsonKey(name: "currentParticipants") final  int? currentParticipants;
@override@JsonKey(name: "maxParticipants") final  int? maxParticipants;
 final  List<DateTime>? _availableDates;
@override@JsonKey(name: "availableDates") List<DateTime>? get availableDates {
  final value = _availableDates;
  if (value == null) return null;
  if (_availableDates is EqualUnmodifiableListView) return _availableDates;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of DetailActivitiesData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DetailActivitiesDataCopyWith<_DetailActivitiesData> get copyWith => __$DetailActivitiesDataCopyWithImpl<_DetailActivitiesData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DetailActivitiesDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DetailActivitiesData&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.price, price) || other.price == price)&&(identical(other.location, location) || other.location == location)&&(identical(other.availableSlots, availableSlots) || other.availableSlots == availableSlots)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.isFeatured, isFeatured) || other.isFeatured == isFeatured)&&(identical(other.category, category) || other.category == category)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.currentParticipants, currentParticipants) || other.currentParticipants == currentParticipants)&&(identical(other.maxParticipants, maxParticipants) || other.maxParticipants == maxParticipants)&&const DeepCollectionEquality().equals(other._availableDates, _availableDates));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,price,location,availableSlots,imageUrl,isFeatured,category,rating,currentParticipants,maxParticipants,const DeepCollectionEquality().hash(_availableDates));

@override
String toString() {
  return 'DetailActivitiesData(id: $id, title: $title, description: $description, price: $price, location: $location, availableSlots: $availableSlots, imageUrl: $imageUrl, isFeatured: $isFeatured, category: $category, rating: $rating, currentParticipants: $currentParticipants, maxParticipants: $maxParticipants, availableDates: $availableDates)';
}


}

/// @nodoc
abstract mixin class _$DetailActivitiesDataCopyWith<$Res> implements $DetailActivitiesDataCopyWith<$Res> {
  factory _$DetailActivitiesDataCopyWith(_DetailActivitiesData value, $Res Function(_DetailActivitiesData) _then) = __$DetailActivitiesDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "title") String? title,@JsonKey(name: "description") String? description,@JsonKey(name: "price") String? price,@JsonKey(name: "location") String? location,@JsonKey(name: "availableSlots") int? availableSlots,@JsonKey(name: "imageUrl") String? imageUrl,@JsonKey(name: "isFeatured") bool? isFeatured,@JsonKey(name: "category") String? category,@JsonKey(name: "rating") String? rating,@JsonKey(name: "currentParticipants") int? currentParticipants,@JsonKey(name: "maxParticipants") int? maxParticipants,@JsonKey(name: "availableDates") List<DateTime>? availableDates
});




}
/// @nodoc
class __$DetailActivitiesDataCopyWithImpl<$Res>
    implements _$DetailActivitiesDataCopyWith<$Res> {
  __$DetailActivitiesDataCopyWithImpl(this._self, this._then);

  final _DetailActivitiesData _self;
  final $Res Function(_DetailActivitiesData) _then;

/// Create a copy of DetailActivitiesData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? title = freezed,Object? description = freezed,Object? price = freezed,Object? location = freezed,Object? availableSlots = freezed,Object? imageUrl = freezed,Object? isFeatured = freezed,Object? category = freezed,Object? rating = freezed,Object? currentParticipants = freezed,Object? maxParticipants = freezed,Object? availableDates = freezed,}) {
  return _then(_DetailActivitiesData(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,availableSlots: freezed == availableSlots ? _self.availableSlots : availableSlots // ignore: cast_nullable_to_non_nullable
as int?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,isFeatured: freezed == isFeatured ? _self.isFeatured : isFeatured // ignore: cast_nullable_to_non_nullable
as bool?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as String?,currentParticipants: freezed == currentParticipants ? _self.currentParticipants : currentParticipants // ignore: cast_nullable_to_non_nullable
as int?,maxParticipants: freezed == maxParticipants ? _self.maxParticipants : maxParticipants // ignore: cast_nullable_to_non_nullable
as int?,availableDates: freezed == availableDates ? _self._availableDates : availableDates // ignore: cast_nullable_to_non_nullable
as List<DateTime>?,
  ));
}


}

// dart format on
