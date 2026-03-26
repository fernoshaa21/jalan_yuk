// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payments_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaymentsResponse _$PaymentsResponseFromJson(Map<String, dynamic> json) =>
    _PaymentsResponse(
      data: json['data'] == null
          ? null
          : PaymentsResponseData.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
      meta: json['meta'],
    );

Map<String, dynamic> _$PaymentsResponseToJson(_PaymentsResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'meta': instance.meta,
    };

_PaymentsResponseData _$PaymentsResponseDataFromJson(
  Map<String, dynamic> json,
) => _PaymentsResponseData(
  bookingId: json['bookingId'] as String?,
  paymentId: json['paymentId'] as String?,
  method: json['method'] as String?,
  paymentStatus: json['paymentStatus'] as String?,
  amount: (json['amount'] as num?)?.toInt(),
  paidAt: json['paidAt'],
);

Map<String, dynamic> _$PaymentsResponseDataToJson(
  _PaymentsResponseData instance,
) => <String, dynamic>{
  'bookingId': instance.bookingId,
  'paymentId': instance.paymentId,
  'method': instance.method,
  'paymentStatus': instance.paymentStatus,
  'amount': instance.amount,
  'paidAt': instance.paidAt,
};
