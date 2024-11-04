import 'package:flutter/material.dart';
import 'package:fruitshub/feathuer/auth/presentation/views/SigunUp_View.dart';
import 'package:fruitshub/feathuer/auth/presentation/views/login_View.dart';
import 'package:fruitshub/feathuer/onBording/presentation/views/onbording.dart';
import 'package:fruitshub/feathuer/splash/presentation/views/splash.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashScreen.routeName:
      return MaterialPageRoute(builder: (context) => const SplashScreen());
    case OnBordingView.routeName:
      return MaterialPageRoute(builder: (context) => const OnBordingView());
    case LoginView.routeName:
      return MaterialPageRoute(builder: (context) => const LoginView());

    case SignUpView.routeName:
      return MaterialPageRoute(builder: (context) => const SignUpView());

    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
