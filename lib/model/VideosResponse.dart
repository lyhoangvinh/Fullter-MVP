import 'package:newtest/model/VideoJav.dart';
import 'package:json_annotation/json_annotation.dart';
part 'VideosResponse.g.dart';

@JsonSerializable()
class VideosResponse {
  List<VideoJav> videos = [];
  VideosResponse(this.videos);
  factory VideosResponse.fromJson(Map<String, dynamic> json) => _$VideosResponseFromJson(json);
}