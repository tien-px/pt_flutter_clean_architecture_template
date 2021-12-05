//ignore_for_file: close_sinks
import 'package:pt_flutter_architecture/pt_flutter_architecture.dart';
import 'app_navigator.dart';
import 'app_usecase.dart';

class AppVMI {
  var onLoad = subject<void>();
}

class AppVMO {}

class AppViewModel extends RxViewModel<AppVMI, AppVMO> {
  AppNavigatorType navigator;
  AppSceneUseCaseType useCase;

  AppViewModel({required this.navigator, required this.useCase});

  @override
  AppVMO transform(AppVMI input) {
    super.transform(input);
    var output = AppVMO();

    input.onLoad.subscribe().disposedBy(bag);

    return output;
  }
}
