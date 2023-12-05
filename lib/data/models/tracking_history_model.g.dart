// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tracking_history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrackingHistoryModel _$TrackingHistoryModelFromJson(
        Map<String, dynamic> json) =>
    TrackingHistoryModel(
      fromLang: (json['fromLang'] as num?)?.toDouble(),
      order: json['order'] == null
          ? null
          : OrderModel.fromJson(json['order'] as Map<String, dynamic>),
      fromLat: (json['fromLat'] as num?)?.toDouble(),
      status: json['status'] as String?,
      toLang: (json['toLang'] as num?)?.toDouble(),
      toLat: (json['toLat'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$TrackingHistoryModelToJson(
        TrackingHistoryModel instance) =>
    <String, dynamic>{
      'fromLang': instance.fromLang,
      'fromLat': instance.fromLat,
      'status': instance.status,
      'toLang': instance.toLang,
      'toLat': instance.toLat,
      'order': instance.order,
    };
