import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pertemuan5/models/user.dart';
import 'package:pertemuan5/modules/home_screen/home_screen.dart';
import 'package:pertemuan5/modules/splash_screen/splash_screen.dart';
import 'package:pertemuan5/modules/news_detail_screen/news_detail_screen.dart';

class AppRoutes {
  static const String splash = "splash";
  static const String home = "home";
  static const String newsDetail = "news-detail";

  static Page _splashScreenBuilder(BuildContext context, GoRouterState state) {
    return const MaterialPage(
      child: SplashScreen(),
    );
  }

  static Page _homeScreenBuilder(BuildContext context, GoRouterState state) {
    late User user;
    if (state.extra != null && state.extra is User) {
      user = state.extra! as User;
    } else {
      user = User(
        id: 002,
        name: "Permata",
        username: "permata",
        email: "permata@email.com",
        profilePhoto:
            "https://th.bing.com/th/id/OIP.HnVF9bQFhqu_gH3CKt2D2AHaHa?w=171&h=180&c=7&r=0&o=5&pid=1.7",
        phoneNumber: "085111123456",
      );
    }
    return MaterialPage(
      child: HomeScreen(
        user: user,
      ),
    );
  }

  static Page _newsDetailScreenBuilder(
    BuildContext context,
    GoRouterState state,
  ) {
    return MaterialPage(
      child: NewsDetailScreen(
        id: state.params["id"]!, content: '', title: '',
      ),
    );
  }

  static final GoRouter goRouter = GoRouter(
    routes: [
      GoRoute(
        name: splash,
        path: "/splash",
        pageBuilder: _splashScreenBuilder,
      ),
      GoRoute(
        name: home,
        path: "/home",
        pageBuilder: _homeScreenBuilder,
        routes: [
          GoRoute(
            name: newsDetail,
            path: "news-detail:id",
            pageBuilder: _newsDetailScreenBuilder,
          ),
        ],
      ),
    ],
    initialLocation: "/splash",
  );
}
