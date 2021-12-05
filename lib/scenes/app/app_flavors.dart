enum Environment {
  staging,
  production,
}

class BuildConfig {
  static Map<String, dynamic>? _config;

  static void setEnvironment(Environment env) {
    switch (env) {
      case Environment.staging:
        _config = _Config.stagingConfig;
        break;
      case Environment.production:
        _config = _Config.productionConfig;
        break;
    }
  }

  static Future<void> setNativeEnvironment() async {
    /// Configure your Flutter environment here
    BuildConfig.setEnvironment(Environment.staging);
  }

  static get appName {
    return _config?[_Config.keyAppName];
  }

  static get vrDomain {
    return _config?[_Config.keyDomain];
  }
}

class _Config {
  static const keyAppName = 'AppName';
  static const keyDomain = 'AppDomain';

  static Map<String, dynamic> stagingConfig = {
    keyAppName: 'Demo Staging',
    keyDomain: 'https://demo.com.vn',
  };

  static Map<String, dynamic> productionConfig = {
    keyAppName: 'Demo',
    keyDomain: 'https://demo.com.vn',
  };
}
