import 'package:flutter/material.dart';

import 'claimCard.dart';

class rewardsList extends StatefulWidget {
  const rewardsList({super.key});

  @override
  State<rewardsList> createState() => _rewardsListState();
}

class _rewardsListState extends State<rewardsList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Kita Rewards'),
          backgroundColor: Colors.white,
        ),
        body: ListView(
          padding: const EdgeInsets.all(10),
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.black,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    "assets/uniqlo.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    "assets/hnm.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    "assets/coffeebean.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    "assets/starbucks.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    "assets/ikea.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    "assets/watsons.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
