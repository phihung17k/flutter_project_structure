import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../state/auth_cubit.dart';
import '../widgets/auth_form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => context.read<AuthCubit>(), // Assume registered in DI
      child: Scaffold(
        appBar: AppBar(title: const Text('Login')),
        body: const AuthForm(isLogin: true),
      ),
    );
  }
}
