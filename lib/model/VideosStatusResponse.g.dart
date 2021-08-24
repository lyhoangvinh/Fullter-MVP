// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'VideosStatusResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VideosStatusResponse _$VideosStatusResponseFromJson(Map<String, dynamic> json) {
  return VideosStatusResponse(
    json['success'] as bool,
    json['response'] == null
        ? null
        : VideosResponse.fromJson(json['response'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$VideosStatusResponseToJson(
        VideosStatusResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'response': instance.response,
    };
