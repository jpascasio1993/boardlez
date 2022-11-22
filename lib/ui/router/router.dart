import 'package:boardlez/core/ui/app_bar/boardlez_app_bar.dart';
import 'package:boardlez/core/ui/theme/default_theme.dart';
import 'package:boardlez/ui/login/login.dart';
import 'package:boardlez/ui/sign_up/sign_up.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScreenPaths {
  static String rootRoute = '/';
  static String login = '/';
  static String signUp = 'signUp';
}

final appRouter = GoRouter(routes: [
  AppRoute(ScreenPaths.login, (s) => Login(themeData: themeData),
      appBar: BoardlezAppBar(
        centerTitle: false,

        title: Padding(
          padding: EdgeInsets.only(left: 5.0.w),
          child: const Text('Welcome to'),
        ),
        titleTextStyle: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600, letterSpacing: -0.5, color: Colors.black),
        backgroundColor: Colors.transparent,
      ), routes: [
        AppRoute(ScreenPaths.signUp, (s) => SignUp(themeData: themeData), appBar: BoardlezAppBar(
          title: const Text('Sign Up'),
          titleTextStyle: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600, letterSpacing: -0.5, color: Colors.black),
          backgroundColor: Colors.transparent,
        ))
      ])
]);

class AppRoute extends GoRoute {
  AppRoute(String path, Widget Function(GoRouterState s) builder,
      {AppBar? appBar, List<GoRoute> routes = const [], this.useFade = false})
      : super(
          path: path,
          routes: routes,
          pageBuilder: (context, state) {
            final pageContent = Scaffold(
              appBar: appBar,
              body: builder(state),
              resizeToAvoidBottomInset: false,
            );
            if (useFade) {
              return CustomTransitionPage(
                key: state.pageKey,
                child: pageContent,
                transitionsBuilder: (context, animation, secondaryAnimation, child) {
                  return FadeTransition(opacity: animation, child: child);
                },
              );
            }
            return CupertinoPage(child: pageContent);
          },
        );
  final bool useFade;
}

String? _handleRedirect(GoRouterState state) {
  // Prevent anyone from navigating away from `/` if app is starting up.
  if (state.location != ScreenPaths.login) {
    return ScreenPaths.login;
  }
  debugPrint('Navigate to: ${state.location}');
  return null; // do nothing
}
