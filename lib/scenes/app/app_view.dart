import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pt_flutter_architecture/pt_flutter_architecture.dart';
import 'package:pt_flutter_clean_architecture_template/scenes/base/base.dart';
import 'app_viewmodel.dart';

class AppView extends RxView<AppViewModel> {
  late final AppVMI input;
  late final AppVMO output;

  @override
  void bindViewModel() {
    input = AppVMI();
    output = viewModel.transform(input);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.app_home_title.tr()),
      ),
      body: Container(),
    );
  }
}
