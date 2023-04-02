import 'package:flutter/material.dart';

class BalanceCard extends StatelessWidget {
  final String title;
  // final String body;
  final Function() onMoreTap;

  final String subInfoTitle;
  final String subInfoText;
  final Widget subIcon;

  const BalanceCard(
      {required this.title,
      required this.onMoreTap,
      this.subIcon = const CircleAvatar(
        child: Icon(
          Icons.star,
          color: Colors.white,
        ),
        backgroundColor: Color.fromRGBO(99, 201, 142, 1),
        radius: 25,
      ),
      this.subInfoText = "545 miles",
      this.subInfoTitle = "Directions",
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.05),
              offset: Offset(0, 10),
              blurRadius: 0,
              spreadRadius: 0,
            )
          ],
          gradient: RadialGradient(
            colors: [
              Color.fromRGBO(99, 201, 142, 1),
              Color.fromRGBO(99, 201, 142, 1).withOpacity(.8)
            ],
            focal: Alignment.topCenter,
            radius: .85,
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                width: 75,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  gradient: LinearGradient(
                      colors: [Colors.white, Colors.white],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter),
                ),
                child: GestureDetector(
                  onTap: onMoreTap,
                  child: Center(
                      child: Text(
                    "More",
                    style: TextStyle(color: Color.fromRGBO(99, 201, 142, 1)),
                  )),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          // Text(
          //   body,
          //   style:
          //       TextStyle(color: Colors.white.withOpacity(.75), fontSize: 14),
          // ),
          SizedBox(height: 15),
          Container(
            width: double.infinity,
            height: 75,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  subIcon,
                  SizedBox(width: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(subInfoTitle),
                      Text(
                        subInfoText,
                        style: TextStyle(
                          color: Color.fromRGBO(99, 201, 142, 1),
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
