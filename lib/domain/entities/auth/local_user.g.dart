// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LocalUser _$LocalUserFromJson(Map<String, dynamic> json) => _LocalUser(
  data: json['data'] == null
      ? null
      : LocalUserData.fromJson(json['data'] as Map<String, dynamic>),
  message: json['message'] as String?,
  meta: json['meta'],
);

Map<String, dynamic> _$LocalUserToJson(_LocalUser instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'meta': instance.meta,
    };

_LocalUserData _$LocalUserDataFromJson(Map<String, dynamic> json) =>
    _LocalUserData(
      accessToken: json['accessToken'] as String?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LocalUserDataToJson(_LocalUserData instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'user': instance.user,
    };

_User _$UserFromJson(Map<String, dynamic> json) => _User(
  id: (json['id'] as num?)?.toInt(),
  email: json['email'] as String?,
  fullName: json['fullName'] as String?,
  phoneNumber: json['phoneNumber'] as String?,
  role: json['role'] as String?,
);

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
  'id': instance.id,
  'email': instance.email,
  'fullName': instance.fullName,
  'phoneNumber': instance.phoneNumber,
  'role': instance.role,
};
