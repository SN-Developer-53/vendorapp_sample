import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:vendor_app_sample/presentation/screens/my_product_screen.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 5),
          child: Column(
            children: [
              // SizedBox(height: 3.2.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Products",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  // IconButton(
                  //     onPressed: () {},
                  //     icon: const Icon(
                  //       Icons.add_circle_outline,
                  //       size: 30,
                  //       color: Colors.grey,
                  //     ))
                ],
              ),

              SizedBox(
                height: 2.5.h,
              ),
              const ProdectCard(
                imgurl: 'assets/images/burger.jpg',
                productName: 'Burger',
              ),
              SizedBox(
                height: 2.5.h,
              ),
              const ProdectCard(
                  imgurl: 'assets/images/pizza.jpg', productName: 'Pizza')
            ],
          ),
        ),
      ),
    );
  }
}

class ProdectCard extends StatelessWidget {
  final String imgurl;
  final String productName;
  const ProdectCard({
    Key? key,
    required this.imgurl,
    required this.productName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const MyProductScreen()),
              );
            },
            child: Container(
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
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const MyProductScreen()),
              );
            },
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              width: 58.9.w,
              height: 11.5.h,
              decoration: const BoxDecoration(color: Colors.transparent),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        productName,
                        style: TextStyle(fontSize: 13.8.sp),
                      ),
                      Text(
                        '2 Items',
                        style: TextStyle(fontSize: 10.sp, color: Colors.grey),
                      ),
                    ],
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MyProductScreen()),
                        );
                      },
                      icon: const Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.red,
                      ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
