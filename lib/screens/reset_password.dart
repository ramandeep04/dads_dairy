import 'package:dads_dairy/widgets/appbar.dart';
import 'package:dads_dairy/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar(),
      body: Padding(
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
              decoration: const InputDecoration(
                  hintText: "Enter New Password",
                  suffixIcon: Icon(Iconsax.eye)),
            ),
            const Gap(14),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "Confirm New Password",
                  suffixIcon: Icon(Iconsax.eye)),
            ),
            const Gap(50),
            PrimaryButton(title: "Update", onPressed: () {})
          ],
        ),
      ),
    );
  }
}
