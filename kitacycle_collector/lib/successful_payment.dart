import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kitacycle_collector/dashboard.dart';

class SuccessfulPayment extends StatefulWidget {
  const SuccessfulPayment({super.key});

  @override
  State<SuccessfulPayment> createState() => _SuccessfulPaymentState();
}

class _SuccessfulPaymentState extends State<SuccessfulPayment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Successful payment page
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
                'https://media.tenor.com/0AVbKGY_MxMAAAAM/check-mark-verified.gif'),
            const Text(
              'Payment Successful',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Thank you for your payment',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(Dashboard(title: 'Dashboard'));
              },
              child: const Text('Go to Dashboard',
                  style: TextStyle(fontSize: 20, color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
