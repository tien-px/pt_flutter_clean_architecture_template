// DO NOT EDIT. This is code generated via ptflutter

import 'package:pt_flutter_architecture/pt_flutter_architecture.dart';
import 'package:pt_flutter_clean_architecture_template/scenes/app/app_viewmodel.dart';

class RxDebug {
  static bool isEnabled = false;

  static void appViewModel(AppVMI input, AppVMO output, DisposeBag bag) {
    if (!isEnabled) return;
    input.onLoad.debug("onLoad").subscribe().disposedBy(bag);
  }
}
