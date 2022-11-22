import 'package:boardlez/ui/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:boardlez/l10n/l10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'core/ui/theme/default_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp(themeData: defaultTheme));
}

class MyApp extends StatelessWidget {
  final ThemeData themeData;

  const MyApp({super.key, required this.themeData});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: ScreenUtil.defaultSize,
      minTextAdapt: true,
      builder: (context, child) =>
          MaterialApp.router(
            debugShowCheckedModeBanner: false,
            routerDelegate: appRouter.routerDelegate,
            routeInformationProvider: appRouter.routeInformationProvider,
            routeInformationParser: appRouter.routeInformationParser,
            theme: defaultTheme,
            localizationsDelegates: const [
              AppLocalization.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: AppLocalization.delegate.supportedLocales,
          ),
    );
  }
}
