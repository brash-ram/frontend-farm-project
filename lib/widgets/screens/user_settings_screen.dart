import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../extensions.dart';
import '../../providers.dart';
import '../../router.dart';
import '../animated_background.dart';
import '../forms/user_settings_form.dart';


@RoutePage()
class UserSettingsScreen extends StatelessWidget {
  const UserSettingsScreen({ super.key, });

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      leading: const AutoLeadingButton(),
      title: Text(context.localizations.userSettingsScreen),
    ),
    body: Stack(
      children: [
        const Positioned.fill(
          child: AnimatedBackground(),
        ),
        Column(
          children: [
            Center(
              child: Column(
                children: [
                  ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 350),
                    child: Consumer(
                      builder: (context, ref, child) => ref.watch(userProvider).render(
                        (data) => UserSettingsForm(
                          userInfo: switch(data) {
                            final user? => UserSettingsUserInfo(
                              email: user.email,
                              bio: user.bio,
                              fullName: user.fullName,
                            ),
                            _ => null,
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
