import 'package:flutter/material.dart';

import '../../extensions.dart';
import '../../router.dart';
import '../animated_background.dart';
import '../forms.dart';


enum AuthScreenMode {
  signIn,
  signUp,
}

@RoutePage()
class AuthSignInSubScreen extends AuthSubScreen {
  const AuthSignInSubScreen({ super.key, }) : super(mode: AuthScreenMode.signIn);
}

@RoutePage()
class AuthSignUpSubScreen extends AuthSubScreen {
  const AuthSignUpSubScreen({ super.key, }) : super(mode: AuthScreenMode.signUp);
}

class AuthSubScreen extends StatelessWidget {
  const AuthSubScreen({
    required this.mode,
    super.key,
  });

  final AuthScreenMode mode;

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      leading: const AutoLeadingButton(),
      title: Text(
        switch(mode) {
          AuthScreenMode.signIn => context.localizations.authScreenSignIn,
          AuthScreenMode.signUp => context.localizations.authScreenSignUp,
        },
      ),
    ),
    body: Stack(
      children: [
        const Positioned.fill(
          child: AnimatedBackground(),
        ),
        Positioned.fill(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                elevation: 8,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 350),
                    child: switch(mode) {
                      AuthScreenMode.signIn => const SignInForm(),
                      AuthScreenMode.signUp => const SignUpForm(),
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
