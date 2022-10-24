import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade400,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromARGB(255, 199, 0, 57),
            Color.fromARGB(255, 199, 0, 57),
            Colors.white,
            Colors.white,
            Colors.white,
            Colors.white,
          ],
        )),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.1.w),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 1.h),
                    child: Text(
                      'Dashboard',
                      style: TextStyle(
                          fontSize: 11.5.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 12.8.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Welcome back!',
                              style: TextStyle(
                                  fontSize: 7.6.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white.withOpacity(.6)),
                            ),
                            Text(
                              'Customer Name',
                              style: TextStyle(
                                  fontSize: 15.3.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            ),
                            Row(
                              children: [
                                Text(
                                  '+91 000000000',
                                  style: TextStyle(
                                      fontSize: 7.6.sp,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.white),
                                ),
                                // const SizedBox(
                                //   width: 2,
                                // ),
                                // IconButton(
                                //     onPressed: () {},
                                //     icon: const Icon(
                                //       Icons.edit,
                                //       color: Colors.white,
                                //       size: 15,
                                //     ))
                              ],
                            ),
                          ],
                        ),
                        Container(
                          width: 12.8.w,
                          height: 6.4.h,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 2),
                              borderRadius: BorderRadius.circular(100)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset(
                              'assets/images/person.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    width: double.infinity,
                    height: 17.h,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          blurRadius: 4.0,
                          spreadRadius: 2,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                            width: 23.0.w,
                            height: 10.5.h,
                            child: GestureDetector(
                                onTap: () {},
                                child: Image.asset('assets/images/logo.png'))),
                        SizedBox(
                          height: 15.h,
                          width: 46.1.w,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    'food',
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.grey),
                                  ),
                                  // IconButton(
                                  //     onPressed: () {},
                                  //     icon: const Icon(
                                  //       Icons.edit,
                                  //       size: 15,
                                  //       color: Colors.grey,
                                  //     ))
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Text(
                                    'King Burger',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.location_on,
                                    size: 10,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(
                                    width: 2.5.w,
                                  ),
                                  const Text(
                                    'Perinthalmanna',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 10),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.location_on,
                                    size: 10,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(
                                    width: 2.5.w,
                                  ),
                                  const Text(
                                    '10 am - 10 pm',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 10),
                                  ),
                                ],
                              ),
                              SizedBox(height: 1.2.h),
                              Row(
                                children: [
                                  Fudtags(
                                    lable: 'fast food',
                                    width: 12.8.w,
                                  ),
                                  const SizedBox(width: 5),
                                  const Fudtags(
                                    lable: 'Pizza',
                                    width: 50,
                                  ),
                                  const SizedBox(width: 5),
                                  const Fudtags(
                                    lable: 'Sushi',
                                    width: 50,
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  // SizedBox(height: 5.1.h),
                  SizedBox(
                    height: 47.h,
                    width: double.infinity,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            width: 33.3.w,
                            height: 16.6.h,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(.4),
                                      blurRadius: 5.0,
                                      spreadRadius: 2,
                                      blurStyle: BlurStyle.outer),
                                ],
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(children: [
                              Text(
                                'Total Orders',
                                style: TextStyle(
                                    fontSize: 11.5.sp,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.orange.shade900),
                              ),
                              Text(
                                '115',
                                style: TextStyle(
                                    fontSize: 30.7.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red.shade800),
                              ),
                              Text(
                                "\u{20B9}${7000}",
                                style: TextStyle(
                                    fontSize: 11.5.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green.shade900),
                              )
                            ]),
                          ),
                          SizedBox(height: 3.8.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              PriceCards(
                                amount: '7000',
                                lable: 'Today',
                                orders: '15',
                                cardcolor: Color.fromARGB(255, 199, 0, 57),
                              ),
                              SizedBox(width: 15),
                              PriceCards(
                                amount: '7000',
                                lable: 'Yesterday',
                                orders: '20',
                                cardcolor: Color.fromARGB(255, 132, 161, 0),
                              ),
                              SizedBox(width: 15),
                              PriceCards(
                                amount: '7000',
                                lable: 'This week',
                                orders: '40',
                                cardcolor: Color.fromARGB(255, 77, 109, 0),
                              ),
                              SizedBox(width: 15),
                              PriceCards(
                                amount: '7000',
                                lable: 'This month',
                                orders: '120',
                                cardcolor: Color.fromARGB(255, 253, 183, 43),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Text(
                                'New Orders',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          const NewOrdersCard(),
                          const SizedBox(height: 20),
                          const NewOrdersCard(),
                          const SizedBox(height: 20),
                          const NewOrdersCard(),
                          const SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NewOrdersCard extends StatelessWidget {
  const NewOrdersCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      width: 97.2.w,
      height: 14.h,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(.4),
              blurRadius: 2.0,
              spreadRadius: 3,
              blurStyle: BlurStyle.outer),
        ],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 24.w,
            height: 12.h,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8), bottomLeft: Radius.circular(8)),
            ),
            child: Lottie.asset('assets/images/order.json', fit: BoxFit.fill),
          ),
          Container(
            padding: const EdgeInsets.only(right: 10),
            width: 65.w,
            height: 20.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //************************ */
                Row(
                  children: const [
                    Text(
                      'order Id. ',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      '#####',
                      style: TextStyle(color: Colors.green),
                    ),
                  ],
                ),

                ///******************* */

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Order 1',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    GestureDetector(
                      onTap: () {
                        showDialog<void>(
                          context: context,
                          barrierDismissible: false, // user must tap button!
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text('Items'),
                              content: SingleChildScrollView(
                                child: ListBody(
                                  children: const <Widget>[
                                    Text('1 x Burger'),
                                    Text('2 x Pizza L'),
                                    Text('3 x C Biriyani'),
                                  ],
                                ),
                              ),
                              actions: <Widget>[
                                TextButton(
                                  child: const Text('OK'),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: SizedBox(
                        //******************** */
                        child: Row(
                          children: const [
                            Text(
                              'items',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Icon(
                              Icons.double_arrow_rounded,
                              color: Colors.grey,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                //****************** */
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      '\u{20B9}${199}',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.red),
                    ),
                    SizedBox(
                      child: Row(
                        children: [
                          TextButton(
                            onPressed: () {
                              final snackBar = SnackBar(
                                content: Text('Order Rejected'),
                              );

                              // Find the ScaffoldMessenger in the widget tree
                              // and use it to show a SnackBar.
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackBar);
                            },
                            child: const Text(
                              'Reject',
                              style: TextStyle(color: Colors.red),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              final snackBar = SnackBar(
                                content: Text('Order Accepted'),
                              );

                              // Find the ScaffoldMessenger in the widget tree
                              // and use it to show a SnackBar.
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackBar);
                            },
                            child: const Text(
                              'Accept',
                              style: TextStyle(color: Colors.green),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class PriceCards extends StatelessWidget {
  final String lable;
  final String orders;
  final String amount;
  final Color cardcolor;
  const PriceCards({
    Key? key,
    required this.lable,
    required this.orders,
    required this.amount,
    required this.cardcolor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(7),
      width: 17.9.w,
      height: 11.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: cardcolor,
      ),
      child: Column(
        children: [
          Text(
            lable,
            style: const TextStyle(
              fontSize: 9,
              color: Colors.white,
            ),
          ),
          Text(
            orders,
            style: const TextStyle(
                fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                '\u{20B9}',
                style: TextStyle(
                    fontSize: 10,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                amount,
                style: const TextStyle(
                    fontSize: 10,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Fudtags extends StatelessWidget {
  final String lable;
  final double width;
  const Fudtags({
    Key? key,
    required this.lable,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 1.9.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Colors.grey.withOpacity(0.9)),
      child: Center(
        child: Text(
          lable,
          style: const TextStyle(color: Colors.white, fontSize: 10),
        ),
      ),
    );
  }
}
