import 'package:get/get.dart';

import 'package:food_delivery/app/modules/cart/bindings/cart_binding.dart';
import 'package:food_delivery/app/modules/cart/views/cart_view.dart';
import 'package:food_delivery/app/modules/checkout/bindings/checkout_binding.dart';
import 'package:food_delivery/app/modules/checkout/views/checkout_view.dart';
import 'package:food_delivery/app/modules/detail_food/bindings/detail_food_binding.dart';
import 'package:food_delivery/app/modules/detail_food/views/detail_food_view.dart';
import 'package:food_delivery/app/modules/empty_pages/empty_history/bindings/empty_history_binding.dart';
import 'package:food_delivery/app/modules/empty_pages/empty_history/views/empty_history_view.dart';
import 'package:food_delivery/app/modules/empty_pages/empty_offer/bindings/empty_offer_binding.dart';
import 'package:food_delivery/app/modules/empty_pages/empty_offer/views/empty_offer_view.dart';
import 'package:food_delivery/app/modules/empty_pages/empty_order/bindings/empty_order_binding.dart';
import 'package:food_delivery/app/modules/empty_pages/empty_order/views/empty_order_view.dart';
import 'package:food_delivery/app/modules/home/bindings/home_binding.dart';
import 'package:food_delivery/app/modules/home/views/home_view.dart';
import 'package:food_delivery/app/modules/auth/login/bindings/login_binding.dart';
import 'package:food_delivery/app/modules/auth/login/views/login_view.dart';
import 'package:food_delivery/app/modules/empty_pages/no_internet/bindings/no_internet_binding.dart';
import 'package:food_delivery/app/modules/empty_pages/no_internet/views/no_internet_view.dart';
import 'package:food_delivery/app/modules/empty_pages/no_item/bindings/no_item_binding.dart';
import 'package:food_delivery/app/modules/empty_pages/no_item/views/no_item_view.dart';
import 'package:food_delivery/app/modules/payment/bindings/payment_binding.dart';
import 'package:food_delivery/app/modules/payment/views/payment_view.dart';
import 'package:food_delivery/app/modules/profiles/profile/bindings/profile_binding.dart';
import 'package:food_delivery/app/modules/profiles/profile/views/profile_view.dart';
import 'package:food_delivery/app/modules/profiles/profile_change/bindings/profile_change_binding.dart';
import 'package:food_delivery/app/modules/profiles/profile_change/views/profile_change_view.dart';
import 'package:food_delivery/app/modules/search/bindings/search_binding.dart';
import 'package:food_delivery/app/modules/search/views/search_view.dart';
import 'package:food_delivery/app/modules/auth/sign_up/bindings/sign_up_binding.dart';
import 'package:food_delivery/app/modules/auth/sign_up/views/sign_up_view.dart';
import 'package:food_delivery/app/modules/splash/bindings/splash_binding.dart';
import 'package:food_delivery/app/modules/splash/views/splash_view.dart';
import 'package:food_delivery/app/modules/auth/tab_bar_login_signup/bindings/tab_bar_login_signup_binding.dart';
import 'package:food_delivery/app/modules/auth/tab_bar_login_signup/views/tab_bar_login_signup_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.TAB_BAR_LOGIN_SIGNUP,
      page: () => TabBarLoginSignupView(),
      binding: TabBarLoginSignupBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_UP,
      page: () => SignUpView(),
      binding: SignUpBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_FOOD,
      page: () => DetailFoodView(),
      binding: DetailFoodBinding(),
    ),
    GetPage(
      name: _Paths.CART,
      page: () => CartView(),
      binding: CartBinding(),
    ),
    GetPage(
      name: _Paths.CHECKOUT,
      page: () => CheckoutView(),
      binding: CheckoutBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE_CHANGE,
      page: () => ProfileChangeView(),
      binding: ProfileChangeBinding(),
    ),
    GetPage(
      name: _Paths.PAYMENT,
      page: () => PaymentView(),
      binding: PaymentBinding(),
    ),
    GetPage(
      name: _Paths.EMPTY_ORDER,
      page: () => EmptyOrderView(),
      binding: EmptyOrderBinding(),
    ),
    GetPage(
      name: _Paths.EMPTY_OFFER,
      page: () => EmptyOfferView(),
      binding: EmptyOfferBinding(),
    ),
    GetPage(
      name: _Paths.EMPTY_HISTORY,
      page: () => EmptyHistoryView(),
      binding: EmptyHistoryBinding(),
    ),
    GetPage(
      name: _Paths.SEARCH,
      page: () => SearchView(),
      binding: SearchBinding(),
    ),
    GetPage(
      name: _Paths.NO_INTERNET,
      page: () => NoInternetView(),
      binding: NoInternetBinding(),
    ),
    GetPage(
      name: _Paths.NO_ITEM,
      page: () => NoItemView(),
      binding: NoItemBinding(),
    ),
  ];
}
