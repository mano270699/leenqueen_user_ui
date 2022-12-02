import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:leenqueen_user/modules/calculator/view/calculator_view.dart';
import 'package:leenqueen_user/modules/forgrt_password/view/change_password.dart';

import 'package:leenqueen_user/modules/forgrt_password/view/confirm_code.dart';
import 'package:leenqueen_user/modules/forgrt_password/view/set_new_password.dart';
import 'package:leenqueen_user/modules/home/view/Group/binding/group_binding.dart';
import 'package:leenqueen_user/modules/home/view/Group/view/group_media_view.dart';
import 'package:leenqueen_user/modules/home/view/Group/view/my_group_view.dart';
import 'package:leenqueen_user/modules/home/view/Profile/view/achivement_points.dart';
import 'package:leenqueen_user/modules/home/view/Profile/view/edite_user_profile.dart';
import 'package:leenqueen_user/modules/home/view/Store/view/plan_tab/order_details.dart';
import 'package:leenqueen_user/modules/home/view/Store/view/plan_tab/plan_meal_details.dart';
import 'package:leenqueen_user/modules/home/view/Store/view/product_tab/cart_page.dart';
import 'package:leenqueen_user/modules/home/view/Store/view/product_tab/order_summary.dart';
import 'package:leenqueen_user/modules/home/view/Store/view/product_tab/product_new_payment_method.dart';
import 'package:leenqueen_user/modules/home/view/Store/view/product_tab/widgets/product_details.dart';

import 'package:leenqueen_user/modules/home/view/home_layout.dart';
import 'package:leenqueen_user/modules/notification/view/notification_view.dart';

import 'package:leenqueen_user/modules/onboarding%20_setup_fb/view/OnbordingFBSetUp_view.dart';
import 'package:leenqueen_user/modules/onboarding%20_setup_sign/binding/OnbordingSignSetUp_binding.dart';
import 'package:leenqueen_user/modules/onboarding%20_setup_sign/view/OnbordingSignSetUp_view.dart';
import 'package:leenqueen_user/modules/onboarding%20_setup_sign/view/pages/finish_setup.dart';
import 'package:leenqueen_user/modules/payment_method/binding/payment_methode_binding.dart';
import 'package:leenqueen_user/modules/payment_method/view/add_new_card.dart';
import 'package:leenqueen_user/modules/portfolio/binding/portfolio_binding.dart';
import 'package:leenqueen_user/modules/portfolio/view/portfolio_view.dart';
import 'package:leenqueen_user/modules/tracking_order/view/tracking_view.dart';

import '../modules/calculator/binding/calculator_binding.dart';
import '../modules/forgrt_password/binding/forget_password_binding.dart';
import '../modules/forgrt_password/view/forget_password_view.dart';

import '../modules/home/binding/layout_binding.dart';

import '../modules/home/view/Group/view/group_event_view.dart';
import '../modules/home/view/Profile/binding/profile_binding.dart';
import '../modules/home/view/Profile/view/achivement_history.dart';

import '../modules/home/view/Profile/view/user_view_profile.dart';
import '../modules/home/view/Store/binding/Store_binding.dart';
import '../modules/notification/binding/notification_binding.dart';
import '../modules/onboarding _setup_fb/binding/OnbordingFBSetUp_binding.dart';
import '../modules/home/view/Store/view/plan_tab/meal_payment/meal_edite_payment_method.dart';
import '../modules/home/view/Store/view/plan_tab/meal_payment/meal_payment_method.dart';
import '../modules/sign_in/binding/signIn_binding.dart';
import '../modules/sign_in/view/signIn_view.dart';
import '../modules/sign_up/binding/signUp_binding.dart';
import '../modules/sign_up/view/signUp_view.dart';
import '../modules/tracking_order/binding/tracking_binding.dart';
import '../modules/welcome/binding/welcome_binding.dart';
import '../modules/welcome/view/welcome_view.dart';
import '../modules/splash/binding/splash_binding.dart';
import '../modules/splash/view/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.SPLASH;
  static const WELCOME = Routes.WELCOME;
  static const SIGNIN = Routes.SIGNIN;
  static const SIGNUP = Routes.SIGNUP;
  static const FORGETPASSWORD = Routes.FORGETPASSWORD;
  static const CHANGEPASSWORD = Routes.CHANGEPASSWORD;
  static const NEWPASSWORD = Routes.NEWPASSWORD;
  static const CONFIRMCODE = Routes.CONFIRMCODE;
  static const SETUPUSER = Routes.SETUPUSER;
  static const FINISHSETUP = Routes.FINISHSETUP;
  static const SETUPUSERFB = Routes.SETUPUSERFB;
  static const HomeLayoutPage = Routes.HomeLayout;
  static const FeedPage = Routes.FeedPage;
  static const ChatPage = Routes.ChatPage;
  static const ProfilePage = Routes.ProfilePage;
  static const MyPlanPage = Routes.MyPlanPage;
  static const StroePage = Routes.StorePage;
  static const AchivementHistoryPage = Routes.AchivementHistoryPage;
  static const AchivementPointsPage = Routes.AchivementPointsPage;
  static const UserProfilePages = Routes.UserProfilePages;
  static const EditeUserProfilePage = Routes.EditeUserProfilepage;
  static const PlanMealDetailsPage = Routes.PlanMealDetailsPage;
  static const OrederDetailsPage = Routes.OrederDetailsPage;
  static const ProductDetailspage = Routes.ProductDetailsPage;
  static const CartPage = Routes.CartPage;
  static const MealPaymentMethodPage = Routes.MealPaymentMethodPage;
  static const ChooseMealPaymentMethodPage = Routes.ChooseMealPaymentMethodPage;
  static const AddPaymentMethodPage = Routes.AddPaymentMethodPage;
  static const ScanePaymentCardPage = Routes.ScanePaymentCardPage;
  static const OrderProductsSammaryPage = Routes.OrderProductsSammaryPage;
  static const ProductAddNewPaymentMethodPage =
      Routes.ProductAddNewPaymentMethodPage;
  static const TrackingOrderPage = Routes.TrackingOrderPage;
  static const CalculatorPage = Routes.CalculatorPage;
  static const MyGroupPage = Routes.MyGroupPage;
  static const GroupMediaPage = Routes.GroupMediaPage;
  static const GroupEventPage = Routes.GroupEventPage;
  static const PortfolioPage = Routes.PortfolioPage;
  static const NotificationPage = Routes.NotificationPage;

  static final routes = [
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.WELCOME,
      page: () => const WelcomeView(),
      binding: WelcomeBinding(),
    ),
    GetPage(
      name: _Paths.SIGNIN,
      page: () => SignInView(),
      binding: SignInBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP,
      page: () => SignUpView(),
      binding: SignUpBinding(),
    ),
    GetPage(
      name: _Paths.FORGETPASSWORD,
      page: () => ForgetPasswordView(),
      binding: ForgetPasswordBinding(),
    ),
    GetPage(
      name: _Paths.NEWPASSWORD,
      page: () => SetNewPasswordView(),
      binding: ForgetPasswordBinding(),
    ),
    GetPage(
      name: _Paths.CONFIRMCODE,
      page: () => ConfirmCode(),
      binding: ForgetPasswordBinding(),
    ),
    GetPage(
      name: _Paths.SETUPUSER,
      page: () => const OnbordingSignSetUp(),
      binding: OnbordingSignSetUpBinding(),
    ),
    GetPage(
      name: _Paths.FINISHSETUP,
      page: () => const FinishSetup(),
      binding: OnbordingSignSetUpBinding(),
    ),
    GetPage(
      name: _Paths.SETUPUSERFB,
      page: () => const OnbordingFBSetUp(),
      binding: OnbordingFBSetUpBinding(),
    ),
    GetPage(
      name: _Paths.HomeLayout,
      page: () => const HomeLayout(),
      binding: LayoutBinding(),
    ),
    GetPage(
      name: _Paths.AchivementHistoryPage,
      page: () => const AchivementHistoryView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.AchivementPointsPage,
      page: () => const AchivementPointsView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.EditeUserProfilepage,
      page: () => const EditeUserProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.UserProfilePages,
      page: () => const UserProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.CHANGEPASSWORD,
      page: () => ChangePasswordView(),
      binding: ForgetPasswordBinding(),
    ),
    GetPage(
      name: _Paths.PlanMealDetailsPage,
      page: () => const PlanMealDetailsView(),
      binding: StoreBinding(),
    ),
    GetPage(
      name: _Paths.OrederDetailsPage,
      page: () => const OrederDetailsView(),
      binding: StoreBinding(),
    ),
    GetPage(
      name: _Paths.ProductDetailsPage,
      page: () => const ProductDetailsView(),
      binding: StoreBinding(),
    ),
    GetPage(
      name: _Paths.CartPage,
      page: () => const CartView(),
      binding: StoreBinding(),
    ),
    GetPage(
      name: _Paths.MealPaymentMethodPage,
      page: () => const MealPaymentMethodView(),
      binding: StoreBinding(),
    ),
    GetPage(
      name: _Paths.ChooseMealPaymentMethodPage,
      page: () => const ChooseMealPaymentMethodView(),
      binding: PaymentMethodBinding(),
    ),
    GetPage(
      name: _Paths.AddPaymentMethodPage,
      page: () => AddNewCardView(),
      binding: PaymentMethodBinding(),
    ),
    GetPage(
      name: _Paths.OrderProductsSammaryPage,
      page: () => const OrderProductsSammary(),
      binding: StoreBinding(),
    ),
    GetPage(
      name: _Paths.ProductAddNewPaymentMethodPage,
      page: () => const ProductAddNewPaymentMethodView(),
      binding: StoreBinding(),
    ),
    GetPage(
      name: _Paths.TrackingOrderPage,
      page: () => const TrackingOrderView(),
      binding: TrackingBinding(),
    ),
    GetPage(
      name: _Paths.CalculatorPage,
      page: () => CalculatorView(),
      binding: CalculatorBinding(),
    ),
    GetPage(
      name: _Paths.MyGroupPage,
      page: () => MyGroupView(),
      binding: GroupBinding(),
    ),
    GetPage(
      name: _Paths.GroupMediaPage,
      page: () => const GroupMediaView(),
      binding: GroupBinding(),
    ),
    GetPage(
      name: _Paths.GroupEventPage,
      page: () => const GroupEventView(),
      binding: GroupBinding(),
    ),
    GetPage(
      name: _Paths.PortfolioPage,
      page: () => PortfolioView(),
      binding: PortfolioBinding(),
    ),
    GetPage(
      name: _Paths.NotificationPage,
      page: () => const NotificationView(),
      binding: NotificationBinding(),
    ),
  ];
}
