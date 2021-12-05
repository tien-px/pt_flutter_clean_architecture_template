import 'package:get/get.dart';
import 'app_navigator.dart';
import 'app_usecase.dart';
import 'app_viewmodel.dart';

class AppBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AppViewModel>(() {
      return AppViewModel(
          navigator: AppNavigator(), useCase: AppSceneUseCase());
    });
  }
}
