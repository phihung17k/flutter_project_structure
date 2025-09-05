// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_project_structure/features/authentication/presentation/states/auth_bloc.dart';

// class AuthForm extends StatefulWidget {
//   final bool isLogin;

//   const AuthForm({super.key, required this.isLogin});

//   @override
//   State<AuthForm> createState() => _AuthFormState();
// }

// class _AuthFormState extends State<AuthForm> {
//   final _emailController = TextEditingController();
//   final _passwordController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return BlocListener<AuthBloc, AuthState>(
//       listener: (context, state) {
//         if (state is AuthAuthenticated) {
//           // Navigate to dashboard
//         } else if (state is AuthError) {
//           ScaffoldMessenger.of(
//             context,
//           ).showSnackBar(SnackBar(content: Text(state.message)));
//         }
//       },
//       child: Column(
//         children: [
//           TextField(
//             controller: _emailController,
//             decoration: const InputDecoration(labelText: 'Email'),
//           ),
//           TextField(
//             controller: _passwordController,
//             decoration: const InputDecoration(labelText: 'Password'),
//           ),
//           ElevatedButton(
//             onPressed: () => context.read<AuthBloc>().add(
//               LoginEvent(
//                 username: _emailController.text,
//                 password: _passwordController.text,
//               ),
//             ),
//             child: Text(widget.isLogin ? 'Login' : 'Register'),
//           ),
//         ],
//       ),
//     );
//   }
// }
