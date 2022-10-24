import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:vendor_app_sample/resources/style_resources.dart';
import 'package:vendor_app_sample/presentation/screens/main_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late bool passwordVisible;
  void initState() {
    passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              // Container(
              //   height: 140,
              //   color: StyleResources.splashScreenBgColor,
              // ),
              Positioned(
                top: -120,
                child: Container(
                  height: 58.8.h,
                  width: 102.5.w,
                  child: Image.asset('assets/images/blankhead.png'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, top: 7),
                child: Text(
                  "Welcome \nBack!",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                      fontSize: 23.0.sp,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 35.2.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter some text';
                            }
                          },
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              contentPadding: const EdgeInsets.all(12.0),
                              border: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                      color: Color(0xFFE0E0E0), width: 0.1)),
                              fillColor: Colors.white,
                              prefixIcon: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Container(
                                  width: 12.w,
                                  //color: Colors.yellow,
                                  child: Row(
                                    children: const [
                                      // Container(
                                      //     height: 40,
                                      //     width: 30,
                                      //     child: Image.asset(
                                      //         'assets/images/flag.png')),
                                      //  SizedBox(
                                      //   width: 5,
                                      // ),
                                      Text(
                                        '(+91)',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              hintText: 'Phone Number',
                              labelText: 'Phone Number'),
                        ),
                        SizedBox(
                          height: 1.7.h,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.all(12.0),
                            border: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(
                                    color: Color(0xFFE0E0E0), width: 0.1)),
                            labelText: 'Password',
                            prefixIcon: const Icon(Icons.lock),
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  passwordVisible = !passwordVisible;
                                });
                              },
                              icon: Icon(
                                // Based on passwordVisible state choose the icon
                                passwordVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Theme.of(context).primaryColorDark,
                              ),
                            ),
                          ),
                          obscureText: !passwordVisible,
                          validator: (val) =>
                              val!.length < 6 ? 'Password too short.' : null,
                        ),
                        SizedBox(
                          height: 4.7.h,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const MainScreen()));
                          },
                          child: Material(
                            elevation: 5.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            color: StyleResources.splashScreenBgColor,
                            child: Container(
                              height: 6.5.h,
                              width: 76.9.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6.67.sp),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                'Log In',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6!
                                    .copyWith(
                                      color: Colors.white,
                                      fontSize: 15.sp,
                                    ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5.8.h,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
