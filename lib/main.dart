import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:pt_flutter_architecture/pt_flutter_architecture.dart';
import 'package:pt_flutter_clean_architecture_template/data/api/api_services.dart';
import 'package:pt_flutter_clean_architecture_template/data/db/shared_prefs.dart';
import 'package:pt_flutter_clean_architecture_template/scenes/app/app_flavors.dart';
import 'package:pt_flutter_clean_architecture_template/generated/rx_debug.g.dart';
import 'package:pt_flutter_clean_architecture_template/scenes/app/app_delegate.dart';

import 'generated/entities.g.dart';

Future<void> main() async {
  /// Init to load native code
  WidgetsFlutterBinding.ensureInitialized();

  /// Init to load savedLocale
  await EasyLocalization.ensureInitialized();

  /// Set environment
  await BuildConfig.setNativeEnvironment();

  /// Init singleton of shared preferences
  await sharedPrefs.init();
  if (kDebugMode) {
    /// Enable api debugging
    API.shared.debug = true;

    /// Enable stream debugging
    RxDebug.isEnabled = true;
  }

  /// Set to `null` to disable logging for dispose bag
  DisposeBagConfigs.logger = null;

  /// Init object mapper
  Entities.register();

  /// Run app
  await mainDelegate();
}
