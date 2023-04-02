import 'package:flutter/material.dart';

class NearbyCenter extends StatefulWidget {
  const NearbyCenter({super.key});

  @override
  State<NearbyCenter> createState() => _NearbyCenterState();
}

class _NearbyCenterState extends State<NearbyCenter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nearby Center'),
      ),
    );
  }
}
