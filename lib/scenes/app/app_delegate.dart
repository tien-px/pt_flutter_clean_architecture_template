import 'package:pt_flutter_architecture/pt_flutter_architecture.dart'; // ignore: unused_import
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pt_flutter_clean_architecture_template/scenes/app/app_pages.dart';
import 'package:pt_flutter_clean_architecture_template/scenes/base/base.dart';

Future<void> mainDelegate() async {
  runApp(EasyLocalization(
      supportedLocales: [
        Locales.EN,
      ],
      path: 'lib/assets/i18n',
      startLocale: Locales.EN,
      saveLocale: true,
      child: CleanArchitectureApp()));
}

class CleanArchitectureApp extends StatefulWidget {
  CleanArchitectureApp({Key? key}) : super(key: key);

  @override
  _CleanArchitectureAppState createState() => _CleanArchitectureAppState();
}

class _CleanArchitectureAppState extends State<CleanArchitectureApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          pageTransitionsTheme: PageTransitionsTheme(
            builders: {
              TargetPlatform.android: CupertinoPageTransitionsBuilder(),
              TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
            },
          ),
        ),
        getPages: AppPages.pages,
        initialRoute: Routes.INITIAL,
      ),
    );
  }
}
