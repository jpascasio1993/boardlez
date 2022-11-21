import 'package:boardlez/ui/router/router.dart';
import 'package:flutter/material.dart';

import 'core/ui/theme/default_theme.dart';
import 'package:sizer/sizer.dart';

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
    return Sizer(
      builder: (context, orientation, deviceType) =>
          MaterialApp.router(
            debugShowCheckedModeBanner: false,
            routerDelegate: appRouter.routerDelegate,
            routeInformationProvider: appRouter.routeInformationProvider,
            routeInformationParser: appRouter.routeInformationParser,
            theme: defaultTheme,
            // localizationsDelegates: const [
            //   AppLocalizations.delegate,
            //   GlobalMaterialLocalizations.delegate,
            //   GlobalWidgetsLocalizations.delegate,
            //   GlobalCupertinoLocalizations.delegate,
            // ],
            // supportedLocales: AppLocalizations.supportedLocales,
          ),
    );
  }
}
