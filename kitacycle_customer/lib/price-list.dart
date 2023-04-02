import 'package:flutter/material.dart';

class PriceList extends StatelessWidget {
  TextEditingController controller = TextEditingController();
  PriceList({super.key});

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
                      'Rewards List',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 23,
                      ),
                    ),
                  ],
                ))),
        body: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                child: SearchInput(
                    textController: controller, hintText: 'Search Item'),
              ),
            ),
            Expanded(
              child: GridView(
                // Make a 2 column grid
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                // Generate 100 widgets that display their index in the List
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: PriceCard(
                        text: "Can",
                        imageUrl: "assets/can.png",
                        subtitle: "30 KP",
                        onPressed: () {}),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: PriceCard(
                        text: "Plastics",
                        imageUrl: "assets/plasticIcon.png",
                        subtitle: "4 KP",
                        onPressed: () {}),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: PriceCard(
                        text: "Glass",
                        imageUrl: "assets/glass.png",
                        subtitle: "RM0.10/kg",
                        onPressed: () {}),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: PriceCard(
                        text: "Paper",
                        imageUrl: "assets/paper.png",
                        subtitle: "2 KP",
                        onPressed: () {}),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: PriceCard(
                        text: "Cooking Oil",
                        imageUrl: "assets/oil.png",
                        subtitle: "8 KP",
                        onPressed: () {}),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: PriceCard(
                        text: "Box",
                        imageUrl: "assets/box.png",
                        subtitle: "22 KP",
                        onPressed: () {}),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

class PriceCard extends StatelessWidget {
  final String text;
  final String imageUrl;
  final String subtitle;
  final Function() onPressed;

  const PriceCard(
      {required this.text,
      required this.imageUrl,
      required this.subtitle,
      required this.onPressed,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 150,
        height: 150,
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.5),
          boxShadow: [
            BoxShadow(
                offset: const Offset(5, 10),
                blurRadius: 10,
                spreadRadius: 0,
                color: Colors.grey.withOpacity(.2)),
            BoxShadow(
                offset: const Offset(-10, -5),
                blurRadius: 5,
                spreadRadius: 0,
                color: Colors.grey.withOpacity(.1)),
          ],
        ),
        child: Column(
          children: [
            Image.asset(imageUrl, height: 59, fit: BoxFit.cover),
            const Spacer(),
            Text(text,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                )),
            const SizedBox(
              height: 5,
            ),
            Text(
              subtitle,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.normal,
                  fontSize: 12),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}

class SearchInput extends StatelessWidget {
  final TextEditingController textController;
  final String hintText;
  const SearchInput(
      {required this.textController, required this.hintText, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            offset: const Offset(12, 26),
            blurRadius: 50,
            spreadRadius: 0,
            color: Colors.grey.withOpacity(.3)),
        BoxShadow(
            offset: const Offset(-12, -26),
            blurRadius: 50,
            spreadRadius: 0,
            color: Colors.grey.withOpacity(.3)),
      ]),
      child: TextField(
        controller: textController,
        onChanged: (value) {
          //Do something wi
        },
        decoration: InputDecoration(
          prefixIcon: const Icon(
            Icons.search,
            color: Color(0xff4338CA),
          ),
          filled: true,
          fillColor: Colors.white,
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.grey),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 1.0),
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 2.0),
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
          ),
        ),
      ),
    );
  }
}
