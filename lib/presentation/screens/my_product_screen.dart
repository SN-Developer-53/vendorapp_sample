import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:vendor_app_sample/presentation/screens/product_detial_screen.dart';
import 'package:vendor_app_sample/presentation/screens/product_screen.dart';

class MyProductScreen extends StatelessWidget {
  const MyProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 2.0.h),
          child: Column(
            children: [
              // SizedBox(height: 3.2.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ProductScreen()),
                        );
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      )),
                  const Text(
                    "My Products",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 1.2.h,
              ),
              SizedBox(
                width: double.infinity,
                height: 76.9.h,
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return ProdectDetailsCard(
                        imgurl: 'assets/images/burger.jpg',
                        productName: 'Burger ${index + 1}',
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(height: 2.5.h);
                    },
                    itemCount: 4),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProdectDetailsCard extends StatelessWidget {
  final String imgurl;
  final String productName;
  const ProdectDetailsCard({
    Key? key,
    required this.imgurl,
    required this.productName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ProductDetialScreen()),
        );
      },
      child: Container(
        padding: EdgeInsets.only(right: 1.2.w),
        width: double.infinity,
        height: 12.8.h,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(.4),
              blurRadius: 6.0,
              spreadRadius: 3,
              blurStyle: BlurStyle.outer),
        ], borderRadius: BorderRadius.circular(8)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 25.6.w,
              height: 12.8.h,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(8),
                      bottomLeft: Radius.circular(8)),
                  image: DecorationImage(
                      image: AssetImage(
                        imgurl,
                      ),
                      fit: BoxFit.cover)),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 2.5.w),
              width: 58.9.w,
              height: 11.5.h,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        productName,
                        style: TextStyle(fontSize: 13.8.sp),
                      ),
                      SizedBox(
                        width: 43.5.w,
                        height: 5.1.h,
                        child: Text(
                          'A hamburger, or simply burger,is a food consisting of fillings—usually a patty of ground meat',
                          style:
                              TextStyle(fontSize: 6.9.sp, color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                  const Text(
                    '\u{20B9}${777}',
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
