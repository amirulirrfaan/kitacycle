import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:kitacycle_collector/saveEarth.dart';

class summaryPage extends StatefulWidget {
  const summaryPage({super.key});

  @override
  State<summaryPage> createState() => _summaryPageState();
}

class _summaryPageState extends State<summaryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Summary'),
          backgroundColor: Colors.white,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Padding(
            padding: const EdgeInsets.only(top: 20, left: 5, right: 10),
            child: Column(
              children: [
                const SizedBox(height: 100),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ListTileTheme(
                    child: ListTile(
                      leading: SizedBox(
                        height: 70,
                        width: 70,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset('assets/plasticIcon.png',
                                fit: BoxFit.fitHeight)),
                      ),
                      title: const Text(
                        'Plastics',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      trailing: const Text('20kg',
                          style: TextStyle(
                            fontSize: 20,
                          )),
                      onTap: () {},
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                  child: Divider(
                    thickness: 1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ListTileTheme(
                    child: ListTile(
                      leading: Container(
                        height: 70,
                        width: 70,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset('assets/oil.png',
                                fit: BoxFit.fitHeight)),
                      ),
                      title: const Text(
                        'Cooking Oil',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      trailing: const Text('6.5kg',
                          style: TextStyle(
                            fontSize: 20,
                          )),
                      onTap: () {},
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                  child: Divider(
                    thickness: 1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ListTileTheme(
                    child: ListTile(
                      leading: SizedBox(
                        height: 70,
                        width: 70,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset('assets/can.png',
                                fit: BoxFit.fitHeight)),
                      ),
                      title: const Text(
                        'Cans',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      trailing: const Text('2kg',
                          style: TextStyle(
                            fontSize: 20,
                          )),
                      onTap: () {},
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                  child: Divider(
                    thickness: 1,
                  ),
                ),
                ListTileTheme(
                  child: ListTile(
                    title: const Text(
                      'Total',
                      textAlign: TextAlign.end,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    trailing: const Text('28.5kg',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w900)),
                    onTap: () {},
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40, bottom: 10),
                  child: DecoratedBox(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: const LinearGradient(colors: [
                            Colors.lightGreen,
                            Color.fromARGB(244, 139, 195, 74),
                          ])),
                      child: ElevatedButton(
                          style: ButtonStyle(
                              elevation: MaterialStateProperty.all(0),
                              alignment: Alignment.center,
                              padding: MaterialStateProperty.all(
                                  const EdgeInsets.only(
                                      right: 75,
                                      left: 75,
                                      top: 15,
                                      bottom: 15)),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.transparent),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)),
                              )),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const saveEarth()),
                            );
                          },
                          child: const Text(
                            "Confirm Items",
                            style: TextStyle(
                                color: Color(0xffffffff), fontSize: 16),
                          ))),
                )
              ],
            ),
          ),
        ));
  }
}
