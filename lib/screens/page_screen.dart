import 'package:dads_dairy/screens/dairy_detailed_screen.dart';
import 'package:dads_dairy/widgets/appbar.dart';
import 'package:dads_dairy/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';
import 'package:page_flip/page_flip.dart';

class PageScreen extends StatefulWidget {
  const PageScreen({super.key});

  @override
  State<PageScreen> createState() => _PageScreenState();
}

class _PageScreenState extends State<PageScreen> {
  int selectedIndex = 0;
  final _controller = PageController();
  final description =
      "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.\n "
      "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffef8ee),
      appBar: MyAppbar(
        color: const Color(0xfffef8ee),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const DairyDetailedScreen(),
                ),
              );
            },
            icon: Icon(
              Iconsax.edit,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              onPageChanged: (value) {
                setState(() {
                  selectedIndex = value;
                });
              },
              controller: _controller,
              children: <Widget>[
                BookPage(
                  title: "Not Happy To Be Leaving you",
                  description: description,
                ),
                BookPage(description: description),
                BookPage(description: description),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  _controller.previousPage(
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.easeInOut);
                },
                child: const Text(
                  "Pre",
                  style: TextStyle(
                    color: Color(0xff172b4d),
                  ),
                ),
              ),
              const Gap(20),
              Wrap(
                spacing: 12.0,
                children: List.generate(3, (index) {
                  return PageWidget(
                    number: "${index + 1}",
                    isSelected: index == selectedIndex,
                    onClick: () {
                      setState(() {
                        selectedIndex = index;
                      });
                      _controller.animateToPage(index,
                          duration: const Duration(milliseconds: 200),
                          curve: Curves.easeInOut);
                    },
                  );
                }),
              ),
              const Gap(10),
              TextButton(
                onPressed: () {
                  _controller.nextPage(
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.easeInOut);
                },
                child: const Text(
                  "Next",
                  style: TextStyle(
                    color: Color(0xff172b4d),
                  ),
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
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const DairyDetailedScreen(),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

class BookPage extends StatelessWidget {
  final String? title;
  final String description;
  const BookPage({super.key, this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 0.68,
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "assets/images/page.png",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(
              top: 45,
              left: 80,
              right: 60,
              bottom: 45,
            ),
            child: Column(
              children: [
                if (title != null)
                  Column(
                    children: [
                      Text(
                        title!,
                        style: const TextStyle(
                            fontSize: 20,
                            fontFamily: "Merriweather",
                            fontWeight: FontWeight.w700,
                            color: Color(0xff172b4d)),
                      ),
                      const Gap(20),
                    ],
                  ),
                Expanded(
                  child: Text(
                    description,
                    overflow: TextOverflow.fade,
                    style: const TextStyle(
                      fontFamily: "Holiday",
                      fontSize: 14,
                      color: Color(0xff172b4d),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PageWidget extends StatelessWidget {
  final String number;
  final VoidCallback onClick;
  final bool isSelected;
  const PageWidget({
    Key? key,
    required this.number,
    required this.isSelected,
    required this.onClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Container(
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          border: Border.all(
            width: 1.5,
            color:
                isSelected ? const Color(0xff172b4d) : const Color(0xffd3ccc1),
          ),
        ),
        child: Text(
          number,
          style: const TextStyle(color: Color(0xff172b4d)),
        ),
      ),
    );
  }
}
