import 'package:boardlez/core/ui/app_version/app_version.dart';
import 'package:boardlez/core/ui/textfield/boardlez_text_field.dart';
import 'package:boardlez/core/ui/theme/app_theme_data.dart';
import 'package:boardlez/core/ui/widget_view.dart';
import 'package:boardlez/l10n/l10n.dart';
import 'package:boardlez/ui/router/router.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Login extends StatefulWidget {
  final AppThemeData themeData;

  const Login({required this.themeData});

  @override
  _LoginController createState() => _LoginController();
}

class _LoginController extends State<Login> {
  @override
  Widget build(BuildContext context) => _LoginView(this);
}

class _LoginView extends WidgetView<Login, _LoginController> {
  const _LoginView(_LoginController state) : super(state);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final localization = AppLocalization.of(context);
    return SafeArea(
        child: Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0.w),
      height: double.infinity,
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 30.0.h),
          Text(
            localization.appName,
            style: TextStyle(
                color: widget.themeData.primaryColor,
                letterSpacing: -0.8,
                fontSize: 42.0.sp,
                fontWeight: FontWeight.w700),
          ),
          SizedBox(height: 30.0.h),
          Column(
            children: [
              BoardLezTextField(hintText: localization.email),
              SizedBox(
                height: 15.0.h,
              ),
              BoardLezTextField(hintText: localization.password),
              SizedBox(
                height: 10.0.h,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                    onTap: () {},
                    child: Text(
                      localization.forgotPassword,
                      textAlign: TextAlign.right,
                      style: theme.textTheme.bodyText1,
                    )),
              )
            ],
          ),
          SizedBox(
            height: 30.0.h,
          ),
          SizedBox(
            width: double.infinity,
            child: TextButton(onPressed: () {}, child: Text(localization.signIn)),
          ),
          SizedBox(
            height: 10.0.h,
          ),
          RichText(
            text: TextSpan(text: '${localization.noAccount} ', style: theme.textTheme.bodyText2, children: [
              TextSpan(
                  text: localization.signUp,
                  style: theme.textTheme.bodyText1,
                  recognizer: TapGestureRecognizer()..onTap = () => context.go('/${ScreenPaths.signUp}'))
            ]),
          ),
          const Expanded(
              child: Align(
            alignment: Alignment.bottomCenter,
            child: AppVersion(
              version: 'v1.05(7)',
            ),
          ))
        ],
      ),
    ));
  }
}
