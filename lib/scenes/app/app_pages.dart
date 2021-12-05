import 'package:get/get.dart';
import 'package:pt_flutter_clean_architecture_template/scenes/app/app_binding.dart';
import 'package:pt_flutter_clean_architecture_template/scenes/app/app_view.dart';

class Routes {
  static const INITIAL = '/';
}

class AppPages {
  static final pages = [
    GetPage(name: Routes.INITIAL, page: () => AppView(), binding: AppBinding())
  ];
}
