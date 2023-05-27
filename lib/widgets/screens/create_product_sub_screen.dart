import 'package:flutter/material.dart';

import '../../extensions.dart';
import '../../router.dart';
import '../forms.dart';


@RoutePage()
class CreateProductSubScreen extends StatelessWidget {
  const CreateProductSubScreen({ super.key, });

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      leading: const AutoLeadingButton(),
      title: context.localizations.createProductScreen.widget,
    ),
    backgroundColor: Colors.transparent,
    body: ListView(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Card(
            elevation: 8,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 350),
                child: AddProductForm(),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
