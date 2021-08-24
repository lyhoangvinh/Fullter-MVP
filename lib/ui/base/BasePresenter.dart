import 'package:newtest/ui/base/BaseView.dart';

abstract class BasePresenter {
  BaseView? view;

  BasePresenter(this.view);

  void notifyDataChanged() {
    view?.update();
  }
}
