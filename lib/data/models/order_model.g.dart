// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderModel _$OrderModelFromJson(Map<String, dynamic> json) => OrderModel(
      eta: json['eta'] == null ? null : DateTime.parse(json['eta'] as String),
      image: json['image'] as String?,
      lastMile: json['lastMile'] as String?,
      postFee: json['postFee'] as String?,
      postFrom: json['postFrom'] as String?,
      receiptNum: json['receiptNum'] as String?,
      weight: (json['weight'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$OrderModelToJson(OrderModel instance) =>
    <String, dynamic>{
      'image': instance.image,
      'postFee': instance.postFee,
      'lastMile': instance.lastMile,
      'weight': instance.weight,
      'receiptNum': instance.receiptNum,
      'postFrom': instance.postFrom,
      'eta': instance.eta?.toIso8601String(),
    };
