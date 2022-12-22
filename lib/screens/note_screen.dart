import 'package:dads_dairy/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';

class NoteScreen extends StatelessWidget {
  const NoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffef8ee),
      appBar: const MyAppbar(),
      body: Stack(
        children: [
          Image.asset(
            "assets/images/page.png",
            fit: BoxFit.contain,
          ),
          Column(
            children: [
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 26),
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 26),
                child: Column(
                  children: [
                    Image.asset("assets/images/hearts.png"),
                    const Text(
                      "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "Holiday",
                        fontSize: 14,
                        color: Color(0xff172b4d),
                      ),
                    ),
                    const Gap(4),
                    const Text(
                      "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "Holiday",
                        fontSize: 14,
                        color: Color(0xff172b4d),
                      ),
                    ),
                    const Gap(4),
                    const Text(
                      "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "Holiday",
                        fontSize: 14,
                        color: Color(0xff172b4d),
                      ),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  const Text("Pre"),
                  const Gap(10),
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: const Color(0xffd3ccc1))),
                    child: const Text("1",style: TextStyle(
                      color: Color(0xff172b4d)
                    ),),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
