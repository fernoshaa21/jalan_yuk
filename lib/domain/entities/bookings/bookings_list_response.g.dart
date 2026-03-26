// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bookings_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BookingListResponse _$BookingListResponseFromJson(Map<String, dynamic> json) =>
    _BookingListResponse(
      data: (json['data'] as List<dynamic>?)
          ?.map(
            (e) => BookingListResponseData.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
      message: json['message'] as String?,
      meta: json['meta'] == null
          ? null
          : MetaBookingList.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BookingListResponseToJson(
  _BookingListResponse instance,
) => <String, dynamic>{
  'data': instance.data,
  'message': instance.message,
  'meta': instance.meta,
};

_BookingListResponseData _$BookingListResponseDataFromJson(
  Map<String, dynamic> json,
) => _BookingListResponseData(
  id: json['id'] as String?,
  activity: json['activity'] == null
      ? null
      : ActivityBookingList.fromJson(json['activity'] as Map<String, dynamic>),
  bookingDate: json['bookingDate'] == null
      ? null
      : DateTime.parse(json['bookingDate'] as String),
  qty: (json['qty'] as num?)?.toInt(),
  totalPrice: (json['totalPrice'] as num?)?.toInt(),
  bookingStatus: json['bookingStatus'] as String?,
  paymentStatus: json['paymentStatus'],
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$BookingListResponseDataToJson(
  _BookingListResponseData instance,
) => <String, dynamic>{
  'id': instance.id,
  'activity': instance.activity,
  'bookingDate': instance.bookingDate?.toIso8601String(),
  'qty': instance.qty,
  'totalPrice': instance.totalPrice,
  'bookingStatus': instance.bookingStatus,
  'paymentStatus': instance.paymentStatus,
  'createdAt': instance.createdAt?.toIso8601String(),
};

_ActivityBookingList _$ActivityBookingListFromJson(Map<String, dynamic> json) =>
    _ActivityBookingList(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      imageUrl: json['imageUrl'] as String?,
      location: json['location'] as String?,
    );

Map<String, dynamic> _$ActivityBookingListToJson(
  _ActivityBookingList instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'imageUrl': instance.imageUrl,
  'location': instance.location,
};

_MetaBookingList _$MetaBookingListFromJson(Map<String, dynamic> json) =>
    _MetaBookingList(
      total: (json['total'] as num?)?.toInt(),
      page: (json['page'] as num?)?.toInt(),
      limit: (json['limit'] as num?)?.toInt(),
      totalPages: (json['totalPages'] as num?)?.toInt(),
    );

Map<String, dynamic> _$MetaBookingListToJson(_MetaBookingList instance) =>
    <String, dynamic>{
      'total': instance.total,
      'page': instance.page,
      'limit': instance.limit,
      'totalPages': instance.totalPages,
    };
