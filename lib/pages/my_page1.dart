import 'package:flutter/material.dart';
import '/components/small_box.dart';

import '../first_page.dart';
import '../second_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MyPage1 extends StatefulWidget {
  const MyPage1({Key? key}) : super(key: key);

  @override
  State<MyPage1> createState() => _MyPage1State();
}

class _MyPage1State extends State<MyPage1> {
  //page controller-------------------------------
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 85, 100, 86),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          backgroundColor: Color.fromARGB(255, 85, 100, 86),
          icon: SmallBox(icon: Icons.phone),
          label: "",
        ),
        BottomNavigationBarItem(
            icon: SmallBox(
              icon: Icons.message,
            ),
            label: ""),
        BottomNavigationBarItem(
            icon: SmallBox(icon: Icons.messenger_sharp), label: ""),
        BottomNavigationBarItem(icon: SmallBox(icon: Icons.home), label: ""),
      ]),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 600,
              child: PageView(
                controller: _controller,
                children: [
                  FirstPage(),
                  SecondPage(),
                ],
              ),
            ),
            SmoothPageIndicator(
              controller: _controller,
              count: 2,
              effect: SwapEffect(
                  dotHeight: 14,
                  dotWidth: 14,
                  activeDotColor: Colors.white,
                  dotColor: Color.fromARGB(255, 41, 41, 41)),
            ),
            // SizedBox(height: 10,)
          ],
        ),
      ),
    );
  }
}
