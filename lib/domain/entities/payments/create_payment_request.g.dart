// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_payment_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreatePaymentRequest _$CreatePaymentRequestFromJson(
  Map<String, dynamic> json,
) => _CreatePaymentRequest(
  bookingId: json['bookingId'] as String,
  method: json['method'] as String,
);

Map<String, dynamic> _$CreatePaymentRequestToJson(
  _CreatePaymentRequest instance,
) => <String, dynamic>{
  'bookingId': instance.bookingId,
  'method': instance.method,
};
