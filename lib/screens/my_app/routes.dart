import '../../general_exports.dart';

List<GetPage<dynamic>> appRoutes = <GetPage<dynamic>>[
  // GetPage<SplashScreen>(
  //   name: routeSplash,
  //   page: () => const SplashScreen(),
  // ),
  GetPage<HomeBottomBarController>(
    name: routeHomeBottomBar,
    page: () => const HomeBottomBar(),
  ),

  GetPage<HomeScreenController>(
    name: routeHomeScreen,
    page: () => const HomeScreen(),
  ),

  GetPage<CategoriesController>(
    name: routeCategoriesScreen,
    page: () => const CategoriesScreen(),
  ),

  GetPage<FavoritesScreenController>(
    name: routeFavoritesScreen,
    page: () => const FavoritesScreen(),
  ),

  GetPage<MyProfileController>(
    name: routeProfileScreen,
    page: () => const MyAccount(),
  ),

  GetPage<TestScreenController>(
    name: routeTestScreen,
    page: () => const TestScreen(),
  ),

  GetPage<ProductsScreenController>(
    name: routeProductsScreen,
    page: () => const ProductsScreen(),
    transition: Transition.topLevel,
  ),
];
