import 'package:json_annotation/json_annotation.dart';
import 'package:trackit_app/data/models/order_model.dart';
import 'package:trackit_app/domain/entity/tracking_history.dart';

part 'tracking_history_model.g.dart';

@JsonSerializable()
class TrackingHistoryModel extends TrackingHistory {
  final OrderModel? order;
  TrackingHistoryModel(
      {super.fromLang,
      this.order,
      super.fromLat,
      super.status,
      super.toLang,
      super.toLat})
      : super(order: order);

  /// Connect the generated [_$TrackingHistoryModelFromJson] function to the `fromJson`
  /// factory.
  factory TrackingHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$TrackingHistoryModelFromJson(json);

  /// Connect the generated [_$TrackingHistoryModelToJson] function to the `toJson` method.
  // Map<String, dynamic> toJson() => _$TrackingHistoryModelToJson(this);
}
