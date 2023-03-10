import 'package:dads_dairy/screens/login_screen.dart';
import 'package:dads_dairy/widgets/appbar.dart';
import 'package:dads_dairy/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  bool obscure = true;
  bool obscured = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppbar(),
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Center(
                  child: Image.asset("assets/images/accesscontrol.png"),
                ),
                const Gap(50),
                const Text(
                  "Reset Password",
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
                  obscureText: obscure,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                    hintText: "Enter New Password",
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            obscure = !obscure;
                          });
                        },
                        icon: Icon(obscure ? Iconsax.eye4 : Iconsax.eye_slash5,
                            color: const Color(0xffa5a5a5))),
                  ),
                ),
                const Gap(14),
                TextFormField(
                  obscureText: obscured,
                   obscuringCharacter: "*",
                  decoration: InputDecoration(
                    hintText: "Confirm New Password",
                    suffixIcon: IconButton(
                      icon: Icon(obscured ? Iconsax.eye4 : Iconsax.eye_slash5,
                        color: const Color(0xffa5a5a5)
                      ),
                      onPressed: (() {
                        setState(() {
                          obscured = !obscured;
                        });
                      }),
                    ),
                  ),
                ),
                const Gap(50),
                PrimaryButton(
                  title: "Update",
                  onPressed: () {
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ),
                        (route) => false);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
