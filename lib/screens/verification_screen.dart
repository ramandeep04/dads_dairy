import 'package:dads_dairy/widgets/appbar.dart';
import 'package:dads_dairy/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:gap/gap.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppbar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Image.asset(
                "assets/images/msg.png",
                fit: BoxFit.cover,
              ),
            ),
            const Gap(16),
            Expanded(
              flex: 5,
              child: Column(
                children: [
                  const Text(
                    "Verifying Phone Number",
                    style: TextStyle(
                        color: Color(0xff172b4d),
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  const Gap(6),
                  const Text(
                    "Please enter the verification code sent to",
                    style: TextStyle(color: Color(0xffa5a5a5), fontSize: 16),
                  ),
                  const Gap(6),
                  const Text(
                    "+91 0987654321",
                    style: TextStyle(
                        color: Color(0xff55776a),
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  const Gap(30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: PinCodeTextField(
                      length: 4,
                      obscureText: false,
                      animationType: AnimationType.fade,
                      keyboardType: TextInputType.number,
                      textStyle: const TextStyle(
                        color: Color(0xff172b4d),
                      ),
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      pinTheme: PinTheme(
                        activeColor: Theme.of(context).primaryColor,
                        selectedColor: Theme.of(context).primaryColor,
                        selectedFillColor: const Color(0xfff9f9f9),
                        inactiveFillColor: const Color(0xfff9f9f9),
                        inactiveColor: const Color(0xfff9f9f9),
                        shape: PinCodeFieldShape.box,
                        borderRadius: BorderRadius.circular(12.0),
                        fieldHeight: 60,
                        fieldWidth: 60,
                        activeFillColor: Colors.white,
                      ),
                      cursorColor: Theme.of(context).primaryColor,
                      animationDuration: const Duration(milliseconds: 300),
                      enableActiveFill: true,
                      backgroundColor: Colors.white,
                      onCompleted: (v) {},
                      onChanged: (value) {},
                      beforeTextPaste: (text) {
                        return true;
                      },
                      appContext: context,
                    ),
                  ),
                  const Gap(10),
                  PrimaryButton(title: "Verify", onPressed: () {}),
                  const Gap(20),
                  const Text(
                    "00:30",
                    style: TextStyle(color: Color(0xff55776a), fontSize: 16),
                  ),
                  const Gap(12),
                  const Text(
                    "Trouble getting code?\n Verify using phone number",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Color(0xffa5a5a5), fontSize: 16),
                  ),
                  const Gap(30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Change Number",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Resend",
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
