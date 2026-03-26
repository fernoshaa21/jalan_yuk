// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancel_booking_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CancelBookingResponse _$CancelBookingResponseFromJson(
  Map<String, dynamic> json,
) => _CancelBookingResponse(
  data: json['data'] == null
      ? null
      : CancelBookingResponseData.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  message: json['message'] as String?,
  meta: json['meta'],
);

Map<String, dynamic> _$CancelBookingResponseToJson(
  _CancelBookingResponse instance,
) => <String, dynamic>{
  'data': instance.data,
  'message': instance.message,
  'meta': instance.meta,
};

_CancelBookingResponseData _$CancelBookingResponseDataFromJson(
  Map<String, dynamic> json,
) => _CancelBookingResponseData(
  bookingId: json['bookingId'] as String?,
  bookingStatus: json['bookingStatus'] as String?,
  paymentStatus: json['paymentStatus'],
);

Map<String, dynamic> _$CancelBookingResponseDataToJson(
  _CancelBookingResponseData instance,
) => <String, dynamic>{
  'bookingId': instance.bookingId,
  'bookingStatus': instance.bookingStatus,
  'paymentStatus': instance.paymentStatus,
};
