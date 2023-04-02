import 'package:flutter/material.dart';
import 'package:kitacycle_collector/dashboard.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class FindDriver extends StatefulWidget {
  @override
  State<FindDriver> createState() => _FindDriverState();
}

class _FindDriverState extends State<FindDriver> {
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
              'Finding Driver',
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
            'assets/Map.png',
            fit: BoxFit.cover,
            height: double.infinity,
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
            'Finding Collector...',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          const Divider(
            thickness: 1,
            color: Colors.grey,
            indent: 16,
            endIndent: 16,
          ),
          const SizedBox(height: 20),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Icon(
                              Icons.location_on,
                              color: Colors.lightGreen,
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Location',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 35),
                              child: Text(
                                '123 Main Street, Anytown, USA',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 13,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Icon(
                              Icons.timer,
                              color: Colors.lightGreen,
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Estimated time arrival',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 35),
                              child: Text(
                                '3.00 PM (20 min)',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 13,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: SizedBox(
                      height: 50,
                      width: 300,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                        ),
                        child: const Text(
                          'Cancel',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Dashboard(
                                title: '',
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
