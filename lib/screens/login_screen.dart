import 'package:dads_dairy/screens/forgot_password.dart';
import 'package:dads_dairy/screens/verification_screen.dart';
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
            child: Column(
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
                  decoration:
                      const InputDecoration(hintText: "Enter Email Or Phone"),
                ),
                const Gap(12),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Password",
                    suffixIcon: Icon(
                      Iconsax.eye,
                      color: Colors.black,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const ForgotPassword()));
                      },
                      child: const Text(
                        "Forgot password?",
                        style:
                            TextStyle(fontSize: 12, color: Color(0xff2b2b2b)),
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
                          builder: (context) => const VerificationScreen(),
                        ),
                      );
                    }),
                const Gap(30),
                Row(
                  children: const [
                    Expanded(
                      child: Divider(
                        thickness: 1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        "or login with",
                        style: TextStyle(color: Color(0xffa5a5a5)),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 1,
                      ),
                    ),
                  ],
                ),
                const Gap(40),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Create New Account",
                    style: TextStyle(color: Colors.black),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
