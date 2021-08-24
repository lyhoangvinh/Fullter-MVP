// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'VideosResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VideosResponse _$VideosResponseFromJson(Map<String, dynamic> json) {
  return VideosResponse(
    (json['videos'] as List<dynamic>)
        .map((e) => VideoJav.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$VideosResponseToJson(VideosResponse instance) =>
    <String, dynamic>{
      'videos': instance.videos,
    };
