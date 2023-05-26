import 'package:email_validator/email_validator.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';


const invalidCredentialsValidationMessage = 'invalid_credentials';
const emailTakenValidationMessage = 'email_taken';

Map<String, dynamic>? requiredValidator(AbstractControl<dynamic> control) =>
  Validators.required(control);

const emailInvalidValidationMessage = 'email_invalid';
Map<String, dynamic>? emailValidator(AbstractControl<dynamic> control) {
  final error = <String, dynamic>{emailInvalidValidationMessage: true};

  return switch(control.value) {
    final String value? => EmailValidator.validate(value) ? null : error,
    null => error,
    _ => null,
  };
}
