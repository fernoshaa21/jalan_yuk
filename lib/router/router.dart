import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jalan_yuk/lib.dart';

final dashboardNavigatorKey = GlobalKey<NavigatorState>();
final rootNavigatorKey = GlobalKey<NavigatorState>();
final homeTabNavigatorKey = GlobalKey<NavigatorState>(
  debugLabel: 'homeTabNavigator',
);
final exploreTabNavigatorKey = GlobalKey<NavigatorState>(
  debugLabel: 'exploreTabNavigator',
);
final bookingsTabNavigatorKey = GlobalKey<NavigatorState>(
  debugLabel: 'bookingsTabNavigator',
);
final profileTabNavigatorKey = GlobalKey<NavigatorState>(
  debugLabel: 'profileTabNavigator',
);

final router = GoRouter(
  navigatorKey: rootNavigatorKey,
  initialLocation: '/auth',
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return DashboardShellView(navigationShell: navigationShell);
      },
      branches: [
        StatefulShellBranch(
          navigatorKey: homeTabNavigatorKey,
          routes: [
            GoRoute(
              path: '/dashboard/home',
              name: 'dashboard_home',
              builder: (context, state) => const HomeView(),
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: exploreTabNavigatorKey,
          routes: [
            GoRoute(
              path: '/dashboard/explore',
              name: 'dashboard_explore',
              builder: (context, state) => const ExploreView(),
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: bookingsTabNavigatorKey,
          routes: [
            GoRoute(
              path: '/dashboard/bookings',
              name: 'dashboard_bookings',
              builder: (context, state) => const BookingsView(),
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: profileTabNavigatorKey,
          routes: [
            GoRoute(
              path: '/dashboard/profile',
              name: 'dashboard_profile',
              builder: (context, state) => const ProfileView(),
            ),
          ],
        ),
      ],
    ),
    GoRoute(
      path: '/auth',
      name: 'auth',
      builder: (context, state) => const AuthView(),
    ),
    GoRoute(
      path: '/register',
      name: 'register',
      builder: (context, state) => const RegisterView(),
    ),
    GoRoute(
      path: '/home',
      name: 'home',
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: '/explore_property',
      name: 'explore_property',
      builder: (context, state) => const ExplorePropertyView(),
    ),
    GoRoute(
      path: '/activity_detail',
      name: 'activity_detail',
      builder: (context, state) => const ActivityDetailView(),
    ),
    GoRoute(
      path: '/booking_detail',
      name: 'booking_detail',
      builder: (context, state) => const DetailBookingView(),
    ),
    GoRoute(
      path: '/booking',
      name: 'booking',
      builder: (context, state) {
        final extra = state.extra;

        if (extra is BookingDetailExtra) {
          return BookingView(
            activityTitle: extra.activityTitle,
            bookingDate: extra.bookingDate,
            guestCount: extra.guestCount,
            totalPrice: extra.totalPrice,
            ticketPrice: extra.totalPrice,
          );
        }

        return const BookingView();
      },
    ),
    GoRoute(
      path: '/booking/payment',
      name: 'payment',
      builder: (context, state) {
        final extra = state.extra;
        return PaymentView(
          bookingArgs: extra is BookingPaymentArgs ? extra : null,
        );
      },
    ),
  ],
);
