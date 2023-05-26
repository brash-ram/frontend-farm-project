import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';

// import '../../api.dart';
import '../../extensions.dart';
import '../../providers.dart';
import '../../router.dart';
import '../animated_background.dart';

@RoutePage()
class ProductsScreen extends StatefulWidget {
  const ProductsScreen({ super.key, });

  @override
  State<ProductsScreen> createState() => ProductsScreenState();
}

class ProductsScreenState extends State<ProductsScreen> {
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
            AllProductsSubRoute(),
            MyProductsSubRoute(),
            CreateProductSubRoute(),
            // AuthSignUpSubRoute(),
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
                    // final value = ref.watch(authenticationProvider).when(
                    //   data: (data) => data,
                    //   error: (_, __) => AuthenticationState.guest,
                    //   loading: () => AuthenticationState.guest,
                    // );
                    ;

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
                          icon: Icons.list,
                          label: context.localizations.allProductsScreen,
                          onTap: () {
                            if (tabsRouter.activeIndex == 0)
                              // ignore: unused_result
                              ref.refresh(allProductsListProvider);
                            else
                              tabsRouter.setActiveIndex(0);
                          },
                        ),
                        SidebarXItem(
                          icon: Icons.list,
                          label: context.localizations.myProductsScreen,
                          onTap: () {
                            if (tabsRouter.activeIndex == 1)
                              // ignore: unused_result
                              ref.refresh(myProductsListProvider);
                            else
                              tabsRouter.setActiveIndex(1);
                          },
                        ),
                        SidebarXItem(
                          icon: Icons.add,
                          label: context.localizations.createProductScreen,
                          onTap:  () {
                            tabsRouter.setActiveIndex(2);
                            // if (tabsRouter.activeIndex == 1)
                            //   // ignore: unused_result
                            //   ;// ref.refresh(allProductsListProvider);
                            // else
                          },
                        ),
                        // SidebarXItem(
                        //   icon: Icons.logout,
                        //   label: context.localizations.singOut,
                        //   onTap: () {
                        //     remainTab();
                        //     ref.read(authenticationProvider.notifier).signOut();
                        //   },
                        // )
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
