// DO NOT EDIT. This is code generated via ptflutter

import 'package:pt_flutter_object_mapper/pt_flutter_object_mapper.dart';
import 'package:pt_flutter_clean_architecture_template/data/api/api_error.dart';
import 'package:pt_flutter_clean_architecture_template/data/api/api_output.dart';

class Entities {
  static void register() {
    Mappable.factories[APIError] = () => APIError();
    Mappable.factories[APIOutput] = () => APIOutput();
  }
}
