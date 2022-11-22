import 'package:boardlez/core/ui/textfield/boardlez_text_field.dart';
import 'package:boardlez/core/ui/theme/app_theme_data.dart';
import 'package:boardlez/core/ui/widget_view.dart';
import 'package:boardlez/l10n/l10n.dart';
import 'package:boardlez/ui/router/router.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUp extends StatefulWidget {
  final AppThemeData themeData;

  const SignUp({required this.themeData});

  @override
  _SignUpController createState() => _SignUpController();
}

class _SignUpController extends State<SignUp> {
  @override
  Widget build(BuildContext context) => _SignUpView(this);
}

class _SignUpView extends WidgetView<SignUp, _SignUpController> {
  const _SignUpView(_SignUpController state) : super(state);

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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20.0.h),
          Text(
            localization.appName,
            style: TextStyle(
                color: widget.themeData.primaryColor,
                letterSpacing: -0.8,
                fontSize: 42.0.sp,
                fontWeight: FontWeight.w700),
          ),
          SizedBox(height: 15.0.h),
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              BoardLezTextField(hintText: localization.fullName),
              SizedBox(
                height: 15.0.h,
              ),
              BoardLezTextField(hintText: localization.emailAddress),
              SizedBox(
                height: 15.0.h,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(
                    width: 125.0.w,
                    child: const BoardLezTextField(hintText: '+65 Singapore'),
                  ),
                  SizedBox(width: 4.0.w),
                  Expanded(flex: 2, child: BoardLezTextField(hintText: localization.phoneNumber))
                ],
              ),
              SizedBox(height: 15.0.h),
              BoardLezTextField(hintText: localization.password),
              SizedBox(height: 15.0.h),
              BoardLezTextField(hintText: localization.repeatPassword),
              SizedBox(height: 15.0.h),
              BoardLezTextField(hintText: localization.organizationName),
              SizedBox(height: 15.0.h),
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                    onTap: () {},
                    child: Text(
                      localization.forgotPassword,
                      textAlign: TextAlign.right,
                      style: Theme.of(context).textTheme.bodyText1,
                    )),
              )
            ],
          ),
          SizedBox(
            height: 15.0.h,
          ),
          SizedBox(
            width: double.infinity,
            child: TextButton(onPressed: () {}, child: const Text('Sign Up')),
          ),
          SizedBox(
            height: 10.0.h,
          ),
          Expanded(
              child: Align(
            alignment: Alignment.bottomCenter,
            child: RichText(
                text: TextSpan(
                    text: '${localization.hasAccount} ',
                    style: theme.textTheme.bodyText2,
                    children: [TextSpan(text: localization.signIn, style: theme.textTheme.bodyText1, recognizer: TapGestureRecognizer()..onTap = () {
                      context.go(ScreenPaths.login);
                    })])),
          )),
          SizedBox(
            height: 20.0.h,
          ),
        ],
      ),
    ));
  }
}
