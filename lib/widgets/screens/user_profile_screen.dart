import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../../extensions.dart';
import '../../providers.dart';
import '../../router.dart';
import '../animated_background.dart';


@RoutePage()
class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({ super.key, });

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      leading: const AutoLeadingButton(),
      title: Text(context.localizations.userProfileScreen),
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
              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 300),
                child: Consumer(
                  builder: (context, ref, child) => ref.watch(userProvider).render(
                    (data) => switch(data) {
                      final user? => Card(
                        elevation: 8,
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      user.fullName,
                                      style: Theme.of(context).textTheme.headlineSmall,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      user.email,
                                      style: Theme.of(context).textTheme.labelMedium,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      user.bio,
                                      maxLines: 4,
                                      overflow: TextOverflow.ellipsis,
                                      
                                      style: Theme.of(context).textTheme.bodyMedium,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      _ => Text('Invalid state: missing user.'),
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  child: const Text('User settings'),
                  onPressed: () async => context.router.push(const UserSettingsRoute()),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
