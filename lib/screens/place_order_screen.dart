import 'package:dads_dairy/screens/final_screen.dart';
import 'package:dads_dairy/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class PlaceOrderScreen extends StatelessWidget {
  const PlaceOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned(
            left: -90,
            top: -0,
            child:
                Image.asset("assets/images/bgimage.png", fit: BoxFit.contain),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Not Happy To Be\nLeaving You",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: Color(0xfff8f8f8),
                        fontSize: 26,
                        fontFamily: "MerriWeather",
                        fontWeight: FontWeight.w700),
                  ),
                  Image.asset(
                    "assets/images/dairy.png",
                    height: 380,
                  ),
                  const Gap(16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "22-Oct-2022",
                        style: TextStyle(
                            color: Color(0xfff8f8f8),
                            fontSize: 12,
                            fontFamily: "Merriweather",
                            fontWeight: FontWeight.w700),
                      ),
                      Gap(10),
                      Text(
                        "02:00 PM",
                        style: TextStyle(
                            color: Color(0xfff8f8f8),
                            fontSize: 12,
                            fontFamily: "Merriweather",
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  const Gap(44),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: PrimaryButton(
                      title: "Place Order",
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const FinalScreen()));
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            right: 0,
            child: Image.asset(
              "assets/images/image.png",
              fit: BoxFit.contain,
              alignment: Alignment.bottomCenter,
            ),
          ),
        ],
      ),
    );
  }
}
