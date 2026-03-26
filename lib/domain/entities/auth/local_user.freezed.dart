// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'local_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LocalUser {

@JsonKey(name: "data") LocalUserData? get data;@JsonKey(name: "message") String? get message;@JsonKey(name: "meta") dynamic get meta;
/// Create a copy of LocalUser
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocalUserCopyWith<LocalUser> get copyWith => _$LocalUserCopyWithImpl<LocalUser>(this as LocalUser, _$identity);

  /// Serializes this LocalUser to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocalUser&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.meta, meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data,message,const DeepCollectionEquality().hash(meta));

@override
String toString() {
  return 'LocalUser(data: $data, message: $message, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $LocalUserCopyWith<$Res>  {
  factory $LocalUserCopyWith(LocalUser value, $Res Function(LocalUser) _then) = _$LocalUserCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "data") LocalUserData? data,@JsonKey(name: "message") String? message,@JsonKey(name: "meta") dynamic meta
});


$LocalUserDataCopyWith<$Res>? get data;

}
/// @nodoc
class _$LocalUserCopyWithImpl<$Res>
    implements $LocalUserCopyWith<$Res> {
  _$LocalUserCopyWithImpl(this._self, this._then);

  final LocalUser _self;
  final $Res Function(LocalUser) _then;

/// Create a copy of LocalUser
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,Object? message = freezed,Object? meta = freezed,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as LocalUserData?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}
/// Create a copy of LocalUser
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalUserDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $LocalUserDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [LocalUser].
extension LocalUserPatterns on LocalUser {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LocalUser value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LocalUser() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LocalUser value)  $default,){
final _that = this;
switch (_that) {
case _LocalUser():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LocalUser value)?  $default,){
final _that = this;
switch (_that) {
case _LocalUser() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "data")  LocalUserData? data, @JsonKey(name: "message")  String? message, @JsonKey(name: "meta")  dynamic meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LocalUser() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "data")  LocalUserData? data, @JsonKey(name: "message")  String? message, @JsonKey(name: "meta")  dynamic meta)  $default,) {final _that = this;
switch (_that) {
case _LocalUser():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "data")  LocalUserData? data, @JsonKey(name: "message")  String? message, @JsonKey(name: "meta")  dynamic meta)?  $default,) {final _that = this;
switch (_that) {
case _LocalUser() when $default != null:
return $default(_that.data,_that.message,_that.meta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LocalUser implements LocalUser {
  const _LocalUser({@JsonKey(name: "data") this.data, @JsonKey(name: "message") this.message, @JsonKey(name: "meta") this.meta});
  factory _LocalUser.fromJson(Map<String, dynamic> json) => _$LocalUserFromJson(json);

@override@JsonKey(name: "data") final  LocalUserData? data;
@override@JsonKey(name: "message") final  String? message;
@override@JsonKey(name: "meta") final  dynamic meta;

/// Create a copy of LocalUser
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LocalUserCopyWith<_LocalUser> get copyWith => __$LocalUserCopyWithImpl<_LocalUser>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LocalUserToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LocalUser&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.meta, meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data,message,const DeepCollectionEquality().hash(meta));

@override
String toString() {
  return 'LocalUser(data: $data, message: $message, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$LocalUserCopyWith<$Res> implements $LocalUserCopyWith<$Res> {
  factory _$LocalUserCopyWith(_LocalUser value, $Res Function(_LocalUser) _then) = __$LocalUserCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "data") LocalUserData? data,@JsonKey(name: "message") String? message,@JsonKey(name: "meta") dynamic meta
});


@override $LocalUserDataCopyWith<$Res>? get data;

}
/// @nodoc
class __$LocalUserCopyWithImpl<$Res>
    implements _$LocalUserCopyWith<$Res> {
  __$LocalUserCopyWithImpl(this._self, this._then);

  final _LocalUser _self;
  final $Res Function(_LocalUser) _then;

/// Create a copy of LocalUser
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,Object? message = freezed,Object? meta = freezed,}) {
  return _then(_LocalUser(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as LocalUserData?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

/// Create a copy of LocalUser
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalUserDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $LocalUserDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$LocalUserData {

@JsonKey(name: "accessToken") String? get accessToken;@JsonKey(name: "user") User? get user;
/// Create a copy of LocalUserData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocalUserDataCopyWith<LocalUserData> get copyWith => _$LocalUserDataCopyWithImpl<LocalUserData>(this as LocalUserData, _$identity);

  /// Serializes this LocalUserData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocalUserData&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accessToken,user);

@override
String toString() {
  return 'LocalUserData(accessToken: $accessToken, user: $user)';
}


}

/// @nodoc
abstract mixin class $LocalUserDataCopyWith<$Res>  {
  factory $LocalUserDataCopyWith(LocalUserData value, $Res Function(LocalUserData) _then) = _$LocalUserDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "accessToken") String? accessToken,@JsonKey(name: "user") User? user
});


$UserCopyWith<$Res>? get user;

}
/// @nodoc
class _$LocalUserDataCopyWithImpl<$Res>
    implements $LocalUserDataCopyWith<$Res> {
  _$LocalUserDataCopyWithImpl(this._self, this._then);

  final LocalUserData _self;
  final $Res Function(LocalUserData) _then;

/// Create a copy of LocalUserData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? accessToken = freezed,Object? user = freezed,}) {
  return _then(_self.copyWith(
accessToken: freezed == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,
  ));
}
/// Create a copy of LocalUserData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [LocalUserData].
extension LocalUserDataPatterns on LocalUserData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LocalUserData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LocalUserData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LocalUserData value)  $default,){
final _that = this;
switch (_that) {
case _LocalUserData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LocalUserData value)?  $default,){
final _that = this;
switch (_that) {
case _LocalUserData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "accessToken")  String? accessToken, @JsonKey(name: "user")  User? user)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LocalUserData() when $default != null:
return $default(_that.accessToken,_that.user);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "accessToken")  String? accessToken, @JsonKey(name: "user")  User? user)  $default,) {final _that = this;
switch (_that) {
case _LocalUserData():
return $default(_that.accessToken,_that.user);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "accessToken")  String? accessToken, @JsonKey(name: "user")  User? user)?  $default,) {final _that = this;
switch (_that) {
case _LocalUserData() when $default != null:
return $default(_that.accessToken,_that.user);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LocalUserData implements LocalUserData {
  const _LocalUserData({@JsonKey(name: "accessToken") this.accessToken, @JsonKey(name: "user") this.user});
  factory _LocalUserData.fromJson(Map<String, dynamic> json) => _$LocalUserDataFromJson(json);

@override@JsonKey(name: "accessToken") final  String? accessToken;
@override@JsonKey(name: "user") final  User? user;

/// Create a copy of LocalUserData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LocalUserDataCopyWith<_LocalUserData> get copyWith => __$LocalUserDataCopyWithImpl<_LocalUserData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LocalUserDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LocalUserData&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accessToken,user);

@override
String toString() {
  return 'LocalUserData(accessToken: $accessToken, user: $user)';
}


}

/// @nodoc
abstract mixin class _$LocalUserDataCopyWith<$Res> implements $LocalUserDataCopyWith<$Res> {
  factory _$LocalUserDataCopyWith(_LocalUserData value, $Res Function(_LocalUserData) _then) = __$LocalUserDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "accessToken") String? accessToken,@JsonKey(name: "user") User? user
});


@override $UserCopyWith<$Res>? get user;

}
/// @nodoc
class __$LocalUserDataCopyWithImpl<$Res>
    implements _$LocalUserDataCopyWith<$Res> {
  __$LocalUserDataCopyWithImpl(this._self, this._then);

  final _LocalUserData _self;
  final $Res Function(_LocalUserData) _then;

/// Create a copy of LocalUserData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? accessToken = freezed,Object? user = freezed,}) {
  return _then(_LocalUserData(
accessToken: freezed == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,
  ));
}

/// Create a copy of LocalUserData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// @nodoc
mixin _$User {

@JsonKey(name: "id") int? get id;@JsonKey(name: "email") String? get email;@JsonKey(name: "fullName") String? get fullName;@JsonKey(name: "phoneNumber") String? get phoneNumber;@JsonKey(name: "role") String? get role;
/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserCopyWith<User> get copyWith => _$UserCopyWithImpl<User>(this as User, _$identity);

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is User&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.role, role) || other.role == role));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,email,fullName,phoneNumber,role);

@override
String toString() {
  return 'User(id: $id, email: $email, fullName: $fullName, phoneNumber: $phoneNumber, role: $role)';
}


}

/// @nodoc
abstract mixin class $UserCopyWith<$Res>  {
  factory $UserCopyWith(User value, $Res Function(User) _then) = _$UserCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "email") String? email,@JsonKey(name: "fullName") String? fullName,@JsonKey(name: "phoneNumber") String? phoneNumber,@JsonKey(name: "role") String? role
});




}
/// @nodoc
class _$UserCopyWithImpl<$Res>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._self, this._then);

  final User _self;
  final $Res Function(User) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? email = freezed,Object? fullName = freezed,Object? phoneNumber = freezed,Object? role = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,phoneNumber: freezed == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String?,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [User].
extension UserPatterns on User {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _User value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _User() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _User value)  $default,){
final _that = this;
switch (_that) {
case _User():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _User value)?  $default,){
final _that = this;
switch (_that) {
case _User() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "email")  String? email, @JsonKey(name: "fullName")  String? fullName, @JsonKey(name: "phoneNumber")  String? phoneNumber, @JsonKey(name: "role")  String? role)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _User() when $default != null:
return $default(_that.id,_that.email,_that.fullName,_that.phoneNumber,_that.role);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "email")  String? email, @JsonKey(name: "fullName")  String? fullName, @JsonKey(name: "phoneNumber")  String? phoneNumber, @JsonKey(name: "role")  String? role)  $default,) {final _that = this;
switch (_that) {
case _User():
return $default(_that.id,_that.email,_that.fullName,_that.phoneNumber,_that.role);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "email")  String? email, @JsonKey(name: "fullName")  String? fullName, @JsonKey(name: "phoneNumber")  String? phoneNumber, @JsonKey(name: "role")  String? role)?  $default,) {final _that = this;
switch (_that) {
case _User() when $default != null:
return $default(_that.id,_that.email,_that.fullName,_that.phoneNumber,_that.role);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _User implements User {
  const _User({@JsonKey(name: "id") this.id, @JsonKey(name: "email") this.email, @JsonKey(name: "fullName") this.fullName, @JsonKey(name: "phoneNumber") this.phoneNumber, @JsonKey(name: "role") this.role});
  factory _User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

@override@JsonKey(name: "id") final  int? id;
@override@JsonKey(name: "email") final  String? email;
@override@JsonKey(name: "fullName") final  String? fullName;
@override@JsonKey(name: "phoneNumber") final  String? phoneNumber;
@override@JsonKey(name: "role") final  String? role;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserCopyWith<_User> get copyWith => __$UserCopyWithImpl<_User>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _User&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.role, role) || other.role == role));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,email,fullName,phoneNumber,role);

@override
String toString() {
  return 'User(id: $id, email: $email, fullName: $fullName, phoneNumber: $phoneNumber, role: $role)';
}


}

/// @nodoc
abstract mixin class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) _then) = __$UserCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "email") String? email,@JsonKey(name: "fullName") String? fullName,@JsonKey(name: "phoneNumber") String? phoneNumber,@JsonKey(name: "role") String? role
});




}
/// @nodoc
class __$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(this._self, this._then);

  final _User _self;
  final $Res Function(_User) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? email = freezed,Object? fullName = freezed,Object? phoneNumber = freezed,Object? role = freezed,}) {
  return _then(_User(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,phoneNumber: freezed == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String?,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
