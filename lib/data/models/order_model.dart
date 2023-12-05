import 'package:json_annotation/json_annotation.dart';
import 'package:trackit_app/domain/entity/order.dart';

part 'order_model.g.dart';

@JsonSerializable()
class OrderModel extends Order {
  OrderModel(
      {super.eta,
      super.image,
      super.lastMile,
      super.postFee,
      super.postFrom,
      super.receiptNum,
      super.weight});

  factory OrderModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelFromJson(json);

  /// Connect the generated [_$OrderModelToJson] function to the `toJson` method.
  // Map<String, dynamic> toJson() => _$OrderModelToJson(this);
}
