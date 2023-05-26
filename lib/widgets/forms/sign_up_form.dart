import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

import '../../api.dart';
import '../../extensions.dart';
import '../../providers.dart';
import '../../router.dart';
import '../loading_button.dart';
import '../reactive_pinput.dart';
import 'validators.dart';

part 'sign_up_form.gform.dart';


Map<String, dynamic>? codeLengthValidator(AbstractControl<String> control) =>
  Validators.minLength(6).call(control);

@ReactiveFormAnnotation()
class UserCredentials {
  const UserCredentials({
    @FormControlAnnotation<String>(
      validators: [ requiredValidator, ],
    ) this.fullName = '',
    @FormControlAnnotation<String>() this.bio = '',
    @FormControlAnnotation<String>(
      validators: [ requiredValidator, emailValidator, ],
    ) this.email = '',
    @FormControlAnnotation<String>(
      validators: [ requiredValidator, codeLengthValidator, ],
    ) this.code = '',
    @FormControlAnnotation<String>(
      validators: [ requiredValidator, ],
    ) this.password = '',
  });

  final String fullName;
  final String bio;
  final String email;
  final String code;
  final String password;

  @override
  String toString() =>
    'UserCredentials(email: $email, code: $code, fullName: $fullName, bio: $bio, password: $password)';
}

class SignUpForm extends StatelessWidget {
  const SignUpForm({ super.key, });

  @override
  Widget build(BuildContext context) => UserCredentialsFormBuilder(
    builder: (context, formModel, child) => Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Full name
        Padding(
          padding: const EdgeInsets.all(8),
          child: ReactiveTextField(
            formControl: formModel.fullNameControl,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.person),
              labelText: context.localizations.fullName,
            ),
            validationMessages: {
              ValidationMessage.required: (error) => context.localizations.formErrorFullNameRequired,
            },
          ),
        ),
        // Bio
        Padding(
          padding: const EdgeInsets.all(8),
          child: ReactiveTextField(
            formControl: formModel.bioControl,
            minLines: 2,
            maxLines: 4,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.description),
              labelText: context.localizations.userBio,
            ),
          ),
        ),
        // Email and send code
        Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Email
              Expanded(
                child: Consumer(
                  builder: (context, ref, child) => ReactiveTextField(
                    onChanged: (control) {
                      ref.read(authenticationProvider.notifier).signOut();
                    },
                    formControl: formModel.emailControl,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.email),
                      labelText: context.localizations.email,
                    ),
                    validationMessages: {
                      emailTakenValidationMessage: (error) => context.localizations.formErrorEmailTaken,
                      emailInvalidValidationMessage: (error) => context.localizations.formErrorEmailInvalid,
                      ValidationMessage.required: (error) => context.localizations.formErrorEmailRequired,
                    },
                  ),
                ),
              ),
              // Send code
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: ReactiveUserCredentialsFormConsumer(
                  builder: (context, form, child) => Consumer(
                    builder: (context, ref, child) => ref.watch(authenticationProvider).render(
                      skipLoadingOnRefresh: false,
                      loadingBuilder: () => const LoadingButton(),
                      (data) => ElevatedButton(
                        onPressed: switch (data) {
                          AuthenticationState.guest when form.emailControl.valid => () async {
                            final email = form.emailControl.value!;
                            if (!await ref.read(authenticationProvider.notifier).sendEmailCode(
                              email: email,
                            ))
                              form.emailControl.setErrors({
                                emailTakenValidationMessage: true,
                              });
                          },
                          _ => null,
                        },
                        child: context.localizations.sendCode.widget,
                      ),
                    ),
                  ),
                ),
              ), 
            ],
          ),
        ),
        // Code
        Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                context.localizations.emailCode,
                style: Theme.of(context).textTheme.labelLarge,
              ),
              const SizedBox(height: 6),
              ReactivePinput(
                length: 6,
                closeKeyboardWhenCompleted: false,
                formControl: formModel.codeControl,
                defaultPinTheme: PinTheme(
                  width: 56,
                  height: 50,
                  textStyle: const TextStyle(),
                  decoration: BoxDecoration(
                    border: Border.all(color: context.theme.primaryColor),
                    color: context.theme.colorScheme.background,
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                  ),
                ),
                errorPinTheme: PinTheme(
                  width: 56,
                  height: 50,
                  textStyle: const TextStyle(),
                  decoration: BoxDecoration(
                    border: Border.all(color: context.theme.colorScheme.error),
                    color: context.theme.colorScheme.errorContainer,
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                  ),
                ),
                validationMessages: {
                  ValidationMessage.required: (error) => context.localizations.formErrorCodeRequired,
                  ValidationMessage.minLength: (error) => context.localizations.formErrorCodeLength,
                },
              ),
            ],
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
              ValidationMessage.required: (error) => context.localizations.formErrorPasswordRequired,
            },
          ),
        ),
        // Submit
        ReactiveUserCredentialsFormConsumer(
          builder: (context, form, child) => Consumer(
            builder: (context, ref, child) => ref.watch(authenticationProvider).render(
              skipLoadingOnRefresh: false,
              loadingBuilder: () => const LoadingButton(),
              (data) => ElevatedButton(
                onPressed: switch (data) {
                  AuthenticationState.unverified when form.form.valid => () async {
                    final router = context.router;
                    final credentials = form.model;
                    if (!await ref.read(authenticationProvider.notifier).signUp(
                      fullName: credentials.fullName,
                      bio: credentials.bio,
                      email: credentials.email,
                      code: credentials.code,
                      password: credentials.password,
                    ))
                      form.emailControl.setErrors({
                        emailTakenValidationMessage: true,
                      });
                    else
                      await router.replace(const UserProfileRoute());
                  },
                  _ => null,
                },
                child: context.localizations.signUp.widget,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
