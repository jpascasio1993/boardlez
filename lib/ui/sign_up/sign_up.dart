import 'package:boardlez/core/ui/textfield/boardlez_text_field.dart';
import 'package:boardlez/core/ui/theme/app_theme_data.dart';
import 'package:boardlez/core/ui/widget_view.dart';
import 'package:boardlez/ui/router/router.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';

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
    return SafeArea(
        child: Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0.w),
      height: double.infinity,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 5.0.h),
          Text(
            'BoardLez',
            style: TextStyle(
                color: widget.themeData.primaryColor,
                letterSpacing: -0.8,
                fontSize: 42.0.sp,
                fontWeight: FontWeight.w700),
          ),
          SizedBox(height: 5.0.h),
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              const BoardLezTextField(hintText: 'FullName'),
              SizedBox(
                height: 2.0.h,
              ),
              const BoardLezTextField(hintText: 'Email Address'),
              SizedBox(
                height: 2.0.h,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(
                    width: 30.0.w,
                    child: const BoardLezTextField(hintText: '+65 Singapore'),
                  ),
                  SizedBox(width: 2.0.w),
                  const Expanded(flex: 2, child: BoardLezTextField(hintText: 'Phone number'))
                ],
              ),
              SizedBox(height: 2.0.h),
              const BoardLezTextField(hintText: 'Password'),
              SizedBox(height: 2.0.h),
              const BoardLezTextField(hintText: 'Repeat Password'),
              SizedBox(height: 2.0.h),
              const BoardLezTextField(hintText: 'Organization Name'),
              SizedBox(height: 2.0.h),
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Forgot Password?',
                      textAlign: TextAlign.right,
                      style: Theme.of(context).textTheme.bodyText1,
                    )),
              )
            ],
          ),
          SizedBox(
            height: 5.0.h,
          ),
          SizedBox(
            width: double.infinity,
            child: TextButton(onPressed: () {}, child: const Text('Sign Up')),
          ),
          SizedBox(
            height: 2.0.h,
          ),
          Expanded(
              child: Align(
            alignment: Alignment.bottomCenter,
            child: RichText(
                text: TextSpan(
                    text: 'Have an account? ',
                    style: theme.textTheme.bodyText2,
                    children: [TextSpan(text: 'Sign In', style: theme.textTheme.bodyText1, recognizer: TapGestureRecognizer()..onTap = () {
                      context.go(ScreenPaths.login);
                    })])),
          ))
        ],
      ),
    ));
  }
}
