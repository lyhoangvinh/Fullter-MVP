
import 'package:newtest/model/VideosStatusResponse.dart';

abstract class VideoJavRepo {
  Future<VideosStatusResponse> getAll();
}