import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../Widget/Bluebutton.dart';
import '../../Widget/CustomDrawer.dart';
import '../../Widget/Draggablescroller.dart';
import '../../utils/Constants/Const_Colors.dart';
import '../Arrivingscreen/CustomClipper/Clippercontainer.dart';

class Rideoption extends StatefulWidget {
  const Rideoption({super.key});

  @override
  State<Rideoption> createState() => _RideoptionState();
}

class _RideoptionState extends State<Rideoption> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: const Customdrawer(),
      body: Stack(
        children: [
          /// Map Background
          Positioned.fill(
            child: Image.asset(
              'images/image 3.png',
              fit: BoxFit.cover,
            ),
          ),

          /// Top Menu Button (opens drawer)
          Positioned(
            top: 5.h,
            left: 5.w,
            child: GestureDetector(
              onTap: () {
                _scaffoldKey.currentState?.openDrawer();
              },
              child: Container(
                height: 7.h,
                width: 7.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 6,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Center(
                  child: Image.asset(
                    'images/ic_menu.png',
                  ),
                ),
              ),
            ),
          ),

          /// Draggable Scroller Section
          CustomdraggableScroller(
            initialsize: 0.4,
            minchildsize: 0.1,
            maxchildsize: 1.0,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 2.h),
                  child: Container(
                    height: 15.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                          color: Colors.black.withOpacity(0.10), width: 1),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 8,
                          offset: Offset(1, 2),
                        ),
                      ],
                    ),
                    child: Container(
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          /// Back container
                          Container(
                            height: 18.h,
                            width: 90.w,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  blurRadius: 10,
                                  offset: Offset(2, 6),
                                ),
                              ],
                            ),
                          ),

                          /// Front content
                          Positioned.fill(
                            child: Padding(
                              padding: EdgeInsets.all(5.w),
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      SizedBox(
                                        child: Image.asset('images/image 1.png'),
                                      ),
                                      SizedBox(height: 25),
                                      Text(
                                        "Standard",
                                        style: TextStyle(
                                          color: Tcolors.AppbartitleColor,
                                          fontSize: 15.sp,
                                        ),
                                      )
                                    ],
                                  ),
                                  Spacer(),
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: 6.h,
                                        width: 6.h,
                                        child: Image.asset('images/price.png'),
                                      ),
                                      SizedBox(height: 20),
                                      Container(
                                        height: 2.h,
                                        width: 15.w,
                                        decoration: BoxDecoration(
                                          color: Colors.grey.withOpacity(0.5),
                                          borderRadius:
                                          BorderRadius.circular(20),
                                        ),
                                        child: Center(
                                          child: Text(
                                            '3min',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 13.sp,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding:
                  EdgeInsets.symmetric(horizontal: 6.w, vertical: 3.h),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Estimated trip time",
                            style:
                            TextStyle(color: Tcolors.subtitlecolor, fontSize: 15.sp),
                          ),
                          Text(
                            "24 min",
                            style: TextStyle(
                                color: Tcolors.buttoncolor, fontSize: 15.sp),
                          ),
                        ],
                      ),
                      SizedBox(width: 12.w),
                      Expanded(
                        child: Image.asset('images/payment 2.png'),
                      ),
                    ],
                  ),
                ),
                Custombutton(title: 'BOOK Ride',topage: CustomShapeContainer(),)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
