import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:newtest/model/VideosStatusResponse.dart';

part 'RestClient.g.dart';

//flutter pub run build_runner build -> name_class.g.dart

@RestApi(baseUrl: "https://api.avgle.com/v1/")
abstract class RestClient {
  factory RestClient(Dio dio) = _RestClient;

  @GET("/videos/{page}")
  Future<VideosStatusResponse> getAll(@Path("page") int page);
}
