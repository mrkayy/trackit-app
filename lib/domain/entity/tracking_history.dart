import 'package:trackit_app/domain/entity/order.dart';

class TrackingHistory {
  final Order? order;
  final double? fromLang;
  final double? fromLat;
  final String? status;
  final double? toLang;
  final double? toLat;
  TrackingHistory(
      {this.status,
      this.fromLang,
      this.fromLat,
      this.order,
      this.toLang,
      this.toLat});
}
