import 'package:newtest/data/remote/RestClient.dart';
import 'package:newtest/model/VideosStatusResponse.dart';
import 'package:newtest/repo/VideoJavRepo.dart';
import 'package:dio/dio.dart';

class VideoJavRepoImpl with VideoJavRepo {
  final client = RestClient(Dio(BaseOptions(contentType: "application/json")));

  @override
  Future<VideosStatusResponse> getAll() {
    return client.getAll(0);
  }
}
