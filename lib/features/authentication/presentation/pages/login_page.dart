import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../common/widgets/adaptive_button.dart';
import '../../../../common/widgets/error_widget.dart';
import '../../../../common/widgets/loading_indicator.dart';
import '../../../../infrastructure/router/route_names.dart';
import '../../../../infrastructure/storage/secure_storage.dart';
import '../../data/datasources/auth_local_datasource.dart';
import '../states/auth_bloc.dart';
import '../states/auth_event.dart';
import '../states/auth_state.dart';
import '../widgets/show_up_animation.dart';
import '../widgets/text_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  // final AuthLocalDataSource authLocalDataSource = AuthLocalDataSourceImpl(
  //   SecureStorage(),
  // );
  int selectedIndex = 0;
  bool showOption = false;

  List<String> bgList = [
    "assets/images/bg1.jpeg",
    "assets/images/bg2.jpeg",
    "assets/images/bg3.jpeg",
    "assets/images/bg4.webp",
    "assets/images/bg5.jpeg",
    "assets/images/bg6.jpeg",
    "assets/images/bg7.jpg",
    "assets/images/bg8.jpeg",
  ];

  @override
  void initState() {
    super.initState();
    // Load saved email and password when the page is initialized
    // _loadCredentials();
    // // Add listeners to save input when it changes
    // emailController.addListener(_saveCredentials);
    // passwordController.addListener(_saveCredentials);
  }

  // Future<void> _loadCredentials() async {
  //   final (email, password) = await authLocalDataSource.getCredentials();
  //   if (email != null) {
  //     emailController.text = email;
  //   }
  //   if (password != null) {
  //     passwordController.text = password;
  //   }
  // }

  // void _saveCredentials() {
  //   authLocalDataSource.cacheCredentials(
  //     emailController.text,
  //     passwordController.text,
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        height: 49,
        width: double.infinity,

        child: Row(
          children: [
            Expanded(
              child: showOption
                  ? ShowUpAnimation(
                      delay: 100,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: bgList.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedIndex = index;
                              });
                            },
                            child: CircleAvatar(
                              radius: 30,

                              backgroundColor: selectedIndex == index
                                  ? Colors.white
                                  : Colors.transparent,
                              child: Padding(
                                padding: const EdgeInsets.all(1),
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundImage: AssetImage(bgList[index]),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    )
                  : const SizedBox(),
            ),
            const SizedBox(width: 20),
            showOption
                ? GestureDetector(
                    onTap: () {
                      setState(() {
                        showOption = false;
                      });
                    },
                    child: const Icon(
                      Icons.close,
                      color: Colors.white,
                      size: 30,
                    ),
                  )
                : GestureDetector(
                    onTap: () {
                      setState(() {
                        showOption = true;
                      });
                    },
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(1),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage(bgList[selectedIndex]),
                        ),
                      ),
                    ),
                  ),
          ],
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(bgList[selectedIndex]),
            fit: BoxFit.fill,
          ),
        ),
        alignment: Alignment.center,
        child: Container(
          height: 400,
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 30),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(15),
            color: Colors.black.withOpacity(0.1),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaY: 5, sigmaX: 5),
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Spacer(),
                    Center(
                      child: TextWidget(text: "Login", weight: true, size: 30),
                    ),
                    const Spacer(),
                    TextWidget(text: "Email"),
                    Container(
                      height: 35,
                      decoration: const BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.white)),
                      ),
                      child: TextFormField(
                        style: const TextStyle(color: Colors.white),
                        decoration: const InputDecoration(
                          suffixIcon: Icon(Icons.mail, color: Colors.white),
                          fillColor: Colors.white,
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    const Spacer(),
                    TextWidget(text: "Password"),
                    Container(
                      height: 35,
                      decoration: const BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.white)),
                      ),
                      child: TextFormField(
                        style: const TextStyle(color: Colors.white),
                        decoration: const InputDecoration(
                          suffixIcon: Icon(Icons.lock, color: Colors.white),
                          fillColor: Colors.white,
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        Container(height: 15, width: 15, color: Colors.white),
                        const SizedBox(width: 10),
                        Expanded(
                          child: TextWidget(
                            text: "Remember Me , FORGET PASSWORD",
                            size: 12,
                            weight: true,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () => context.go(RouteNames.dashboard),
                      child: Container(
                        height: 40,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        alignment: Alignment.center,
                        child: TextWidget(text: "Log In", color: Colors.black),
                      ),
                    ),
                    const Spacer(),
                    Center(
                      child: TextWidget(
                        text: "Don't have a account REGISTER",
                        size: 12,
                        weight: true,
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
    ;
  }

  BlocConsumer<AuthBloc, AuthState> test() {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is AuthSuccess) {
          context.goNamed(RouteNames.dashboard);
        } else if (state is AuthFailure) {
          ErrorWidgetCustom.show(context, state.error);
        }
      },
      builder: (context, state) {
        if (state is AuthLoading) {
          return const LoadingIndicator();
        }
        return AdaptiveButton(
          onPressed: () {
            context.read<AuthBloc>().add(
              LoginEvent(emailController.text, passwordController.text),
            );
          },
          child: const Text('Login'),
        );
      },
    );
  }
}
