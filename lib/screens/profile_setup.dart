import 'package:dads_dairy/screens/my_dairy_screen.dart';
import 'package:dads_dairy/screens/phone_number_field.dart';
import 'package:dads_dairy/widgets/appbar.dart';
import 'package:easy_mask/easy_mask.dart';
import 'package:intl/intl.dart';

import 'package:dads_dairy/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';

class ProfileSetup extends StatefulWidget {
  const ProfileSetup({super.key});

  @override
  State<ProfileSetup> createState() => _ProfileSetupState();
}

class _ProfileSetupState extends State<ProfileSetup> {
  bool obscuredPassword = true;
  bool obscuredCPassword = true;
  final dobController = TextEditingController();
  final fKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppbar(title: "Profile Setup"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            Form(
              key: fKey,
              child: Column(
                children: [
                  AspectRatio(
                    aspectRatio: 2.6,
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 50,
                            child: Image.asset(
                              "assets/images/profile.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Image.asset(
                            "assets/images/camera.png",
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Gap(24),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "John Doe",
                      suffixText: "Name",
                    ),
                  ),
                  const Gap(14),
                  const PhoneNumberField(),
                  const Gap(14),
                  DateTimeFormField(
                    context: context,
                    dobController: dobController,
                  ),
                  const Gap(14),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "John Doe@gmail.com",
                      suffixText: "Gmail",
                    ),
                  ),
                  const Gap(14),
                  TextFormField(
                    obscureText: obscuredPassword,
                    obscuringCharacter: "*",
                    decoration: InputDecoration(
                      hintText: "Password",
                      suffixIcon: IconButton(
                        icon: Icon(
                            obscuredPassword
                                ? Iconsax.eye4
                                : Iconsax.eye_slash5,
                            color: const Color(0xffa5a5a5)),
                        onPressed: () {
                          setState(() {
                            obscuredPassword = !obscuredPassword;
                          });
                        },
                      ),
                    ),
                  ),
                  const Gap(14),
                  TextFormField(
                    obscureText: obscuredCPassword,
                    obscuringCharacter: "*",
                    decoration: InputDecoration(
                      hintText: "Confirm Password",
                      suffixIcon: IconButton(
                        icon: Icon(
                            obscuredCPassword
                                ? Iconsax.eye4
                                : Iconsax.eye_slash5,
                            color: const Color(0xffa5a5a5)),
                        onPressed: () {
                          setState(() {
                            obscuredCPassword = !obscuredCPassword;
                          });
                        },
                      ),
                    ),
                  ),
                  const Gap(60),
                  PrimaryButton(
                    title: "Submit",
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const MyDairyScreen(),
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DateTimeFormField extends FormField<String> {
  final BuildContext context;
  final TextEditingController dobController;

  DateTimeFormField({
    Key? key,
    required this.context,
    required this.dobController,
    FormFieldSetter<String>? onSaved,
    FormFieldValidator<String>? validator,
    String? initialValue,
    bool autovalidate = false,
  }) : super(
          key: key,
          onSaved: onSaved,
          validator: validator,
          initialValue: initialValue,
          builder: (FormFieldState<String> state) {
            return TextFormField(
              controller: dobController,
              onSaved: onSaved,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please enter date of birth";
                }
                try {
                  DateFormat("dd/MM/yyyy").parseStrict(value);
                  return null;
                } catch (e) {
                  return "Please enter a valid date";
                }
              },
              keyboardType: TextInputType.datetime,
              inputFormatters: [
                TextInputMask(mask: ["99/99/9999"]),
              ],
              decoration: InputDecoration(
                hintText: "Date of Birth",
                suffixIcon: IconButton(
                  onPressed: () async {
                    final date = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1950),
                      lastDate: DateTime.now(),
                    );
                    if (date != null) {
                      final selectedDate =
                          DateFormat('dd/MM/yyyy').format(date);
                      dobController.text = selectedDate;
                      state.didChange(selectedDate);
                    }
                  },
                  icon: Icon(
                    Iconsax.calendar5,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
            );
          },
        );

  static String dateTime(DateTime? selectedDate) {
    if (selectedDate == null) {
      return "Date of Birth";
    } else {
      return DateFormat('dd/MM/yyyy').format(selectedDate);
    }
  }
}
