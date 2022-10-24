import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:vendor_app_sample/presentation/screens/order_detial_screen.dart';

class OdersScreen extends StatefulWidget {
  const OdersScreen({super.key});

  @override
  State<OdersScreen> createState() => _OdersScreenState();
}

class _OdersScreenState extends State<OdersScreen> {
  final String number = '+91815685011';
  List<String> items = <String>[
    'Status',
    'Preparing',
    'Done',
    'On the way',
  ];
  String dropdownValue = 'Status';
  String dropdownnewValue = 'Status';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   elevation: 0,
        //   backgroundColor: Colors.white,
        //   // leading:
        //   // IconButton(
        //   //     onPressed: () {
        //   //       Navigator.of(context).push(
        //   //           MaterialPageRoute(builder: (context) => DashboardScreen()));
        //   //     },
        //   //     icon: Icon(
        //   //       Icons.arrow_back_rounded,
        //   //       color: Colors.black,
        //   //     )),

        //   title: Text(
        //     'Oders',
        //     style: TextStyle(
        //         fontWeight: FontWeight.w500, fontSize: 25, color: Colors.black),
        //   ),
        // ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 5),
          child: Column(
            children: [
              Row(
                children: const [
                  Text(
                    'Orders',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 25,
                        color: Colors.black),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => OrderDetailsScreen(
                            status: dropdownValue,
                          )));
                },
                child: Container(
                  padding: const EdgeInsets.all(8),
                  width: double.infinity,
                  height: 124,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(.4),
                        blurRadius: 6.0,
                        spreadRadius: 3,
                        blurStyle: BlurStyle.outer),
                  ], borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Oder no. ',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Text(
                                  '#####',
                                  style: TextStyle(color: Colors.green),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            child: Column(
                              children: const [
                                Text(
                                  '12-may',
                                  style: TextStyle(fontSize: 10),
                                ),
                                Text(
                                  '12:30 pm',
                                  style: TextStyle(fontSize: 10),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Text(
                        'Delivery Boy',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w400),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            '\u{20B9}${199}',
                            style: TextStyle(
                                color: Colors.red, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            child: Row(
                              children: [
                                // TextButton(
                                //     onPressed: () {}, child: const Text('call'))
                                // Container(
                                //   width: 50,
                                //   height: 24,
                                //   decoration: BoxDecoration(
                                //       color: Colors.red,
                                //       borderRadius: BorderRadius.circular(10)),
                                //   child: const Center(
                                //     child: Text(
                                //       'call',
                                //       style: TextStyle(color: Colors.white),
                                //     ),
                                //   ),
                                // ),
                                IconButton(
                                    onPressed: () async {
                                      await FlutterPhoneDirectCaller.callNumber(
                                          number);
                                    },
                                    icon: const Icon(
                                      Icons.call,
                                      color: Colors.green,
                                    )),
                                const SizedBox(width: 10),
                                Container(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 2),
                                  width: 110,
                                  height: 24,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade200,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Center(
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton<String>(
                                        value: dropdownValue,
                                        items: items
                                            .map<DropdownMenuItem<String>>(
                                                (String value) {
                                          return DropdownMenuItem<String>(
                                              value: value,
                                              child: Text(
                                                value,
                                                style: const TextStyle(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.black),
                                              ));
                                        }).toList(),
                                        onChanged: (String? newvalue) {
                                          setState(() {
                                            dropdownValue = newvalue!;
                                            showDialog(
                                              context: context,
                                              builder: (BuildContext context) {
                                                return AlertDialog(
                                                  title: const Text(
                                                    "Alert",
                                                    style: TextStyle(
                                                        color: Colors.red),
                                                  ),
                                                  content: Text(
                                                      "Do you want to change the Status of the order to $newvalue"),
                                                  actions: <Widget>[
                                                    ElevatedButton(
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                        backgroundColor:
                                                            Colors.red,
                                                      ),
                                                      child: const Text("Yes"),
                                                      onPressed: () {
                                                        Navigator.of(context)
                                                            .pop();
                                                      },
                                                    ),
                                                    ElevatedButton(
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                        backgroundColor:
                                                            Colors.grey,
                                                      ),
                                                      child: const Text("No"),
                                                      onPressed: () {
                                                        setState(() {
                                                          dropdownValue =
                                                              dropdownnewValue;
                                                          Navigator.of(context)
                                                              .pop();
                                                        });
                                                      },
                                                    ),
                                                  ],
                                                );
                                              },
                                            );
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
