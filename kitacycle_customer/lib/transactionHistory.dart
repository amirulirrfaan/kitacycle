import 'package:flutter/material.dart';

class Transaction extends StatefulWidget {
  const Transaction({super.key});

  @override
  State<Transaction> createState() => _Transaction();
}

class _Transaction extends State<Transaction> {
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
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Text(
                      'Pickup History',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 23,
                      ),
                    ),
                  ],
                ))),
        body: ListView.separated(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
          itemCount: entries.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              decoration: (BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      offset: const Offset(0, 10),
                      blurRadius: 10,
                      spreadRadius: 0,
                      color: Colors.grey.withOpacity(.4)),
                  BoxShadow(
                      offset: const Offset(-10, -2),
                      blurRadius: 10,
                      spreadRadius: 0,
                      color: Colors.grey.withOpacity(.2)),
                ],
              )),
              height: 70,
              child: Center(child: entries.elementAt(index)),
            );
          },
          separatorBuilder: (BuildContext context, int index) => const Padding(
            padding: EdgeInsets.all(8.0),
            child: Divider(),
          ),
        ));
  }
}

final List<Widget> entries = <Widget>[
  Padding(
    padding: const EdgeInsets.only(bottom: 10),
    child: ListTile(
      leading:
          SizedBox(height: 35, child: Image.asset('assets/process_icon.png')),
      title: Row(
        children: const [
          Text(
            '20 KP',
            style: TextStyle(
                color: Color.fromARGB(255, 255, 190, 27),
                fontWeight: FontWeight.bold),
          ),
          SizedBox(width: 90),
          Text(
            'ID : 123456789',
          ),
        ],
      ),
      subtitle: Row(
        children: const [
          Text(
            'Plastics : 10kg\nCardboard : 5kg',
            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
          ),
          SizedBox(width: 20),
          Text('Date: 12/12/2021'),
        ],
      ),
    ),
  ),
  ListTile(
    leading:
        SizedBox(height: 35, child: Image.asset('assets/process_icon.png')),
    title: Row(
      children: const [
        Text(
          '10 KP',
          style: TextStyle(
              color: Color.fromARGB(255, 255, 190, 27),
              fontWeight: FontWeight.bold),
        ),
        SizedBox(width: 90),
        Text(
          'ID : 123456789',
        ),
      ],
    ),
    subtitle: Row(
      children: const [
        Text(
          'Plastics : 10kg\nCardboard : 5kg',
          style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
        ),
        SizedBox(width: 10),
        Text('Date: 12/12/2021'),
      ],
    ),
  ),
  ListTile(
    leading: const Icon(
      Icons.done,
      color: Colors.green,
    ),
    title: Row(
      children: const [
        Text(
          '10 KP',
          style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
        ),
        SizedBox(width: 90),
        Text(
          'ID : 123456789',
        ),
      ],
    ),
    subtitle: Row(
      children: const [
        Text(
          'Plastics : 10kg\nCardboard : 5kg',
          style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
        ),
        SizedBox(width: 10),
        Text('Date: 12/12/2021'),
      ],
    ),
  ),
  ListTile(
    leading: const Icon(
      Icons.done,
      color: Colors.green,
    ),
    title: Row(
      children: const [
        Text(
          '30 KP',
          style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
        ),
        SizedBox(width: 90),
        Text(
          'ID : 123456789',
        ),
      ],
    ),
    subtitle: Row(
      children: const [
        Text(
          'Plastics : 10kg\nCardboard : 5kg',
          style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
        ),
        SizedBox(width: 10),
        Text('Date: 12/12/2021'),
      ],
    ),
  ),
  ListTile(
    leading: const Icon(
      Icons.done,
      color: Colors.green,
    ),
    title: Row(
      children: const [
        Text(
          '15 KP',
          style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
        ),
        SizedBox(width: 90),
        Text(
          'ID : 123456789',
        ),
      ],
    ),
    subtitle: Row(
      children: const [
        Text(
          'Plastics : 10kg\nCardboard : 5kg',
          style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
        ),
        SizedBox(width: 10),
        Text('Date: 12/12/2021'),
      ],
    ),
  ),
];
