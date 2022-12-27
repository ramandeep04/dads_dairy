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
        fit: StackFit.expand,
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Image.asset("assets/images/bgimage.png"),
                const Text(
                  "Not Happy To Be Leaving You",
                  style: TextStyle(
                      color: Color(0xfff8f8f8),
                      fontSize: 26,
                      fontFamily: "MerriWeather",
                      fontWeight: FontWeight.w700),
                ),
                Image.asset("assets/images/dairy.png"),
                const Gap(16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "22-Oct-2022",
                      style: TextStyle(color: Color(0xfff8f8f8), fontSize: 12),
                    ),
                    Gap(10),
                    Text(
                      "02:00 PM",
                      style: TextStyle(color: Color(0xfff8f8f8), fontSize: 12),
                    ),
                  ],
                ),
                const Gap(44),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: PrimaryButton(
                    
                    title: "Place Order", onPressed: () {
                      
                    }),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
