
import 'package:deliveryapp/features/Splash/presention/view/splash_view.dart';
import 'package:deliveryapp/features/Map/presention/view/MapView.dart';
import 'package:deliveryapp/features/order_start/presention/view/order_Start_view.dart';
import 'package:deliveryapp/features/order_start/presention/view/waitingView.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
 static const kMapView = '/MapView';
  static const kOrderStart ="/OrderStart";
  static const kWaitingView ="/WaitingView";
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: kMapView,
        builder: (context, state) => const MapView(),
      ),
      GoRoute(
        path: kOrderStart,
        builder: (context, state) => const  OrderStartView(),
      ),
      GoRoute(
        path: kWaitingView,
        builder: (context, state) => const WaitingView(),
      ),

    ],
  );
}
