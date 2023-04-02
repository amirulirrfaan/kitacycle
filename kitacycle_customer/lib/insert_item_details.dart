import 'package:flutter/material.dart';
import 'package:kitacycle_collector/find_driver.dart';
import 'package:kitacycle_collector/map.dart';
import 'package:kitacycle_collector/uploadimage.dart';
import 'package:intl/intl.dart';

import 'item_list_widget.dart';

class InsertDetails extends StatefulWidget {
  const InsertDetails({super.key, required String title});

  @override
  State<InsertDetails> createState() => _InsertDetailsState();
}

class _InsertDetailsState extends State<InsertDetails> {
  List<String> _selectedItems = [];
  List<String> _items = ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'];

  void _onDropDownItemSelected(String? selectedItem) {
    if (selectedItem != null) {
      setState(() {
        if (_selectedItems.contains(selectedItem)) {
          _selectedItems.remove(selectedItem);
        } else {
          _selectedItems.add(selectedItem);
        }
      });
    }
  }

  DateTime? _selectedDate;
  TimeOfDay? _selectedTime;

  Future<void> _selectDateAndTime() async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 365)),
    );
    if (pickedDate != null) {
      final TimeOfDay? pickedTime = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.now(),
      );
      if (pickedTime != null) {
        setState(() {
          _selectedDate = pickedDate;
          _selectedTime = pickedTime;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: false,
          title: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Insert Waste Details',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                alignment: AlignmentDirectional.centerStart,
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                child: const Text(
                  'Upload Waste Image',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                child: Row(
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.cloud_upload,
                        color: Colors.white,
                      ),
                      label: const Text(
                        'Upload Image',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(width: 20),
                  ],
                ),
              ),
              Container(
                alignment: AlignmentDirectional.centerStart,
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                child: const Text(
                  'Select Waste Type',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                child: CategoriesListMallika1(),
              ),
              //Dimension
              Container(
                alignment: AlignmentDirectional.centerStart,
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                child: const Text(
                  'Estimated Waste Dimension (cm)',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              //Length, Width, Height TextForm
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Length',
                          ),
                        ),
                      ),
                    ),
                    const Text('X'),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Width',
                          ),
                        ),
                      ),
                    ),
                    const Text('X'),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Height',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //Date and time
              // const SizedBox(height: 20),
              Container(
                alignment: AlignmentDirectional.centerStart,
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                child: const Text(
                  'Date and Time',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                child: Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Hide the selected date and time
                        setState(() {
                          _selectedDate = null;
                          _selectedTime = null;
                        });
                      },
                      child: const Text(
                        'Now',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(width: 20),
                    ElevatedButton(
                      onPressed: () {
                        // Handle "Book Request" button press
                        _selectDateAndTime();
                      },
                      child: const Text(
                        'Book Request',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),

              //Selected Date and Time
              if (_selectedDate != null && _selectedTime != null) ...[
                const SizedBox(height: 10),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Date: ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            '${DateFormat.yMMMMd().format(_selectedDate!)}',
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Time: ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            '${_selectedTime?.format(context)}',
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],

              // Location
              // const SizedBox(height: 50),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        Icon(
                          Icons.location_on,
                          color: Colors.lightGreen,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Location',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Use current location',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 13,
                          ),
                        ),
                        Switch(
                          value: true,
                          onChanged: (bool value) {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              //Confirm button
              // const SizedBox(height: 50),
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FindDriver()),
                      );
                    },
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
