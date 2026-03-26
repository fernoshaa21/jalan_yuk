// To parse this JSON LocalUserData, do
//
//     final localUser = localUserFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'local_user.freezed.dart';
part 'local_user.g.dart';

LocalUser localUserFromJson(String str) => LocalUser.fromJson(json.decode(str));

String localUserToJson(LocalUser data) => json.encode(data.toJson());

@freezed
abstract class LocalUser with _$LocalUser {
  const factory LocalUser({
    @JsonKey(name: "data") LocalUserData? data,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "meta") dynamic meta,
  }) = _LocalUser;

  factory LocalUser.fromJson(Map<String, dynamic> json) =>
      _$LocalUserFromJson(json);
}

@freezed
abstract class LocalUserData with _$LocalUserData {
  const factory LocalUserData({
    @JsonKey(name: "accessToken") String? accessToken,
    @JsonKey(name: "user") User? user,
  }) = _LocalUserData;

  factory LocalUserData.fromJson(Map<String, dynamic> json) =>
      _$LocalUserDataFromJson(json);
}

@freezed
abstract class User with _$User {
  const factory User({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "fullName") String? fullName,
    @JsonKey(name: "phoneNumber") String? phoneNumber,
    @JsonKey(name: "role") String? role,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
