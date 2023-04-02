import 'package:flutter/material.dart';
import 'package:kitacycle_collector/confirm_item_form.dart';
import 'package:kitacycle_collector/dashboard.dart';
import 'package:kitacycle_collector/driverFound.dart';

class Request_Details extends StatelessWidget {
  const Request_Details({super.key});

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
                    'Pickup Details',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 23,
                    ),
                  ),
                ],
              ))),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.grey[100],
        ),
        child: Center(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.05),
                    spreadRadius: 5,
                    blurRadius: 3,
                    offset: const Offset(0, 2),
                    // changes position of shadow
                  ),
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.05),
                    spreadRadius: 5,
                    blurRadius: 3,
                    offset: const Offset(-0, -2),
                    // changes position of shadow
                  ),
                ]),
                height: 200,
                child: const ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40)),
                    child: Image(image: AssetImage('assets/plastics.png'))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 35, left: 35),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.05),
                      spreadRadius: 5,
                      blurRadius: 3,
                      offset: const Offset(0, 3),
                      // changes position of shadow
                    ),
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.05),
                      spreadRadius: 5,
                      blurRadius: 3,
                      offset: const Offset(-0, -3),
                      // changes position of shadow
                    ),
                  ],
                ),
                width: 500,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const Text(
                        "Name",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      Text("Ros",
                          style: TextStyle(
                              color: Colors.grey[600],
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(right: 35, left: 35),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.05),
                      spreadRadius: 5,
                      blurRadius: 3,
                      offset: const Offset(0, 3),
                      // changes position of shadow
                    ),
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.05),
                      spreadRadius: 5,
                      blurRadius: 3,
                      offset: const Offset(-0, -3),
                      // changes position of shadow
                    ),
                  ],
                ),
                width: 400,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const Text(
                        "Date & Time",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 30,
                          decoration: BoxDecoration(
                            // boxShadow: [
                            //   BoxShadow(
                            //     color: Colors.lightGreen.withOpacity(0.2),
                            //     spreadRadius: 5,
                            //     blurRadius: 7,
                            //     offset: const Offset(0, 3),
                            //     // changes position of shadow
                            //   ),
                            //   // BoxShadow(
                            //   //   color: Colors.green.withOpacity(0.2),
                            //   //   spreadRadius: 5,
                            //   //   blurRadius: 7,
                            //   //   offset: const Offset(-0, -3),
                            //   //   // changes position of shadow
                            //   // ),
                            // ],
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.lightGreen),
                            color: Colors.white,
                          ),
                          child: const Padding(
                            padding: const EdgeInsets.only(
                                left: 40, right: 40, top: 2),
                            child: Text('NOW',
                                style: TextStyle(
                                    color: Colors.lightGreen,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(right: 35, left: 35),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.05),
                      spreadRadius: 5,
                      blurRadius: 3,
                      offset: const Offset(0, 3),
                      // changes position of shadow
                    ),
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.05),
                      spreadRadius: 5,
                      blurRadius: 3,
                      offset: const Offset(-0, -3),
                      // changes position of shadow
                    ),
                  ],
                ),
                width: 400,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const Text(
                        "Location",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      const Text(
                        "5 km away | 15 mins",
                        style: TextStyle(
                            color: Colors.lightGreen,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                      Text("Taman Chempaka 2, 43000 Kajang, Selangor",
                          style: TextStyle(
                              color: Colors.grey[600],
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(right: 35, left: 35),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.05),
                      spreadRadius: 5,
                      blurRadius: 3,
                      offset: const Offset(0, 3),
                      // changes position of shadow
                    ),
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.05),
                      spreadRadius: 5,
                      blurRadius: 3,
                      offset: const Offset(-0, -3),
                      // changes position of shadow
                    ),
                  ],
                ),
                width: 500,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const Text(
                        "Waste",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      Text("20kg of Plastics",
                          style: TextStyle(
                              color: Colors.grey[600],
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 35, left: 35),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.05),
                      spreadRadius: 5,
                      blurRadius: 3,
                      offset: const Offset(0, 3),
                      // changes position of shadow
                    ),
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.05),
                      spreadRadius: 5,
                      blurRadius: 3,
                      offset: const Offset(-0, -3),
                      // changes position of shadow
                    ),
                  ],
                ),
                width: 400,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const Text(
                        "Estimated Dimension",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      Text("200 cm x 200 cm x 100 cm",
                          style: TextStyle(
                              color: Colors.grey[600],
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DriverFound()));
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 50, left: 50),
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: Colors.lightGreen,
                      ),
                      child: const Padding(
                        padding:
                            const EdgeInsets.only(left: 50, right: 50, top: 10),
                        child: Text('Accept Pickup',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Dashboard(
                                      title: '',
                                    )));
                      },
                      child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            color: Color.fromRGBO(244, 67, 54, 1),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 30, right: 30, top: 5),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 2,
                                  color: Colors.red,
                                ),
                              ),
                              child: Text(
                                'Reject Pickup',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
