import 'package:get/get.dart';

abstract class BaseNavigatorType {
  void back();
}

class BaseNavigator implements BaseNavigatorType {
  @override
  void back() {
    Get.back();
  }
}
