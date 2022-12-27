import 'package:dads_dairy/screens/reset_password.dart';
import 'package:dads_dairy/widgets/appbar.dart';
import 'package:dads_dairy/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppbar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Center(child: Image.asset("assets/images/accesscontrol.png")),
            const Gap(50),
            const Text(
              "Forgot Password",
              style: TextStyle(
                  color: Color(0xff172b4d),
                  fontWeight: FontWeight.w600,
                  fontSize: 20),
            ),
            const Gap(6),
            const Text(
              "Please enter your registered Phone number",
              style: TextStyle(color: Color(0xffa5a5a5), fontSize: 16),
            ),
            const Gap(22),
            TextFormField(
              decoration:
                  const InputDecoration(hintText: "Enter Email Or Phone"),
            ),
            const Gap(70),
            PrimaryButton(
                title: "Continue",
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const ResetPassword()));
                },),
          ],
        ),
      ),
    );
  }
}
