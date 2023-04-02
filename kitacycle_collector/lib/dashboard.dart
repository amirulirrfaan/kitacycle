import 'package:flutter/material.dart';
import 'package:kitacycle_collector/dashboard_drawer.dart';
import 'package:kitacycle_collector/cardwidget.dart';
import 'package:kitacycle_collector/carouselwidget.dart';
import 'package:kitacycle_collector/activationcard.dart';
import 'package:kitacycle_collector/progress.dart';
import 'package:kitacycle_collector/requestcard.dart';
import 'package:kitacycle_collector/transaction.dart';
import 'package:kitacycle_collector/request_details.dart';

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
                  'Hi Roger !',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Welcome back',
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
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
            child: ActivationCard(
                text: 'Ready to collect?',
                onPressed: () {
                  print('This is a test');
                }),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Transaction()),
              );
            },
            child: Padding(
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
              child: BalanceCard(
                title: "Balance",
                body: "Your current balance is",
                subInfoText: "MYR 20.00",
                subInfoTitle: "Your current balance",
                onMoreTap: () {},
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              height: 120,
              width: 120,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 60,
                    width: 60,
                    child: CircularProgressIndicator(
                      value: 0.7,
                      backgroundColor: Colors.grey,
                      valueColor:
                          AlwaysStoppedAnimation<Color>(Colors.lightGreen),
                      strokeWidth: 15,
                    ),
                  ),
                  const SizedBox(width: 50),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Monthly Goals',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '100kg left to collect',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'to claim RM100 bonus!',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 140, child: Carousel()),

          Divider(indent: 20, endIndent: 20, color: Colors.grey),
          const Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              'Pick-up Requests',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w800,
                  color: Colors.lightGreen),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Request_Details()),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(
                left: 50,
                right: 50,
              ),
              child: RequestCard(
                  imgUrl: 'assets/plastics.png',
                  title: '20kg - Plastic | HappyMart',
                  color: Colors.white,
                  onTap: () {}),
            ),
          )
          //Customized
        ]),
      ),
    );
  }
}
