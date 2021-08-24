import 'package:json_annotation/json_annotation.dart';
import 'package:newtest/model/VideosResponse.dart';
part 'VideosStatusResponse.g.dart';

@JsonSerializable()
class VideosStatusResponse {
  bool success = false;
  VideosResponse? response;

  VideosStatusResponse(this.success, this.response);

  factory VideosStatusResponse.fromJson(Map<String, dynamic> json) =>
      _$VideosStatusResponseFromJson(json);
}