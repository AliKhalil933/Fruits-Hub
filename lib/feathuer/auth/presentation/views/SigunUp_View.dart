import 'package:flutter/material.dart';
import 'package:fruitshub/core/widgets/Custom_AppBar.dart';
import 'package:fruitshub/feathuer/auth/presentation/views/SigunUp_View_Body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});
  static const routeName = 'SigunUpView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildAppBar(context, Title: 'حساب جديد'),
      body: const SigunUpViewBody(),
    );
  }
}
