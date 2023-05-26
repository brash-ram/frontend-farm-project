import 'package:flutter/material.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

import '../../api.dart';
import '../../extensions.dart';
import '../../providers.dart';
import '../../router.dart';
import '../loading_button.dart';
import 'validators.dart';

part 'sign_in_form.gform.dart';


@ReactiveFormAnnotation()
class UserCredentials {
  const UserCredentials({
    @FormControlAnnotation<String>(
      validators: [ requiredValidator, emailValidator, ],
    ) this.email = '',
    @FormControlAnnotation<String>(
      validators: [ requiredValidator, ],
    ) this.password = '',
  });

  final String email;
  final String password;

  @override
  String toString() =>
    'UserCredentials(email: $email, password: $password)';
}

class SignInForm extends StatelessWidget {
  const SignInForm({ super.key, });

  @override
  Widget build(BuildContext context) => UserCredentialsFormBuilder(
    builder: (context, formModel, child) => Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Email
        Padding(
          padding: const EdgeInsets.all(8),
          child: ReactiveTextField(
            formControl: formModel.emailControl,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.email),
              labelText: context.localizations.email,
            ),
            validationMessages: {
              invalidCredentialsValidationMessage: (error) => context.localizations.formErrorInvalidCredentials,
              emailInvalidValidationMessage: (error) => context.localizations.formErrorEmailInvalid,
              ValidationMessage.required: (error) => context.localizations.formErrorEmailRequired,
            },
          ),
        ),
        // Password
        Padding(
          padding: const EdgeInsets.all(8),
          child: ReactiveTextField(
            formControl: formModel.passwordControl,
            obscureText: true,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.key),
              labelText: context.localizations.password,
            ),
            validationMessages: {
              invalidCredentialsValidationMessage: (error) => context.localizations.formErrorInvalidCredentials,
              ValidationMessage.required: (error) => context.localizations.formErrorPasswordRequired,
            },
          ),
        ),
        ReactiveUserCredentialsFormConsumer(
          builder: (context, form, child) => Consumer(
            builder: (context, ref, child) => ref.watch(authenticationProvider).render(
              skipLoadingOnRefresh: false,
              loadingBuilder: () => const LoadingButton(),
              (data) => ElevatedButton(
                onPressed: switch(data) {
                  AuthenticationState.guest when form.form.valid => () async {
                    final router = context.router;
                    final credentials = form.model;
                    if (!await ref.read(authenticationProvider.notifier).signIn(
                      email: credentials.email,
                      password: credentials.password,
                    )) {
                      // form.emailControl.setErrors({
                      //   invalidCredentialsValidationMessage: true,
                      // });
                      form.passwordControl.setErrors({
                        invalidCredentialsValidationMessage: true,
                      });
                    } else
                      await router.replace(const UserProfileRoute());
                  },
                  _ => null,
                },
                child: context.localizations.signIn.widget,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
