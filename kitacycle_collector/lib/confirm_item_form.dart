import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:kitacycle_collector/dashboard.dart';
import 'package:kitacycle_collector/item_list_widget.dart';
import 'package:kitacycle_collector/saveEarth.dart';

class ConfirmItemForm extends StatefulWidget {
  const ConfirmItemForm({super.key});

  @override
  State<ConfirmItemForm> createState() => _ConfirmItemFormState();
}

class _ConfirmItemFormState extends State<ConfirmItemForm> {
  TextEditingController inputController = TextEditingController();

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
                'Confirm Item',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 23,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                  child: Text(
                'Select Item Type',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
              CategoriesListMallika1(),
              SizedBox(
                height: 10,
              ),
              Container(
                  child: Text(
                'Enter the weight of the item',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
              Row(
                children: [
                  SizedBox(
                    width: 250,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 75, top: 10),
                      child: WeightField(inputController: inputController),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 1, top: 10),
                    child: Text(
                      'KG',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 9),
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.lightGreen[500],
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              offset: const Offset(5, 10),
                              blurRadius: 10,
                              spreadRadius: 0,
                              color: Colors.grey.withOpacity(.3)),
                          BoxShadow(
                              offset: const Offset(-5, -5),
                              blurRadius: 10,
                              spreadRadius: 0,
                              color: Colors.grey.withOpacity(.3)),
                        ],
                      ),
                      child: IconButton(
                        onPressed: () {
                          print('This is a test');
                        },
                        icon: const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Text('Press + to add more items'),
              SizedBox(
                height: 30,
              ),
              Divider(
                color: Colors.grey,
                height: 20,
                thickness: 0.5,
                indent: 20,
                endIndent: 20,
              ),
              Container(
                  child: Text(
                'Item Summary',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
              SizedBox(
                height: 20,
              ),
              getItemListUI(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget getItemListUI() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          boxShadow: [
            BoxShadow(
                offset: const Offset(-2, -5),
                blurRadius: 30,
                spreadRadius: 0,
                color: Colors.grey.withOpacity(.3)),
          ],
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 20, left: 5, right: 10),
            child: Column(
              children: [
                ListTileTheme(
                  child: ListTile(
                    leading: Container(
                      height: 70,
                      width: 70,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                              'assets/img_plasticremovebgpreview.png',
                              fit: BoxFit.fitHeight)),
                    ),
                    title: const Text(
                      'Plastics',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    trailing: Text('20kg',
                        style: const TextStyle(
                          fontSize: 20,
                        )),
                    onTap: () {},
                  ),
                ),
                SizedBox(
                  height: 10,
                  child: Divider(),
                ),
                ListTileTheme(
                  child: ListTile(
                    leading: Container(
                      height: 70,
                      width: 70,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                              'assets/img_icons8cookingoil96.png',
                              fit: BoxFit.fitHeight)),
                    ),
                    title: const Text(
                      'Cooking Oil',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    trailing: Text('6.5kg',
                        style: const TextStyle(
                          fontSize: 20,
                        )),
                    onTap: () {},
                  ),
                ),
                SizedBox(
                  height: 10,
                  child: Divider(),
                ),
                ListTileTheme(
                  child: ListTile(
                    leading: Container(
                      height: 70,
                      width: 70,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                              'assets/img_canremovebgpreview.png',
                              fit: BoxFit.fitHeight)),
                    ),
                    title: const Text(
                      'Cans',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    trailing: Text('2kg',
                        style: const TextStyle(
                          fontSize: 20,
                        )),
                    onTap: () {},
                  ),
                ),
                SizedBox(
                  height: 10,
                  child: Divider(),
                ),
                ListTileTheme(
                  child: ListTile(
                    title: const Text(
                      'Total',
                      textAlign: TextAlign.end,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    trailing: Text('28.5kg',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w900)),
                    onTap: () {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: SizedBox(
                    height: 50,
                    width: 300,
                    child: ElevatedButton(
                      child: const Text(
                        'Confirm',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        Get.to(const saveEarth());
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        )),
  );
}

class WeightField extends StatelessWidget {
  final TextEditingController inputController;
  const WeightField({Key? key, required this.inputController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            offset: const Offset(12, 26),
            blurRadius: 50,
            spreadRadius: 0,
            color: Colors.grey.withOpacity(.1)),
      ]),
      child: TextField(
        controller: inputController,
        onChanged: (value) {
          //Do something wi
        },
        keyboardType: TextInputType.emailAddress,
        style: const TextStyle(fontSize: 14, color: Colors.black),
        decoration: InputDecoration(
          prefixIcon: const Icon(
            Icons.scale,
            color: Colors.grey,
          ),
          filled: true,
          hintText: 'Enter weight',
          hintStyle: TextStyle(color: Colors.grey.withOpacity(.75)),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
          border: const OutlineInputBorder(
            borderSide:
                BorderSide(color: Color.fromARGB(255, 0, 0, 0), width: 1.0),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: Colors.grey.withOpacity(.75), width: 1.0),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          errorBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red, width: 1.0),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 1.0),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
        ),
      ),
    );
  }
}
