import 'package:pt_flutter_architecture/pt_flutter_architecture.dart'; // ignore: unused_import
import 'package:pt_flutter_clean_architecture_template/data/db/shared_prefs.dart';

abstract class AppSettingsUseCaseType {
  void setFirstRun();
  bool checkFirstRun();
}

class AppSettingsUseCase implements AppSettingsUseCaseType {
  @override
  bool checkFirstRun() {
    return SharedPrefs.shared?.getBool("isFirstRun") ?? false;
  }

  @override
  void setFirstRun() {
    SharedPrefs.shared?.setBool("isFirstRun", true);
  }
}
