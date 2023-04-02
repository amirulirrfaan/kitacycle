import 'package:flutter/material.dart';

class PromoCard extends StatelessWidget {
  const PromoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: Stack(
        children: [
          Opacity(
            opacity: 1,
            child: Image.asset(
              "assets/uniqlo.png",
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}




          // Positioned(
          //   bottom: 0,
          //   right: 0,
          //   child: ElevatedButton(
          //     onPressed: () {},
          //     child: Text(
          //       'Claim',
          //     ),
          //   ),
          // ),