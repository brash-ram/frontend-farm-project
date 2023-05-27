import 'package:flutter/material.dart';

import '../../extensions.dart';
import '../../providers.dart';
import '../../router.dart';
import '../product_card.dart';


@RoutePage()
class MyProductsSubScreen extends StatelessWidget {
  const MyProductsSubScreen({ super.key, });

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      leading: const AutoLeadingButton(),
      title: context.localizations.allProductsScreen.widget,
    ),
    backgroundColor: Colors.transparent,
    body: Consumer(
      builder: (context, ref, child) => ref.watch(myProductsListProvider).render(
        skipLoadingOnRefresh: false,
        (data) => ListView(
          children: [
            // ProductCard(),
            for (final product in data)
              ProductCard(product: product),
          ],
        ),
      ),
    ),
  );
}
