import 'package:dads_dairy/screens/dairy_detailed_screen.dart';
import 'package:dads_dairy/widgets/appbar.dart';
import 'package:dads_dairy/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class PageScreen extends StatelessWidget {
  const PageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffef8ee),
      appBar: const MyAppbar(
        color: Color(0xfffef8ee),
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              Image.asset(
                "assets/images/note.png",
                fit: BoxFit.contain,
              ),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(24),
                    padding: const EdgeInsets.all(30),
                    child: Column(
                      children: const [
                        Text(
                          "Not Happy To Be Leaving you",
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: "Merriweather",
                              fontWeight: FontWeight.w700,
                              color: Color(0xff172b4d)),
                        ),
                        Gap(20),
                        Text(
                          "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English.",
                          style: TextStyle(
                            fontFamily: "Holiday",
                            fontSize: 14,
                            color: Color(0xff172b4d),
                          ),
                        ),
                        Gap(4),
                        Text(
                          "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using",
                          style: TextStyle(
                            fontFamily: "Holiday",
                            fontSize: 14,
                            color: Color(0xff172b4d),
                          ),
                        ),
                        Gap(4),
                        Text(
                          "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English.",
                          style: TextStyle(
                            fontFamily: "Holiday",
                            fontSize: 14,
                            color: Color(0xff172b4d),
                          ),
                        )
                      ],
                    ),
                  ),
                  const Gap(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Pre",
                        style: TextStyle(
                          color: Color(0xff172b4d),
                        ),
                      ),
                      Gap(20),
                      PageWidget(
                        number: "1",
                        isSelected: true,
                      ),
                      Gap(16),
                      PageWidget(
                        number: "2",
                        isSelected: false,
                      ),
                      Gap(16),
                      PageWidget(
                        number: "3",
                        isSelected: true,
                      ),
                      Gap(10),
                      Text(
                        "Next",
                        style: TextStyle(
                          color: Color(0xff172b4d),
                        ),
                      ),
                    ],
                  ),
                  const Gap(10),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: PrimaryButton(
                        title: "Order Now",
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => DairyDetailedScreen()));
                        }),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class PageWidget extends StatelessWidget {
  final String number;
  final bool isSelected;
  const PageWidget({
    Key? key,
    required this.number,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        border: Border.all(
          color: isSelected ? const Color(0xffd3ccc1) : const Color(0xff172b4d),
        ),
      ),
      child: Text(
        number,
        style: const TextStyle(color: Color(0xff172b4d)),
      ),
    );
  }
}
