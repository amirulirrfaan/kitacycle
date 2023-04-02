// TODO Implement this library.import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kitacycle_collector/dashboard.dart';
import 'package:kitacycle_collector/final_payment.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class DriverArrived extends StatefulWidget {
  @override
  State<DriverArrived> createState() => _DriverArrivedState();
}

class _DriverArrivedState extends State<DriverArrived> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Arrived',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Image.asset(
            'assets/mapArrived.png',
            fit: BoxFit.cover,
            // height: double.infinity,
            width: double.infinity,
          ),
          SlidingUpPanel(
            panelBuilder: (scrollController) => _buildPanel(scrollController),
            minHeight: 300,
            maxHeight: MediaQuery.of(context).size.height * 0.5,
          ),
        ],
      ),
    );
  }

  Widget _buildPanel(ScrollController scrollController) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 10.0,
          ),
        ],
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const Text(
            "You've arrived at your destination",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 50,
              vertical: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/driver.png',
                      height: 50,
                      width: 50,
                    ),
                    const SizedBox(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Synergy Sdn. Bhd.',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Collection Center',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Icon(
                  Icons.phone,
                  color: Colors.lightGreen,
                ),
              ],
            ),
          ),
          const Divider(
            thickness: 1,
            color: Colors.grey,
            indent: 16,
            endIndent: 16,
          ),
          // Container(
          //   padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
          //   child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       Row(
          //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //         children: const [
          //           Text(
          //             'Please wait while your waste is being calculated',
          //             style: TextStyle(
          //               color: Colors.grey,
          //               fontSize: 13,
          //             ),
          //           ),
          //         ],
          //       ),
          //     ],
          //   ),
          // ),
          const SizedBox(height: 20),
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
                        builder: (context) =>
                            FinalPayment()), // Confirm Payment
                  );
                },
                child: const Text(
                  'Sell Collection & Receive Payment',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
