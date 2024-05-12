import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plants_shop/constants.dart';
import 'package:plants_shop/screens/home_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  List images = [
    "assets/images/snake-plants.png",
    "assets/images/lucky-jade-plants.png",
    "assets/images/peperomia-plant.png",
  ];

  late PageController pageController;

  int currentIndex = 0;

  @override
  void initState() {
    pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kcontentColor,
      appBar: AppBar(
        backgroundColor: kcontentColor,
        actions: [
          TextButton(
            style: TextButton.styleFrom(
              foregroundColor: Colors.grey.shade800,
            ),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomeScreen(),
                ),
              );
            },
            child: const Text("Skip"),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 350,
              child: PageView.builder(
                controller: pageController,
                itemCount: images.length,
                onPageChanged: (value) => setState(() {
                  currentIndex = value;
                }),
                itemBuilder: (context, index) => Image.asset(
                  images[index],
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                images.length,
                (index) => AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  margin: const EdgeInsets.only(right: 4),
                  width: index == currentIndex ? 15 : 6,
                  height: 6,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: index == currentIndex
                        ? kprimaryColor
                        : Colors.grey.shade400,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text.rich(
                TextSpan(children: [
                  TextSpan(
                    text: "Enjoy your life with ",
                    style: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  TextSpan(
                    text: "Plants",
                    style: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ]),
              ),
            ),
            const SizedBox(height: 40),
            Center(
              child: IconButton(
                onPressed: () async {
                  if (currentIndex == (images.length - 1)) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ),
                    );
                  } else {
                    await pageController.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  }
                },
                style: IconButton.styleFrom(
                  fixedSize: const Size(80, 80),
                  backgroundColor: kprimaryColor,
                  iconSize: 40,
                ),
                icon: const Icon(
                  CupertinoIcons.arrow_right,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
