import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';

import '../../api.dart';
import '../../extensions.dart';
import '../../providers.dart';
import '../../router.dart';
import '../animated_background.dart';


@RoutePage()
class AuthScreen extends StatefulWidget {
  const AuthScreen({ super.key, });

  @override
  State<AuthScreen> createState() => AuthScreenState();
}

class AuthScreenState extends State<AuthScreen> {
  final controller = SidebarXController(selectedIndex: 0);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    // appBar: AppBar(
    //   leading: const AutoLeadingButton(),
    //   title: const Text('Test'),
    // ),
    body: Stack(
      children: [
        const Positioned.fill(
          child: AnimatedBackground(),
        ),
        AutoTabsRouter(
          routes: const [
            AuthSignInSubRoute(),
            AuthSignUpSubRoute(),
          ],
          builder: (context, child) {
            final tabsRouter = AutoTabsRouter.of(context);
            controller.selectIndex(tabsRouter.activeIndex);

            void remainTab() => WidgetsBinding.instance.addPostFrameCallback((_) {
              controller.selectIndex(tabsRouter.activeIndex);
            });

            return Row(
              children: [
                Consumer(
                  builder: (context, ref, child) {
                    final value = ref.watch(authenticationProvider).when(
                      data: (data) => data,
                      error: (_, __) => AuthenticationState.guest,
                      loading: () => AuthenticationState.guest,
                    );

                    return SidebarX(
                      controller: controller,
                      theme: SidebarXTheme(
                        decoration: BoxDecoration(
                          color: context.theme.colorScheme.background,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 5,
                              color: context.theme.colorScheme.shadow.withAlpha(25),
                            ),
                          ],
                        ),
                      ),
                      extendedTheme: const SidebarXTheme(
                        width: 200,
                      ),
                      items: [
                        SidebarXItem(
                          icon: Icons.login,
                          label: context.localizations.signIn,
                          onTap: value == AuthenticationState.guest
                            ? () => tabsRouter.setActiveIndex(0)
                            : remainTab,
                        ),
                        SidebarXItem(
                          icon: Icons.person_add,
                          label: context.localizations.signUp,
                          onTap: value == AuthenticationState.guest
                            ? () => tabsRouter.setActiveIndex(1)
                            : remainTab,
                        ),
                        SidebarXItem(
                          icon: Icons.logout,
                          label: context.localizations.singOut,
                          onTap: () {
                            remainTab();
                            ref.read(authenticationProvider.notifier).signOut();
                          },
                        )
                      ],
                    );
                  },
                ),
                Expanded(
                  child: child,
                ),
              ],
            );
          },
        ),
      ],
    ),
  );
}
