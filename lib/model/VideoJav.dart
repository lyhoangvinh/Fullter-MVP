import 'package:json_annotation/json_annotation.dart';
part 'VideoJav.g.dart';

@JsonSerializable()
class VideoJav {
  String title = "";
  VideoJav(this.title);
  factory VideoJav.fromJson(Map<String, dynamic> json) => _$VideoJavFromJson(json);
}
