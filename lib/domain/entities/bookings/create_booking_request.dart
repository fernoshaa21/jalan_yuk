class CreateBookingRequest {
  const CreateBookingRequest({
    required this.activityId,
    required this.bookingDate,
    required this.qty,
  });

  final int activityId;
  final String bookingDate;
  final int qty;

  Map<String, dynamic> toJson() {
    return {'activityId': activityId, 'bookingDate': bookingDate, 'qty': qty};
  }
}
