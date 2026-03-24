// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HomeState {

 HomeCarouselStatus get carouselStatus; List<ActivitiesResponseData> get carouselActivities; String? get carouselErrorMessage; HomeActivitiesStatus get popularStatus; List<ActivitiesResponseData> get popularActivities; int get popularPage; int get popularLimit; bool get popularHasNextPage; String? get search; String? get category; String? get popularErrorMessage;
/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeStateCopyWith<HomeState> get copyWith => _$HomeStateCopyWithImpl<HomeState>(this as HomeState, _$identity);

  /// Serializes this HomeState to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState&&(identical(other.carouselStatus, carouselStatus) || other.carouselStatus == carouselStatus)&&const DeepCollectionEquality().equals(other.carouselActivities, carouselActivities)&&(identical(other.carouselErrorMessage, carouselErrorMessage) || other.carouselErrorMessage == carouselErrorMessage)&&(identical(other.popularStatus, popularStatus) || other.popularStatus == popularStatus)&&const DeepCollectionEquality().equals(other.popularActivities, popularActivities)&&(identical(other.popularPage, popularPage) || other.popularPage == popularPage)&&(identical(other.popularLimit, popularLimit) || other.popularLimit == popularLimit)&&(identical(other.popularHasNextPage, popularHasNextPage) || other.popularHasNextPage == popularHasNextPage)&&(identical(other.search, search) || other.search == search)&&(identical(other.category, category) || other.category == category)&&(identical(other.popularErrorMessage, popularErrorMessage) || other.popularErrorMessage == popularErrorMessage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,carouselStatus,const DeepCollectionEquality().hash(carouselActivities),carouselErrorMessage,popularStatus,const DeepCollectionEquality().hash(popularActivities),popularPage,popularLimit,popularHasNextPage,search,category,popularErrorMessage);

@override
String toString() {
  return 'HomeState(carouselStatus: $carouselStatus, carouselActivities: $carouselActivities, carouselErrorMessage: $carouselErrorMessage, popularStatus: $popularStatus, popularActivities: $popularActivities, popularPage: $popularPage, popularLimit: $popularLimit, popularHasNextPage: $popularHasNextPage, search: $search, category: $category, popularErrorMessage: $popularErrorMessage)';
}


}

/// @nodoc
abstract mixin class $HomeStateCopyWith<$Res>  {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) _then) = _$HomeStateCopyWithImpl;
@useResult
$Res call({
 HomeCarouselStatus carouselStatus, List<ActivitiesResponseData> carouselActivities, String? carouselErrorMessage, HomeActivitiesStatus popularStatus, List<ActivitiesResponseData> popularActivities, int popularPage, int popularLimit, bool popularHasNextPage, String? search, String? category, String? popularErrorMessage
});




}
/// @nodoc
class _$HomeStateCopyWithImpl<$Res>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._self, this._then);

  final HomeState _self;
  final $Res Function(HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? carouselStatus = null,Object? carouselActivities = null,Object? carouselErrorMessage = freezed,Object? popularStatus = null,Object? popularActivities = null,Object? popularPage = null,Object? popularLimit = null,Object? popularHasNextPage = null,Object? search = freezed,Object? category = freezed,Object? popularErrorMessage = freezed,}) {
  return _then(_self.copyWith(
carouselStatus: null == carouselStatus ? _self.carouselStatus : carouselStatus // ignore: cast_nullable_to_non_nullable
as HomeCarouselStatus,carouselActivities: null == carouselActivities ? _self.carouselActivities : carouselActivities // ignore: cast_nullable_to_non_nullable
as List<ActivitiesResponseData>,carouselErrorMessage: freezed == carouselErrorMessage ? _self.carouselErrorMessage : carouselErrorMessage // ignore: cast_nullable_to_non_nullable
as String?,popularStatus: null == popularStatus ? _self.popularStatus : popularStatus // ignore: cast_nullable_to_non_nullable
as HomeActivitiesStatus,popularActivities: null == popularActivities ? _self.popularActivities : popularActivities // ignore: cast_nullable_to_non_nullable
as List<ActivitiesResponseData>,popularPage: null == popularPage ? _self.popularPage : popularPage // ignore: cast_nullable_to_non_nullable
as int,popularLimit: null == popularLimit ? _self.popularLimit : popularLimit // ignore: cast_nullable_to_non_nullable
as int,popularHasNextPage: null == popularHasNextPage ? _self.popularHasNextPage : popularHasNextPage // ignore: cast_nullable_to_non_nullable
as bool,search: freezed == search ? _self.search : search // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,popularErrorMessage: freezed == popularErrorMessage ? _self.popularErrorMessage : popularErrorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [HomeState].
extension HomeStatePatterns on HomeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeState value)  $default,){
final _that = this;
switch (_that) {
case _HomeState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeState value)?  $default,){
final _that = this;
switch (_that) {
case _HomeState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( HomeCarouselStatus carouselStatus,  List<ActivitiesResponseData> carouselActivities,  String? carouselErrorMessage,  HomeActivitiesStatus popularStatus,  List<ActivitiesResponseData> popularActivities,  int popularPage,  int popularLimit,  bool popularHasNextPage,  String? search,  String? category,  String? popularErrorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeState() when $default != null:
return $default(_that.carouselStatus,_that.carouselActivities,_that.carouselErrorMessage,_that.popularStatus,_that.popularActivities,_that.popularPage,_that.popularLimit,_that.popularHasNextPage,_that.search,_that.category,_that.popularErrorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( HomeCarouselStatus carouselStatus,  List<ActivitiesResponseData> carouselActivities,  String? carouselErrorMessage,  HomeActivitiesStatus popularStatus,  List<ActivitiesResponseData> popularActivities,  int popularPage,  int popularLimit,  bool popularHasNextPage,  String? search,  String? category,  String? popularErrorMessage)  $default,) {final _that = this;
switch (_that) {
case _HomeState():
return $default(_that.carouselStatus,_that.carouselActivities,_that.carouselErrorMessage,_that.popularStatus,_that.popularActivities,_that.popularPage,_that.popularLimit,_that.popularHasNextPage,_that.search,_that.category,_that.popularErrorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( HomeCarouselStatus carouselStatus,  List<ActivitiesResponseData> carouselActivities,  String? carouselErrorMessage,  HomeActivitiesStatus popularStatus,  List<ActivitiesResponseData> popularActivities,  int popularPage,  int popularLimit,  bool popularHasNextPage,  String? search,  String? category,  String? popularErrorMessage)?  $default,) {final _that = this;
switch (_that) {
case _HomeState() when $default != null:
return $default(_that.carouselStatus,_that.carouselActivities,_that.carouselErrorMessage,_that.popularStatus,_that.popularActivities,_that.popularPage,_that.popularLimit,_that.popularHasNextPage,_that.search,_that.category,_that.popularErrorMessage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HomeState extends HomeState {
   _HomeState({this.carouselStatus = HomeCarouselStatus.initial, final  List<ActivitiesResponseData> carouselActivities = const <ActivitiesResponseData>[], this.carouselErrorMessage, this.popularStatus = HomeActivitiesStatus.initial, final  List<ActivitiesResponseData> popularActivities = const <ActivitiesResponseData>[], this.popularPage = 1, this.popularLimit = 10, this.popularHasNextPage = true, this.search, this.category, this.popularErrorMessage}): _carouselActivities = carouselActivities,_popularActivities = popularActivities,super._();
  factory _HomeState.fromJson(Map<String, dynamic> json) => _$HomeStateFromJson(json);

@override@JsonKey() final  HomeCarouselStatus carouselStatus;
 final  List<ActivitiesResponseData> _carouselActivities;
@override@JsonKey() List<ActivitiesResponseData> get carouselActivities {
  if (_carouselActivities is EqualUnmodifiableListView) return _carouselActivities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_carouselActivities);
}

@override final  String? carouselErrorMessage;
@override@JsonKey() final  HomeActivitiesStatus popularStatus;
 final  List<ActivitiesResponseData> _popularActivities;
@override@JsonKey() List<ActivitiesResponseData> get popularActivities {
  if (_popularActivities is EqualUnmodifiableListView) return _popularActivities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_popularActivities);
}

@override@JsonKey() final  int popularPage;
@override@JsonKey() final  int popularLimit;
@override@JsonKey() final  bool popularHasNextPage;
@override final  String? search;
@override final  String? category;
@override final  String? popularErrorMessage;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeStateCopyWith<_HomeState> get copyWith => __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HomeStateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeState&&(identical(other.carouselStatus, carouselStatus) || other.carouselStatus == carouselStatus)&&const DeepCollectionEquality().equals(other._carouselActivities, _carouselActivities)&&(identical(other.carouselErrorMessage, carouselErrorMessage) || other.carouselErrorMessage == carouselErrorMessage)&&(identical(other.popularStatus, popularStatus) || other.popularStatus == popularStatus)&&const DeepCollectionEquality().equals(other._popularActivities, _popularActivities)&&(identical(other.popularPage, popularPage) || other.popularPage == popularPage)&&(identical(other.popularLimit, popularLimit) || other.popularLimit == popularLimit)&&(identical(other.popularHasNextPage, popularHasNextPage) || other.popularHasNextPage == popularHasNextPage)&&(identical(other.search, search) || other.search == search)&&(identical(other.category, category) || other.category == category)&&(identical(other.popularErrorMessage, popularErrorMessage) || other.popularErrorMessage == popularErrorMessage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,carouselStatus,const DeepCollectionEquality().hash(_carouselActivities),carouselErrorMessage,popularStatus,const DeepCollectionEquality().hash(_popularActivities),popularPage,popularLimit,popularHasNextPage,search,category,popularErrorMessage);

@override
String toString() {
  return 'HomeState(carouselStatus: $carouselStatus, carouselActivities: $carouselActivities, carouselErrorMessage: $carouselErrorMessage, popularStatus: $popularStatus, popularActivities: $popularActivities, popularPage: $popularPage, popularLimit: $popularLimit, popularHasNextPage: $popularHasNextPage, search: $search, category: $category, popularErrorMessage: $popularErrorMessage)';
}


}

/// @nodoc
abstract mixin class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(_HomeState value, $Res Function(_HomeState) _then) = __$HomeStateCopyWithImpl;
@override @useResult
$Res call({
 HomeCarouselStatus carouselStatus, List<ActivitiesResponseData> carouselActivities, String? carouselErrorMessage, HomeActivitiesStatus popularStatus, List<ActivitiesResponseData> popularActivities, int popularPage, int popularLimit, bool popularHasNextPage, String? search, String? category, String? popularErrorMessage
});




}
/// @nodoc
class __$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(this._self, this._then);

  final _HomeState _self;
  final $Res Function(_HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? carouselStatus = null,Object? carouselActivities = null,Object? carouselErrorMessage = freezed,Object? popularStatus = null,Object? popularActivities = null,Object? popularPage = null,Object? popularLimit = null,Object? popularHasNextPage = null,Object? search = freezed,Object? category = freezed,Object? popularErrorMessage = freezed,}) {
  return _then(_HomeState(
carouselStatus: null == carouselStatus ? _self.carouselStatus : carouselStatus // ignore: cast_nullable_to_non_nullable
as HomeCarouselStatus,carouselActivities: null == carouselActivities ? _self._carouselActivities : carouselActivities // ignore: cast_nullable_to_non_nullable
as List<ActivitiesResponseData>,carouselErrorMessage: freezed == carouselErrorMessage ? _self.carouselErrorMessage : carouselErrorMessage // ignore: cast_nullable_to_non_nullable
as String?,popularStatus: null == popularStatus ? _self.popularStatus : popularStatus // ignore: cast_nullable_to_non_nullable
as HomeActivitiesStatus,popularActivities: null == popularActivities ? _self._popularActivities : popularActivities // ignore: cast_nullable_to_non_nullable
as List<ActivitiesResponseData>,popularPage: null == popularPage ? _self.popularPage : popularPage // ignore: cast_nullable_to_non_nullable
as int,popularLimit: null == popularLimit ? _self.popularLimit : popularLimit // ignore: cast_nullable_to_non_nullable
as int,popularHasNextPage: null == popularHasNextPage ? _self.popularHasNextPage : popularHasNextPage // ignore: cast_nullable_to_non_nullable
as bool,search: freezed == search ? _self.search : search // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,popularErrorMessage: freezed == popularErrorMessage ? _self.popularErrorMessage : popularErrorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
