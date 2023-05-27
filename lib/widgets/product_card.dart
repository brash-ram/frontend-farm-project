
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../api.dart';
import '../extensions.dart';
import '../providers.dart';


class ProductCard extends StatelessWidget {
  const ProductCard({
    required this.product,
    this.cartControl = false,
    super.key,
  });

  final Product product;
  final bool cartControl;

  @override
  Widget build(BuildContext context) => 
    Card(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (product.image.isNotEmpty && Uri.tryParse(product.image) != null)
              Row(
                children: [
                  Expanded(
                    child: CachedNetworkImage(
                      height: 200,
                      imageUrl: product.image,
                    ),
                  ),
                ],
              ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    product.name!,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const Icon(Icons.category, size: 14),
                Expanded(
                  child: Text(
                    product.category,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const Icon(Icons.location_city, size: 14),
                Expanded(
                  child: Text(
                    product.position,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const Icon(Icons.money, size: 14),
                Flexible(
                  child: RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.labelMedium,
                      children: [
                        TextSpan(
                          text: context.localizations.price,
                        ),
                        const TextSpan(text: ' '),
                        TextSpan(
                          text: product.price.formatCurrency,
                          style: Theme.of(context).textTheme.labelMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 5),
                const Icon(Icons.money, size: 14),
                Flexible(
                  child: RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.labelMedium,
                      children: [
                        TextSpan(
                          text: context.localizations.wholesalePrice,
                        ),
                        const TextSpan(text: ' '),
                        TextSpan(
                          text: product.tradePrice.formatCurrency,
                          style: Theme.of(context).textTheme.labelMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.labelMedium,
                      children: [
                        for (final tag in  product.tags)
                          switch (tag) {
                            ProductTags.eko => TextSpan(
                              children: [
                                const WidgetSpan(
                                  child: Icon(Icons.help, size: 14),
                                ),
                                TextSpan(
                                  text: context.localizations.productTagEco,
                                ),
                              ],
                            ),
                            ProductTags.post => TextSpan(
                              children: [
                                const WidgetSpan(
                                  child: Icon(Icons.help, size: 14),
                                ),
                                TextSpan(
                                  text: context.localizations.productTagPost,
                                ),
                              ],
                            ),
                            ProductTags.halal => TextSpan(
                              children: [
                                const WidgetSpan(
                                  child: Icon(Icons.help, size: 14),
                                ),
                                TextSpan(
                                  text: context.localizations.productTagHalal,
                                ),
                              ],
                            ),
                            _ => TextSpan(
                              children: [
                                const WidgetSpan(
                                  child: Icon(Icons.help, size: 14),
                                ),
                                TextSpan(
                                  text: context.localizations.productTagUnknown,
                                ),
                              ],
                            ),
                          },
                        ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    product.description,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
              ],
            ),
            if (cartControl)
              Row(
                children: [
                  Consumer(
                    builder: (context, ref, child) => ref.watch(productIsInCardProvider(product.id)).render(
                      skipLoadingOnRefresh: false,
                      skipLoadingOnReload: false,
                      loadingBuilder: () => const Checkbox(
                        value: false,
                        onChanged: null,
                      ),
                      (data) => Checkbox(
                        value: data,
                        onChanged: (value) async {
                          final user = await ref.read(userProvider.future);
                          if (user == null)
                            return;
                          if (value ?? true)
                            await apiClient.apiCartAddPost(
                              userId: user.id,
                              productId: product.id,
                            );
                          else
                            await apiClient.apiCartDeleteProductPost(
                              userId: user.id,
                              productId: product.id,
                            );
                          ref.invalidate(productIsInCardProvider(product.id));
                        },
                      ),
                    ),
                  ),
                  context.localizations.addToCart.widget,
              ],
            ),
          ],
        ),
      ),
    );
}
