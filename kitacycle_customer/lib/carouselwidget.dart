import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:kitacycle_collector/collection-center.dart';
import 'package:kitacycle_collector/guide.dart';
import 'package:kitacycle_collector/price-list.dart';
import 'package:kitacycle_collector/rewards-list.dart';
import 'package:kitacycle_collector/transactionHistory.dart';
import 'package:kitacycle_collector/transactionHistory.dart';

class Carousel extends StatefulWidget {
  const Carousel({Key? key}) : super(key: key);

  @override
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  // - - - - - - - - - - - - Instructions - - - - - - - - - - - - - -
  // 1.Replace cards list with whatever widgets you'd like.
  // 2.Change the widgetMargin attribute, to ensure good spacing on all screensize.
  // 3.If you have a problem with this widget, please contact us at flutterbricks90@gmail.com
  // Learn to build this widget at https://www.youtube.com/watch?v=dSMw1Nb0QVg!
  // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

  List<Widget> cards = [
    CardFb1(
        text: "Collection center",
        imageUrl: 'assets/recycling-center.png',
        subtitle: "+30 books",
        onPressed: () {
          Get.to(collectionCenter());
        }),
    CardFb1(
        text: "Kita Rewards",
        imageUrl: "assets/medal.png",
        subtitle: "+30 books",
        onPressed: () {
          Get.to(rewardsList());
        }),
    CardFb1(
        text: "Waste price ",
        imageUrl: "assets/price-list.png",
        subtitle: "+30 books",
        onPressed: () {
          Get.to(PriceList());
        }),
    CardFb1(
        text: "Guide",
        imageUrl: "assets/user-guide.png",
        subtitle: "+30 books",
        onPressed: () {
          Get.to(Guide());
        }),
  ];

  final double carouselItemMargin = 0;

  late PageController _pageController;
  int _position = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 2, viewportFraction: .23);
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: _pageController,
        itemCount: cards.length,
        onPageChanged: (int position) {
          setState(() {
            _position = position;
          });
        },
        itemBuilder: (BuildContext context, int position) {
          return carouselSlider(position);
        });
  }

  Widget carouselSlider(int position) {
    return AnimatedBuilder(
      animation: _pageController,
      builder: (BuildContext context, widget) {
        return Container(
          margin: EdgeInsets.all(carouselItemMargin),
          child: Center(child: widget),
        );
      },
      child: Container(
        child: cards[position],
      ),
    );
  }
}

class CardFb1 extends StatelessWidget {
  final String text;
  final String imageUrl;
  final String subtitle;
  final Function() onPressed;

  const CardFb1(
      {required this.text,
      required this.imageUrl,
      required this.subtitle,
      required this.onPressed,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: GestureDetector(
        onTap: onPressed,
        child: Column(
          children: [
            Container(
              width: 70,
              height: 70,
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  BoxShadow(
                      offset: const Offset(0, 5),
                      blurRadius: 10,
                      spreadRadius: 0,
                      color: Colors.grey.withOpacity(.2)),
                  BoxShadow(
                      offset: const Offset(-5, -2),
                      blurRadius: 10,
                      spreadRadius: 0,
                      color: Colors.grey.withOpacity(.2)),
                ],
              ),
              child: Column(
                children: [
                  Image.asset(imageUrl, height: 50, fit: BoxFit.cover),
                ],
              ),
            ),
            const SizedBox(height: 5),
            Text(
              text,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.grey[600],
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
