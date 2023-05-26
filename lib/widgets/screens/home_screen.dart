import 'package:flutter/material.dart';

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
                  child: const Text('User profile'),
                  onPressed: () async => context.router.push(const UserProfileRoute()),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  child: const Text('User settings'),
                  onPressed: () async => context.router.push(const UserSettingsRoute()),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  child: const Text('Auth'),
                  onPressed: () async => context.router.push(const AuthRoute()),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  child: const Text('Products'),
                  onPressed: () async => context.router.push(const ProductsRoute()),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: ElevatedButton(
              //     child: const Text('Sign up'),
              //     onPressed: () async => context.router.push(const AuthSignUpRoute()),
              //   ),
              // ),
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
