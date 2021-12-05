import 'package:get/get.dart';
import 'package:pt_flutter_architecture/pt_flutter_architecture.dart';

abstract class ValidationStringUseCaseType {
  ValidationResult validateEmail(String email);

  ValidationResult validateStrongPassword(String password);

  ValidationResult validateStringAndNumber(String text);
}

class ValidationStringUseCase implements ValidationStringUseCaseType {
  static final RegExp passwordRegExp = RegExp(
    r'^(?=.*?[a-z])(?=.*?[0-9]).{8,}$',
  );

  static final RegExp stringAndNumberRegExp = RegExp(
    r'^(?!^[0-9]*$)(?!^[a-zA-Z]*$)(^.*)',
  );

  static bool isEmail(String email) {
    return GetUtils.isEmail(email);
  }

  static bool isStrongPassword(String password) {
    return passwordRegExp.hasMatch(password);
  }

  static bool isStringAndNumber(String string) {
    return stringAndNumberRegExp.hasMatch(string);
  }

  @override
  ValidationResult validateEmail(String email) {
    return ValidationStringUseCase.isEmail(email)
        ? ValidationResult.valid()
        : ValidationResult.invalid("Email Invalid");
  }

  @override
  ValidationResult validateStrongPassword(String password) {
    return ValidationStringUseCase.isStrongPassword(password)
        ? ValidationResult.valid()
        : ValidationResult.invalid("Not Strong Password");
  }

  @override
  ValidationResult validateStringAndNumber(String text) {
    return ValidationStringUseCase.isStringAndNumber(text)
        ? ValidationResult.valid()
        : ValidationResult.invalid("Not contain string and number");
  }
}
