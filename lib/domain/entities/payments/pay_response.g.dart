// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pay_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PayResponse _$PayResponseFromJson(Map<String, dynamic> json) => _PayResponse(
  data: json['data'] == null
      ? null
      : PayResponseData.fromJson(json['data'] as Map<String, dynamic>),
  message: json['message'] as String?,
  meta: json['meta'],
);

Map<String, dynamic> _$PayResponseToJson(_PayResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'meta': instance.meta,
    };

_PayResponseData _$PayResponseDataFromJson(Map<String, dynamic> json) =>
    _PayResponseData(
      bookingId: json['bookingId'] as String?,
      paymentId: json['paymentId'] as String?,
      method: json['method'] as String?,
      paymentStatus: json['paymentStatus'] as String?,
      amount: (json['amount'] as num?)?.toInt(),
      paidAt: json['paidAt'] == null
          ? null
          : DateTime.parse(json['paidAt'] as String),
    );

Map<String, dynamic> _$PayResponseDataToJson(_PayResponseData instance) =>
    <String, dynamic>{
      'bookingId': instance.bookingId,
      'paymentId': instance.paymentId,
      'method': instance.method,
      'paymentStatus': instance.paymentStatus,
      'amount': instance.amount,
      'paidAt': instance.paidAt?.toIso8601String(),
    };
