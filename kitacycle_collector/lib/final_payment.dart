import 'package:flutter/material.dart';
import 'package:kitacycle_collector/successful_payment.dart';
import 'package:get/get.dart';

class FinalPayment extends StatelessWidget {
  const FinalPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: false,
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Sell Your Waste',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 23,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8, right: 8, left: 8),
              child: Text(
                "To complete payment",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8, right: 8, left: 8),
              child: Text(
                "Show this to your recycle center",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Scan To Pay Via Selected e-Wallet Below"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // List of images
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: 50, child: Image.asset('assets/duitnow.png')),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: 50, child: Image.asset('assets/touchngo.png')),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: 50, child: Image.asset('assets/maybank.png')),
                ),
              ],
            ),
            SizedBox(height: 20),
            // QR CODE
            Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 10.0,
                  ),
                ],
              ),
              child: Center(
                child: InkWell(
                  onTap: () {
                    Get.to(SuccessfulPayment());
                  },
                  child: Image.network(
                    'https://www.qr-code-generator.com/wp-content/themes/qr/new_structure/markets/core_market/generator/dist/generator/assets/images/websiteQRCode_noFrame.png',
                    height: 250,
                    width: 250,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            //Container for amount
            Container(
              height: 100,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 10.0,
                  ),
                ],
              ),
              child: Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Total Amount",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      "RM 10.00",
                      style: TextStyle(
                        color: Colors.lightGreen,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 20),

            // Loading Icon

            // Payment Pending Status bar
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CircularProgressIndicator(),
                    SizedBox(width: 20),
                    Text(
                      "Payment Pending",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Cancel Payment Underlined button
            TextButton(
              onPressed: () {},
              child: const Text(
                'Cancel Payment',
                style: TextStyle(
                    decoration: TextDecoration.underline, fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
