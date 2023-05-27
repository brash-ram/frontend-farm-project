import 'package:flutter/material.dart';

import '../../extensions.dart';
import '../../providers.dart';
import '../../router.dart';
import '../product_card.dart';


@RoutePage()
class CartProductsSubScreen extends StatelessWidget {
  const CartProductsSubScreen({ super.key, });

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      leading: const AutoLeadingButton(),
      title: context.localizations.allProductsScreen.widget,
    ),
    backgroundColor: Colors.transparent,
    body: Consumer(
      builder: (context, ref, child) => ref.watch(cartProductsListProvider).render(
        skipLoadingOnRefresh: false,
        (data) => ListView(
          children: [
            // ProductCard(),
            for (final product in data)
              ProductCard(product: product, cartControl: true),
          ],
        ),
      ),
    ),
  );
}
