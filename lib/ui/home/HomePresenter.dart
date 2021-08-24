import 'package:newtest/data/WeatherRepoImpl.dart';
import 'package:newtest/model/VideoJav.dart';
import 'package:newtest/repo/VideoJavRepo.dart';
import 'package:newtest/ui/base/BasePresenter.dart';
import 'package:newtest/ui/base/BaseView.dart';

class HomePresenter extends BasePresenter {
  VideoJavRepo repo = VideoJavRepoImpl();
  List<VideoJav> videos = [];
  bool isLoading = false;

  HomePresenter(BaseView view) : super(view);

  void getVideos() async {
    isLoading = true;
    await repo.getAll().then((it) {
      videos = it.response!.videos;
      isLoading = false;
      view?.update();
    }).catchError((Object obj) {
      isLoading = false;
    });
  }
}
