// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BookingDetailResponse _$BookingDetailResponseFromJson(
  Map<String, dynamic> json,
) => _BookingDetailResponse(
  data: json['data'] == null
      ? null
      : BookingDetailResponseData.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  message: json['message'] as String?,
  meta: json['meta'],
);

Map<String, dynamic> _$BookingDetailResponseToJson(
  _BookingDetailResponse instance,
) => <String, dynamic>{
  'data': instance.data,
  'message': instance.message,
  'meta': instance.meta,
};

_BookingDetailResponseData _$BookingDetailResponseDataFromJson(
  Map<String, dynamic> json,
) => _BookingDetailResponseData(
  id: json['id'] as String?,
  activity: json['activity'] == null
      ? null
      : ActivityBookingDetail.fromJson(
          json['activity'] as Map<String, dynamic>,
        ),
  bookingDate: json['bookingDate'] == null
      ? null
      : DateTime.parse(json['bookingDate'] as String),
  qty: (json['qty'] as num?)?.toInt(),
  unitPrice: (json['unitPrice'] as num?)?.toInt(),
  totalPrice: (json['totalPrice'] as num?)?.toInt(),
  bookingStatus: json['bookingStatus'] as String?,
  payment: json['payment'] == null
      ? null
      : PaymentBookingDetail.fromJson(json['payment'] as Map<String, dynamic>),
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$BookingDetailResponseDataToJson(
  _BookingDetailResponseData instance,
) => <String, dynamic>{
  'id': instance.id,
  'activity': instance.activity,
  'bookingDate': instance.bookingDate?.toIso8601String(),
  'qty': instance.qty,
  'unitPrice': instance.unitPrice,
  'totalPrice': instance.totalPrice,
  'bookingStatus': instance.bookingStatus,
  'payment': instance.payment,
  'createdAt': instance.createdAt?.toIso8601String(),
};

_ActivityBookingDetail _$ActivityBookingDetailFromJson(
  Map<String, dynamic> json,
) => _ActivityBookingDetail(
  id: (json['id'] as num?)?.toInt(),
  title: json['title'] as String?,
  imageUrl: json['imageUrl'] as String?,
  location: json['location'] as String?,
  price: (json['price'] as num?)?.toInt(),
);

Map<String, dynamic> _$ActivityBookingDetailToJson(
  _ActivityBookingDetail instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'imageUrl': instance.imageUrl,
  'location': instance.location,
  'price': instance.price,
};

_PaymentBookingDetail _$PaymentBookingDetailFromJson(
  Map<String, dynamic> json,
) => _PaymentBookingDetail(
  id: json['id'] as String?,
  method: json['method'] as String?,
  paymentStatus: json['paymentStatus'] as String?,
  paidAt: json['paidAt'],
);

Map<String, dynamic> _$PaymentBookingDetailToJson(
  _PaymentBookingDetail instance,
) => <String, dynamic>{
  'id': instance.id,
  'method': instance.method,
  'paymentStatus': instance.paymentStatus,
  'paidAt': instance.paidAt,
};
