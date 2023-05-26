import 'package:flutter/material.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

import '../../api.dart';
import '../../extensions.dart';
import '../../providers.dart';
import '../loading_button.dart';
import 'validators.dart';

part 'user_settings_form.gform.dart';


Map<String, dynamic>? codeLengthValidator(AbstractControl<String> control) =>
  Validators.minLength(6).call(control);

@ReactiveFormAnnotation()
class UserSettingsUserInfo {
  const UserSettingsUserInfo({
    @FormControlAnnotation<String>(
      validators: [ requiredValidator, ],
    ) this.fullName = '',
    @FormControlAnnotation<String>() this.bio = '',
    @FormControlAnnotation<String>(
      validators: [ requiredValidator, emailValidator, ],
    ) this.email = '',
    @FormControlAnnotation<String>(
    ) this.password,
  });

  final String fullName;
  final String bio;
  final String email;
  final String? password;

  @override
  String toString() =>
    'UserSettingsUserInfo(fullName: $fullName, bio: $bio, email: $email, password: $password)';
}

class UserSettingsForm extends StatelessWidget {
  const UserSettingsForm({
    super.key,
    this.userInfo,
  });

  final UserSettingsUserInfo? userInfo;

  @override
  Widget build(BuildContext context) => UserSettingsUserInfoFormBuilder(
    model: userInfo,
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
        // Email (read-only)
        Padding(
          padding: const EdgeInsets.all(8),
          child: ReactiveTextField(
            formControl: formModel.emailControl,
            readOnly: true,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.email),
              labelText: context.localizations.userBio,
            ),
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
            // validationMessages: {
            //   ValidationMessage.required: (error) => context.localizations.formErrorPasswordRequired,
            // },
          ),
        ),
        // Submit
        ReactiveUserSettingsUserInfoFormConsumer(
          builder: (context, form, child) => Consumer(
            builder: (context, ref, child) => ref.watch(userProvider).render(
              skipLoadingOnRefresh: false,
              loadingBuilder: () => const LoadingButton(),
              (data) => ElevatedButton(
                onPressed: switch (data) {
                  final _? when form.form.valid => () async {
                    print('save: ${form.model}');
                    final credentials = form.model;
                    if (!await ref.read(userProvider.notifier).editUser(
                      fullName: credentials.fullName,
                      bio: credentials.bio,
                      email: credentials.email,
                      // password: credentials.password,
                    ));
                    //   form.emailControl.setErrors({
                    //     emailTakenValidationMessage: true,
                    //   });
                    // else
                    //   await router.push(const UserProfileRoute());
                  },
                  _ => null,
                },
                child: context.localizations.save.widget,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
