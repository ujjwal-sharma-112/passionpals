import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:passionpals/core/common/loader.dart';
import 'package:passionpals/core/common/sign_in_button.dart';
import 'package:passionpals/core/constants/constants.dart';
import 'package:passionpals/features/auth/controller/auth_controller.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoading = ref.watch(authControllerProvider);

    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          Constants.logoPath,
          height: 40,
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              "Skip",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      body: isLoading ? const Loader() : Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Dive into anything.",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.5,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "PassionPals is a place where you can find people who share your interests.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              letterSpacing: 0.5,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Image.asset(
            Constants.loginEmote,
            height: 200,
          ),
          const SizedBox(
            height: 20,
          ),
          const SignInButton(),
        ],
      ),
    );
  }
}
