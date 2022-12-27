import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class FinalScreen extends StatelessWidget {
  const FinalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Column(
            children: [
              Image.asset("assets/images/bgimage.png"),
              Center(
                child: Image.asset("assets/images/dairy.png",
                    width: 182, height: 280),
              ),
              const Gap(16),
              const Text(
                
                "Thank you for Ordering.We are on our way.",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              Expanded(
               
                child: Image.asset("assets/images/final.png",
                    fit: BoxFit.contain),
              )
            ],
          ),
        ],
      ),
    );
  }
}
