import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../core/core.dart';
import '../widgets/widgets.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool viewPassword = true;
  bool viewConfirmPassword = true;
  bool displayPassword() {
    setState(() {
      viewPassword = !viewPassword;
    });
    return viewPassword;
  }

  bool displayConrfirmPassword() {
    setState(() {
      viewConfirmPassword = !viewConfirmPassword;
    });
    return viewConfirmPassword;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121212),
      body: SafeArea(
        bottom: false,
        left: false,
        right: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () => context.go(AppRoute.onboardingThird),
                    icon: const Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: Colors.white,
                      size: 24,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 16,
                  bottom: 23,
                ),
                child: Text(
                  'Register',
                  style: GoogleFonts.lato(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Text(
                'Username',
                style: GoogleFonts.lato(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 8),
              InputTextFormFieldWidget(
                hintText: 'Enter your Username',
                onChanged: (value) {},
              ),
              const SizedBox(height: 25),
              Text(
                'E-mail',
                style: GoogleFonts.lato(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 8),
              InputTextFormFieldWidget(
                hintText: 'Enter your E-mail',
                onChanged: (value) {},
              ),
              const SizedBox(height: 25),
              Text(
                'Password',
                style: GoogleFonts.lato(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 8),
              InputTextFormFieldWidget(
                suffixIcon: IconButton(
                  onPressed: displayPassword,
                  icon: viewPassword
                      ? const Icon(Icons.visibility_off_outlined)
                      : const Icon(Icons.remove_red_eye_outlined),
                ),
                obscureText: viewPassword,
                hintText: 'Enter your Password',
                onChanged: (value) {},
              ),
              const SizedBox(height: 25),
              Text(
                'Confirm Password',
                style: GoogleFonts.lato(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 8),
              InputTextFormFieldWidget(
                suffixIcon: IconButton(
                  onPressed: displayConrfirmPassword,
                  icon: viewConfirmPassword
                      ? const Icon(Icons.visibility_off_outlined)
                      : const Icon(Icons.remove_red_eye_outlined),
                ),
                obscureText: viewConfirmPassword,
                hintText: 'Enter your Password',
              ),
              const SizedBox(height: 40),
              SizedBox(
                height: 48,
                child: PrimaryButtonWidget(
                  title: 'Register',
                  onPressed: () {},
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
