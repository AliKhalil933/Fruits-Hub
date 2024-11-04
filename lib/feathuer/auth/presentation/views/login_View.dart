import 'package:flutter/material.dart';
import 'package:fruitshub/core/widgets/Custom_AppBar.dart';
import 'package:fruitshub/feathuer/auth/presentation/views/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static const routeName = 'LoginView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildAppBar(context, Title: 'تسجيل دخول'),
      body: const LoginViewBody(),
    );
  }
}
