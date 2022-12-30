import 'package:dads_dairy/screens/forgot_password.dart';
import 'package:dads_dairy/screens/my_dairy_screen.dart';
import 'package:dads_dairy/screens/profile_setup.dart';
import 'package:dads_dairy/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:gap/gap.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool obscuredPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Stack(
              children: [
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Image.asset(
                    "assets/images/bg.png",
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(child: Image.asset("assets/images/dadsdairy.png")),
                    const Gap(20),
                    const Text(
                      "Login and start Writing",
                      style: TextStyle(
                        color: Color(0xff55766a),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Gap(28),
                    TextFormField(
                      decoration: const InputDecoration(
                          hintText: "Enter Email Or Phone"),
                    ),
                    const Gap(12),
                    TextFormField(
                      obscureText: obscuredPassword,
                      decoration: InputDecoration(
                        hintText: "Password",
                        suffixIcon: IconButton(
                          icon: Icon(
                            obscuredPassword ? Iconsax.eye4 : Iconsax.eye_slash5,
                           color: const Color(0xffa5a5a5)
                          ),
                          onPressed: () {
                            setState(() {
                              obscuredPassword = !obscuredPassword;
                            });
                          },
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const ForgotPassword(),
                              ),
                            );
                          },
                          child: const Text(
                            "Forgot password?",
                            style: TextStyle(
                                fontSize: 12, color: Color(0xff2b2b2b)),
                          ),
                        ),
                      ],
                    ),
                    const Gap(10),
                    PrimaryButton(
                        title: "Log In",
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const MyDairyScreen(),
                            ),
                          );
                        }),
                    const Gap(30),
                   
                    const Gap(40),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const ProfileSetup(),
                          ),
                        );
                      },
                      child: const Text(
                        "Create New Account",
                        style: TextStyle(color: Colors.black),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
