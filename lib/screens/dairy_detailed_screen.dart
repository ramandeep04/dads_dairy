import 'package:dads_dairy/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';

class DairyDetailedScreen extends StatefulWidget {
  const DairyDetailedScreen({super.key});

  @override
  State<DairyDetailedScreen> createState() => _DairyDetailedScreenState();
}

class _DairyDetailedScreenState extends State<DairyDetailedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffeff8f5),
      appBar: const MyAppbar(title: "Add New Diary"),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "My Diary",
                  style: TextStyle(
                      color: Color(0xff172b4d), fontWeight: FontWeight.w600),
                ),
                const Gap(10),
                Container(
                  width: 360,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text(
                    "Not happy to be leaving you",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Color(0xff172b4d),
                    ),
                  ),
                ),
                const Gap(10),
                const Text(
                  "Upload and attach files",
                  style: TextStyle(color: Color(0xff172b4d)),
                ),
                const Gap(10),
                Container(
                  decoration: const BoxDecoration(color: Colors.white),
                  child: DottedBorder(
                    padding: const EdgeInsets.all(24),
                    color: const Color(0xff172b4d),
                    strokeWidth: 1,
                    dashPattern: const [8, 8],
                    borderType: BorderType.RRect,
                    radius: const Radius.circular(10),
                    strokeCap: StrokeCap.round,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Icon(
                            Iconsax.document_favorite5,
                            color: Color(0xff172b4d),
                          ),
                          SizedBox(height: 4),
                          Text(
                            ("Click here to upload picture"),
                            style: TextStyle(color: Color(0xff898989)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const Gap(16),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: const BoxDecoration(color: Colors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: const [
                              Icon(Iconsax.gallery),
                              Gap(12),
                              Text("Dads128735.jpeg"),
                            ],
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Icon(Iconsax.close_circle),
                                  const Text("80%"),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text("2 MB"),
                           LinearProgressIndicator(
                            value: 0.8,
                            color: Color(0xfff0f0f0),
                            valueColor:
                                AlwaysStoppedAnimation<Color>(Color(0xff55776a)),
                          ),
                           
                        ],
                      ),
                     
                    ],
                  ),
                ),
                const Gap(20),
                const Text("Page no. 1",style: TextStyle(color: Color(0xff172b4d)),),
                const Gap(10),
                Container(
                  padding: const EdgeInsets.all(22),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Column(
                    children: [
                       const Text(
                        "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here,",
                        style: TextStyle(color: Color(0xff172b4d),fontSize: 12),
                      ),
                      const Gap(10),
                     const Text(
                          "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English………",
                          style: TextStyle(fontSize: 12,color: Color(0xff172b4d),)),
                      const Gap(10),
                      const Text(
                          "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.",
                          style: TextStyle(color: Color(0xff172b4d),fontSize: 12)),
                      RichText(
                        text: const TextSpan(
                          text:
                              "The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’",
                          style: TextStyle(
                            color: Color(0xff1e83c3),fontSize: 12
                          ),
                          children: [
                            TextSpan(
                              text:
                                  "making it look like readable English. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English……..",
                              style: TextStyle(color: Color(0xff172b4d),fontSize: 12),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
