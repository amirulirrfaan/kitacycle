import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kitacycle_collector/dashboard_drawer.dart';
import 'package:kitacycle_collector/cardwidget.dart';
import 'package:kitacycle_collector/carouselwidget.dart';
import 'package:kitacycle_collector/activationcard.dart';
import 'package:kitacycle_collector/insert_item_details.dart';
import 'package:kitacycle_collector/requestcard.dart';
import 'package:kitacycle_collector/transactionHistory.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            centerTitle: false,
            title: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Hi Helen !',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Lets clean our environment',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          )),
      drawer: DrawerFb1(),
      body: Center(
        child: ListView(children: [
          // Balance card
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
            child: BalanceCard(
              title: "Kita Points",
              // body: "Your current points are",
              subInfoText: "20 KP",
              subInfoTitle: "Your current Kita Points",
              onMoreTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Transaction()),
                );
              },
            ),
          ),

          // CarouselWidget()
          const SizedBox(height: 150, child: Carousel()),
          const Divider(indent: 20, endIndent: 20, color: Colors.grey),
          const Padding(
            padding: EdgeInsets.all(10),
          ),

          //TREE
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                'assets/tree.png',
                fit: BoxFit.cover,
                width: double.infinity,
                height: 200,
              ),
            ),
          ),

          const SizedBox(height: 20),
          //Recycle now
          const Padding(
            padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
            child: Text(
              'Recycle Now',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              'We will help you finding the nearest recycle truck to collect your waste in your area !',
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: SizedBox(
              height: 50,
              width: 300,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const InsertDetails(
                              title: 'Insert Details',
                            )),
                  );
                },
                child: const Text(
                  'Pick-up request',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
