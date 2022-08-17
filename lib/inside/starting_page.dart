import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class StartingPage extends StatelessWidget {
  StartingPage({Key? key}) : super(key: key);
  final controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/image7.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: PageView(
          controller: controller,
          children: [
            Container(
              child: Page1(),
            ),
            Container(
              child: Page2(),
            ),
            Container(
              child: Page3(),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/image7.png'),
            fit: BoxFit.cover,
          ),
        ),
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () {
                controller.jumpToPage(3);
              },
              child: Text(
                "skip",
              ),
            ),
            Center(
              child: SmoothPageIndicator(
                controller: controller,
                count: 3,
                effect: WormEffect(
                  spacing: 5,
                  dotColor: Colors.white38,
                  dotHeight: 10,
                  dotWidth: 10,
                  activeDotColor: Colors.teal.shade700,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                controller.nextPage(
                  duration: Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                );
              },
              child: Text(
                "Next",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/image7.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 50),
                child: Text(
                  "Find best deals",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    fontFamily: 'Montserrat',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Stack(
                children: [
                  Image(
                    image: AssetImage(
                      "images/image23.png",
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 70, left: 125),
                    child: Text(
                      "Rome",
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.only(left: 35),
              child: Row(
                children: [
                  Stack(
                    children: [
                      Image(
                        image: AssetImage(
                          "images/image24.png",
                        ),
                      ),
                      Text(
                        "Paris",
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    child: Row(
                      children: [
                        Stack(
                          children: [
                            Image(
                              image: AssetImage(
                                "images/image25.png",
                              ),
                            ),
                            Text(
                              "New York",
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: Stack(
                children: [
              Image(
              image: AssetImage(
                "images/image26.png",
              ),
            ),
            Text(
              "London",
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
