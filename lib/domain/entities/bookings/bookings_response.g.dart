// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bookings_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BookingsResponse _$BookingsResponseFromJson(Map<String, dynamic> json) =>
    _BookingsResponse(
      data: json['data'] == null
          ? null
          : BookingsReponseData.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
      meta: json['meta'],
    );

Map<String, dynamic> _$BookingsResponseToJson(_BookingsResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'meta': instance.meta,
    };

_BookingsReponseData _$BookingsReponseDataFromJson(Map<String, dynamic> json) =>
    _BookingsReponseData(
      id: json['id'] as String?,
      activity: json['activity'] == null
          ? null
          : Activity.fromJson(json['activity'] as Map<String, dynamic>),
      bookingDate: json['bookingDate'] == null
          ? null
          : DateTime.parse(json['bookingDate'] as String),
      qty: (json['qty'] as num?)?.toInt(),
      unitPrice: (json['unitPrice'] as num?)?.toInt(),
      totalPrice: (json['totalPrice'] as num?)?.toInt(),
      status: json['status'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$BookingsReponseDataToJson(
  _BookingsReponseData instance,
) => <String, dynamic>{
  'id': instance.id,
  'activity': instance.activity,
  'bookingDate': instance.bookingDate?.toIso8601String(),
  'qty': instance.qty,
  'unitPrice': instance.unitPrice,
  'totalPrice': instance.totalPrice,
  'status': instance.status,
  'createdAt': instance.createdAt?.toIso8601String(),
};

_Activity _$ActivityFromJson(Map<String, dynamic> json) => _Activity(
  id: (json['id'] as num?)?.toInt(),
  title: json['title'] as String?,
  imageUrl: json['imageUrl'] as String?,
  location: json['location'] as String?,
);

Map<String, dynamic> _$ActivityToJson(_Activity instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'imageUrl': instance.imageUrl,
  'location': instance.location,
};
