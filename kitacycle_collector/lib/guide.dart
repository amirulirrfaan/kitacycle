import 'package:flutter/material.dart';

class Guide extends StatefulWidget {
  const Guide({Key? key});

  @override
  State<Guide> createState() => _GuideState();
}

class _GuideState extends State<Guide> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recycling Guide'),
        backgroundColor: Colors.white,
      ),
      body: Container(
        margin: EdgeInsets.all(16),
        child: Column(
          children: [
            SizedBox(height: 16),
            Expanded(
              child: ListView(
                children: [
                  _buildCard(
                    title: 'Step 1: Know the Types of Waste',
                    content:
                        'The three main types of waste are organic waste, recyclable waste, and non-recyclable waste.',
                    image: 'assets/step1.png',
                  ),
                  _buildCard(
                    title: 'Step 2: Separate the Waste',
                    content:
                        'Use different bins to separate organic waste, recyclable waste, and non-recyclable waste.',
                    image: 'assets/step2.jpeg',
                  ),
                  _buildCard(
                    title: 'Step 3: Clean Recyclable Waste',
                    content:
                        'Before recycling, make sure to clean recyclable waste such as plastic bottles, glass bottles, and cans. Remove any food or liquid residue from the items.',
                    image: 'assets/step3.webp',
                  ),
                  _buildCard(
                    title: 'Step 4: Take the Waste to a Recycling Center',
                    content:
                        'After separating the waste, take the recyclable waste items to a recycling center. You can find a recycling center near you by doing a quick online search.',
                    image: 'assets/step4.jpeg',
                  ),
                  _buildCard(
                    title: 'Step 5: Compost Organic Waste',
                    content:
                        'Organic waste such as food scraps and yard waste can be composted. Composting is an easy way to turn organic waste into nutrient-rich soil.',
                    image: 'assets/step5.webp',
                  ),
                  _buildCard(
                    title: 'Step 6: Dispose of Non-Recyclable Waste Properly',
                    content:
                        'Non-recyclable waste should be disposed of properly. You can put it in a trash bin or take it to a landfill.',
                    image: 'assets/step6.jpeg',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCard(
      {required String title, required String content, required String image}) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: Card(
          margin: EdgeInsets.symmetric(vertical: 8),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(
                    Radius.circular(25),
                  ),
                  child: Image.asset(
                    image,
                    height: 120,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    title: Text(
                      title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(content),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
