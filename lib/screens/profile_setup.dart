import 'package:dads_dairy/widgets/appbar.dart';
import 'package:dads_dairy/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';

class ProfileSetup extends StatelessWidget {
  const ProfileSetup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppbar(title: "Profile Setup"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            Column(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 50,
                  child: Image.asset(
                    "assets/images/profile.png",
                  ),
                ),
                const Gap(24),
                TextFormField(
                  decoration: const InputDecoration(
                      hintText: "John Doe", suffixText: "Name"),
                ),
                const Gap(14),
                TextFormField(
                  decoration: const InputDecoration(
                      hintText: "91      93230 02660", suffixText: "Phone"),
                ),
                const Gap(14),
                TextFormField(
                  decoration: const InputDecoration(
                      hintText: "Date of Birth", suffixText: "Date of Birth"),
                ),
                const Gap(14),
                TextFormField(
                  decoration: const InputDecoration(
                      hintText: "John Doe@gmail.com", suffixText: "Gmail"),
                ),
                const Gap(14),
                TextFormField(
                  decoration: const InputDecoration(
                      hintText: "Password", suffixIcon: Icon(Iconsax.eye)),
                ),
                const Gap(14),
                TextFormField(
                  decoration: const InputDecoration(
                      hintText: "Confirm Password", suffixIcon: Icon(Iconsax.eye)),
                ),
             Gap(60),
                PrimaryButton(title: "Submit", onPressed: (){})
              ],
            ),
          ],
        ),
      ),
    );
  }
}
