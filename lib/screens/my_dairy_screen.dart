import 'package:dads_dairy/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';

class MyDairyScreen extends StatelessWidget {
  const MyDairyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffef8ee),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "My Diaries",
                style: TextStyle(
                    color: Color(0xffbe8c39),
                    fontSize: 29,
                    fontWeight: FontWeight.bold),
              ),
              
              Expanded(
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Image.asset(
                        "assets/images/dairy.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                    Align(
                      alignment: const Alignment(0.0, -0.55),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Text(
                            "Upload New",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Color(0xff55766a),
                                fontSize: 16),
                          ),
                          Icon(
                            Iconsax.add_square,
                            size: 28,
                            color: Color(0xff55766a),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
