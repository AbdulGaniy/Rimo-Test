import 'package:reactive_forms/reactive_forms.dart';

class FormValidation {
  /// Custom required true key
  static const String requiredTrueKey = 'requiredTrue';

  /// Validate the form
  static bool isValid(FormGroup form) {
    form.forEachChild((c) => c.setErrors({}));

    form.markAllAsTouched();

    return form.valid;
  }

  /// Set errors for invalid form controls
  static void setServerErrors(FormGroup form, Map<String, dynamic> errors) {
    form.controls.forEach((key, value) {
      if (!errors.containsKey(key)) {
        return;
      } else if (value is FormArray && errors[key] is List) {
        var subErrors = errors[key] as List;

        value.controls.asMap().forEach((index, control) {
          if (subErrors.length > index) {
            control.setErrors({subErrors[index]: true});
          }
        });
      } else {
        value.setErrors({errors[key]: true});
      }
    });
  }

  /// Custom validator for required true
  static Map<String, dynamic>? requiredTrue(AbstractControl<dynamic> control) {
    return control.isNotNull && control.value is bool && control.value == true
        ? null
        : {requiredTrueKey: true};
  }
}
