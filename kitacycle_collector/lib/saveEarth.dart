import 'package:flutter/material.dart';
import 'package:kitacycle_collector/dashboard.dart';
import 'package:kitacycle_collector/nearbyCenter.dart';
import 'package:kitacycle_collector/nearby_center.dart';

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
                  builder: (context) => const Dashboard(
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
              children: [
                const Text(
                  'Yay! \n You have saved \n the Earth',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 50),
                const Text(
                  "Kindly go to nearby center\nto drop off your items",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 50),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => collectionCenter(),
                        ),
                      );
                    },
                    child: const Text(
                      "Go to nearby center",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Dashboard(
                          title: '',
                        ),
                      ),
                    );
                  },
                  child: Text(
                    'Later',
                    style: TextStyle(
                      color: Colors.lightGreen,
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    side: MaterialStateProperty.all<BorderSide>(
                      BorderSide(
                        color: Colors.lightGreen,
                        width: 2,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
