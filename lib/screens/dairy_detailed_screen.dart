import 'package:dads_dairy/screens/note_screen.dart';
import 'package:dads_dairy/screens/page_screen.dart';
import 'package:dads_dairy/screens/place_order_screen.dart';
import 'package:dads_dairy/widgets/appbar.dart';
import 'package:dads_dairy/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter_quill/flutter_quill.dart' as quil;
import 'package:gap/gap.dart';

class DairyDetailedScreen extends StatefulWidget {
  const DairyDetailedScreen({super.key});

  @override
  State<DairyDetailedScreen> createState() => _DairyDetailedScreenState();
}

class _DairyDetailedScreenState extends State<DairyDetailedScreen> {
  int selectedIndex = 0;
  final _controller = PageController();
  final quilController = quil.QuillController.basic();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffeff8f5),
      appBar: const MyAppbar(
        title: "Add New Diary",
        color: Color(0xffeff8f5),
      ),
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
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    fillColor: Colors.white,
                    filled: true,
                    hintText: "Enter Title",
                  ),
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Color(0xff172b4d),
                  ),
                ),
                const Gap(16),
                const Text(
                  "Upload and attach files",
                  style: TextStyle(
                      color: Color(0xff172b4d), fontWeight: FontWeight.w600),
                ),
                const Gap(10),
                Container(
                  height: 140,
                  decoration: const BoxDecoration(color: Colors.white),
                  child: DottedBorder(
                    padding: const EdgeInsets.all(24),
                    color: const Color(0xff172b4d),
                    strokeWidth: 1,
                    dashPattern: const [5, 5],
                    borderType: BorderType.RRect,
                    radius: const Radius.circular(10),
                    strokeCap: StrokeCap.round,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/document.png"),
                          const SizedBox(height: 4),
                          const Text(
                            ("Click here to upload picture"),
                            style: TextStyle(color: Color(0xff898989)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const Gap(16),
                const LoadingWidget(
                  image: "assets/images/gallery.png",
                  text: "Dads128735.jpeg",
                  progressbar: "80%",
                ),
                const Gap(12),
                const LoadingWidget(
                  image: "assets/images/gallery.png",
                  text: "Dads128735.jpeg",
                  progressbar: "60%",
                ),
                const Gap(20),
                const Text(
                  "Page no. 1",
                  style: TextStyle(
                      color: Color(0xff172b4d), fontWeight: FontWeight.w600),
                ),
                const Gap(10),
                quil.QuillToolbar.basic(
                  controller: quilController,
                  showSearchButton: false,
                  iconTheme: quil.QuillIconTheme(
                    iconSelectedFillColor: Theme.of(context).primaryColor,
                    iconUnselectedFillColor: Colors.white,
                  ),
                  fontFamilyValues: const {
                    'Roboto Mono': 'roboto-mono',
                    "Holiday": "Holiday",
                    'Nunito': 'nunito',
                    'Pacifico': 'pacifico',
                    'Clear': 'Clear'
                  },
                ),
                const Gap(16),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 500,
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: quil.QuillEditor.basic(
                    controller: quilController,
                    readOnly: false, // true for view only mode
                  ),
                ),
                const Gap(20),
                PrimaryButton(
                  title: "Submit",
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const PlaceOrderScreen(),
                      ),
                    );
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class LoadingWidget extends StatelessWidget {
  final String image;
  final String text;
  final String progressbar;
  const LoadingWidget({
    Key? key,
    required this.image,
    required this.text,
    required this.progressbar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0xffc7d9d3),
          ),
          borderRadius: BorderRadius.circular(20),
          color: Colors.white),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(image),
          const Gap(8.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      text,
                      style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Color(0xff172b4d)),
                    ),
                    Image.asset("assets/images/close.png"),
                  ],
                ),
                const Text(
                  "2Mb",
                  style: TextStyle(
                      fontWeight: FontWeight.w600, color: Color(0xff9b9b9b)),
                ),
                Row(
                  children: [
                    const Expanded(
                      child: LinearProgressIndicator(
                        value: 0.8,
                        backgroundColor: Color(0xfff0f0f0),
                        valueColor:
                            AlwaysStoppedAnimation<Color>(Color(0xff55776a)),
                      ),
                    ),
                    const Gap(16),
                    Text(
                      progressbar,
                      style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Color(0xff55776a)),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
