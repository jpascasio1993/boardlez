import 'package:boardlez/core/ui/app_version/app_version.dart';
import 'package:boardlez/core/ui/textfield/boardlez_text_field.dart';
import 'package:boardlez/core/ui/theme/app_theme_data.dart';
import 'package:boardlez/core/ui/theme/default_theme.dart';
import 'package:boardlez/core/ui/widget_view.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

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
    return SafeArea(child: Container(
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
                color: themeData.primaryColor, letterSpacing: -0.8, fontSize: 36.0.sp, fontWeight: FontWeight.w700),
          ),
          SizedBox(height: 5.0.h),
          Column(
            children: [
              const BoardLezTextField(hintText: 'Email'),
              SizedBox(
                height: 2.0.h,
              ),
              const BoardLezTextField(hintText: 'Password'),
              SizedBox(
                height: 2.0.h,
              ),
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
            child: TextButton(onPressed: (){}, child: const Text('Sign In')),
          ),
          SizedBox(height: 2.0.h,),
          RichText(text: TextSpan(text: 'Don\' you have any account? ', style: theme.textTheme.bodyText2, children: [
            TextSpan(text: 'Sign Up', style: theme.textTheme.bodyText1)
          ]), ),
          Expanded(child: Align(
            alignment: Alignment.bottomCenter,
            child: AppVersion(version: 'v1.05(7)',),
          ))
        ],
      ),
    ));
  }
}
