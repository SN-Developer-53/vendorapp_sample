import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';
import 'package:vendor_app_sample/presentation/resources/style_resources.dart';

class ProductDetialScreen extends StatefulWidget {
  const ProductDetialScreen({super.key});

  @override
  State<ProductDetialScreen> createState() => _ProductDetialScreenState();
}

class _ProductDetialScreenState extends State<ProductDetialScreen> {
  bool showActive = true;
  bool showInActive = false;

  @override
  Widget build(BuildContext context) {
    log(1.h.toString());
    log(1.w.toString());
    log(1.sp.toString());
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Image.asset(
            height: 42.3.h,
            'assets/images/food1.jpg',
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          ListView(
            children: [
              SizedBox(height: 30.7.h),
              Container(
                height: 67.5.h,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Chicken Burger',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20.0.sp,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  // Text(
                                  //   "\$777",
                                  //   style: TextStyle(
                                  //       color: Colors.red,
                                  //       fontSize: 15.3.sp,
                                  //       fontWeight: FontWeight.w600),
                                  // )
                                ],
                              ),
                              SizedBox(height: 0.9.h),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'Price :     ',
                                style: TextStyle(
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                height: 35,
                                width: 120,
                                child: TextFormField(
                                  maxLines: 1,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    hintText: 'Enter Price here',
                                    hintStyle: TextStyle(fontSize: 13),
                                    contentPadding:
                                        EdgeInsets.symmetric(horizontal: 5),
                                    fillColor: Colors.white,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide: BorderSide(),
                                    ),
                                    //fillColor: Colors.green
                                  ),
                                  //  decoration: const InputDecoration(
                                  //     contentPadding: EdgeInsets.symmetric(
                                  //       vertical: 7,
                                  //     ),
                                  //     border: InputBorder.none,
                                  //     hintText: 'Price'),

                                  style: const TextStyle(
                                      color: Colors.red, fontSize: 23),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Status : ",
                                  style: TextStyle(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w400)),
                              FlutterSwitch(
                                inactiveColor: Colors.red,
                                activeColor: Colors.green,
                                inactiveText: '',
                                activeText: '',
                                width: 10.5.w,
                                height: 2.5.h,
                                valueFontSize: 12,
                                borderRadius: 10,
                                padding: 5.5,
                                showOnOff: true,
                                toggleSize: 12,
                                value: showActive,
                                onToggle: (value) {
                                  setState(() {
                                    showActive = value;
                                  });
                                },
                              )
                            ],
                          ),
                          SizedBox(
                            height: 3.h,
                          ),
                          Center(
                            child: GestureDetector(
                              onTap: () {
                                FocusScope.of(context)
                                    .requestFocus(FocusNode());
                              },
                              child: Container(
                                width: 550,
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: StyleResources.splashScreenBgColor,
                                ),
                                child: const Center(
                                  child: Text(
                                    'Submit',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          Center(
                            child: Lottie.asset(
                                height: 29.4.h,
                                'assets/images/cooking-frying-pan.json'),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 50,
            left: 20,
            child: SizedBox(
              height: 3.2.h,
              width: 6.9.w,
              child: FloatingActionButton(
                backgroundColor: Colors.white,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0))),
                child: const Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: Colors.red,
                  size: 20,
                ), //child widget inside this button
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
