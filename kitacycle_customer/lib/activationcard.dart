import 'package:flutter/material.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

class ActivationCard extends StatelessWidget {
  final String text;
  //final String subtitle;
  final Function() onPressed;

  const ActivationCard(
      {required this.text,
      //required this.subtitle,
      required this.onPressed,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 75,
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.5),
          boxShadow: [
            BoxShadow(
                offset: const Offset(10, 20),
                blurRadius: 10,
                spreadRadius: 0,
                color: Colors.grey.withOpacity(.3)),
            BoxShadow(
                offset: const Offset(0, -1),
                blurRadius: 10,
                spreadRadius: 0,
                color: Colors.grey.withOpacity(.3)),
          ],
        ),
        child: Row(
          children: [
            const SizedBox(
              width: 15,
            ),
            Text(text,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                )),
            const Spacer(),
            LiteRollingSwitch(
              value: true,
              width: 118,
              textOn: 'Active',
              textOff: ' Inactive',
              colorOn: Colors.lightGreen,
              colorOff: Colors.red,
              iconOn: Icons.lightbulb_outline,
              iconOff: Icons.power_settings_new,
              animationDuration: const Duration(milliseconds: 200),
              textOnColor: Colors.white,
              onChanged: (bool state) {
                print('turned ${(state) ? 'on' : 'off'}');
              },
              onDoubleTap: () {},
              onSwipe: () {},
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
