import 'package:flutter/material.dart';
import 'package:kitacycle_collector/dashboard.dart';
import 'package:kitacycle_collector/dashboardClean.dart';

class saveEarth extends StatefulWidget {
  const saveEarth({super.key});

  @override
  State<saveEarth> createState() => _saveEarthState();
}

class _saveEarthState extends State<saveEarth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Yay!'),
        backgroundColor: Colors.white,
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DashboardClean(
                    title: '',
                  ),
                ),
              );
            },
            child: Image.asset(
              "assets/starbg.png",
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Yay! \n You have saved \n the Earth',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 50),
                Text(
                  "You've earned 50 Kita Points",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
