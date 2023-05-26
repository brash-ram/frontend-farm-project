import 'package:auto_route/auto_route.dart' hide TestRoute;

import '../api.dart';
import '../widgets/screens.dart';

part 'app_router.gr.dart';  


class AuthGuard extends AutoRouteGuard {
  const AuthGuard();

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (authenticationController.authorized){
      resolver.next(true);
    } else {
      router.push(const AuthSignInSubRoute()).then(
        (value) => resolver.next(false),
      );
      // router.push(LoginRoute(onResult: (success){ 
      //             // if success == true the navigation will be resumed
      //             // else it will be aborted
      //            resolver.next(success);
      //       }));
      //      }
    }
  }
}


@AutoRouterConfig()
class AppRouter extends _$AppRouter {

  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      initial: true,
      page: HomeRoute.page,
      path: '/',
    ),
    AutoRoute(
      page: AuthRoute.page,
      path: '/auth',
      children: [
        AutoRoute(
          page: AuthSignInSubRoute.page,
          path: 'sign_in',
        ),
        AutoRoute(
          page: AuthSignUpSubRoute.page,
          path: 'sign_up',
        ),
      ],
    ),
    AutoRoute(
      page: ProductsRoute.page,
      path: '/products',
      children: [
        AutoRoute(
          initial: true,
          page: AllProductsSubRoute.page,
          path: 'all',
        ),
        AutoRoute(
          page: MyProductsSubRoute.page,
          path: 'my',
          guards: const [
            AuthGuard(),
          ],
        ),
        AutoRoute(
          page: CreateProductSubRoute.page,
          path: 'create',
          guards: const [
            AuthGuard(),
          ],
        ),
      ],
    ),
    AutoRoute(
      page: UserProfileRoute.page,
      path: '/user/profile',
      guards: const [
        AuthGuard(),
      ],
      
    ),
    AutoRoute(
      page: UserSettingsRoute.page,
      path: '/user/settings',
      guards: const [
        AuthGuard(),
      ],
    ),
    // AutoRoute(
    //   page: ExamRoute.page,
    //   path: '/exam/:id',
    // ),
    // AutoRoute(
    //   page: TicketErrorsRoute.page,
    //   path: '/exam/:id/errors',
    // ),
  ];
}
