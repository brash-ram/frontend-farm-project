import 'package:flutter/material.dart';

import '../../extensions.dart';
import '../../providers.dart';
import '../../router.dart';


@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({ super.key, });

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      leading: const AutoLeadingButton(),
      title: const Text('Main'),
    ),
    body: Column(
      children: [
        Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  child: context.localizations.userProfileScreen.widget,
                  onPressed: () async => context.router.push(const UserProfileRoute()),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  child: context.localizations.userSettingsScreen.widget,
                  onPressed: () async => context.router.push(const UserSettingsRoute()),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  child: context.localizations.authScreenSignIn.widget,
                  onPressed: () async => context.router.push(const AuthRoute()),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  child: context.localizations.allProductsScreen.widget,
                  onPressed: () async => context.router.push(const ProductsRoute()),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  child: context.localizations.coursesScreen.widget,
                  onPressed: () async => context.router.push(const CoursesRoute()),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Consumer(
                  builder: (context, ref, child) => DropdownButton<Brightness>(
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    value: ref.watch(appConfigNotifierProvider).brightness,
                    onChanged: (value) {
                      ref.read(appConfigNotifierProvider.notifier).setBrightness(value!);
                    },
                    items: const [
                      DropdownMenuItem(
                        value: Brightness.light,
                        child: Text('Light mode'),
                      ),
                      DropdownMenuItem(
                        value: Brightness.dark,
                        child: Text('Dark mode'),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Consumer(
                  builder: (context, ref, child) => DropdownButton<Locale>(
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    value: ref.watch(appConfigNotifierProvider).locale,
                    onChanged: (value) {
                      ref.read(appConfigNotifierProvider.notifier).setLocale(value!);
                    },
                    items: const [
                      DropdownMenuItem(
                        value: Locale('ru'),
                        child: Text('Russian'),
                      ),
                      DropdownMenuItem(
                        value: Locale('en'),
                        child: Text('English'),
                      ),
                    ],
                  ),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: ElevatedButton(
              //     child: const Text('Search for projects'),
              //     onPressed: () async => AutoRouter.of(context).push(SearchProjectsRoute()),
              //   ),
              // ),
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: ElevatedButton(
              //     onPressed: () async => authController.authenticated
              //       ? AutoRouter.of(context).push(ExamRoute(id: 1))
              //       : ScaffoldMessenger.of(context).showSnackBar(
              //         const SnackBar(
              //           content: Text('Unauthorized!'),
              //         ),
              //       ),
              //     child: const Text('Билет'),
              //   ),
              // ),
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: ElevatedButton(
              //     onPressed: () async => authController.signIn('test', 'password'),
              //     child: const Text('Проверить авторизацию'),
              //   ),
              // ),
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: ElevatedButton(
              //     onPressed: authController.signOut,
              //     child: const Text('Выйти'),
              //   ),
              // ),
            ],
          ),
        ),
      ],
    ),
  );
}
