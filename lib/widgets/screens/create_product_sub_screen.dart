import 'package:flutter/material.dart';

import '../../extensions.dart';
import '../../router.dart';


@RoutePage()
class CreateProductSubScreen extends StatelessWidget {
  const CreateProductSubScreen({ super.key, });

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      leading: const AutoLeadingButton(),
      title: const Text('Main'),
    ),
    backgroundColor: Colors.transparent,
    body: Column(
      children: [
        Center(
          child: Column(
            children: [
              'test'.widget,
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: ElevatedButton(
              //     child: const Text('User profile'),
              //     onPressed: () async => context.router.push(const UserProfileRoute()),
              //   ),
              // ),
            ],
          ),
        ),
      ],
    ),
  );
}
