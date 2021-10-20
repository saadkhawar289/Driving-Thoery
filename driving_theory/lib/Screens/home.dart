import 'package:driving_theory/CustomWidgets/bottomNavBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {});
  }

  DecorationImage _buildServiceBoxImage(String image) {
    return DecorationImage(fit: BoxFit.fill, image: AssetImage(image));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[200],
      child: SafeArea(
        child: Scaffold(
          bottomNavigationBar: BottomNavBar(),
          body: Container(
            decoration: BoxDecoration(
                image: _buildServiceBoxImage('assets/Wallpaper.png')),
            child: Stack(children: [
              Column(
                //  mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 45.h),
                      width: 270.w,
                      height: 115.h,
                      child: Image.asset('assets/Drivinglogo.png'),
                    ),
                  ),
                  // SizedBox(height: 10.h,),
                  Expanded(
                    flex: 4,
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                       spreadRadius: 1,
                            offset: Offset(0.0, 1.0), //(x,y)
                            blurRadius: 6.0,
                            color: Colors.grey,
                          )
                        ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.r)),
                      margin: EdgeInsets.only(top: 80.h),
                      width:MediaQuery.of(context).size.width<=400? 0.70.sw:0.80.sw,
                      //height: 0.45.sh,
                      child: Column(
                       // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding:  EdgeInsets.only(top:65.0.h),
                            child: Center(child: Text('Let\'s Practice',style: TextStyle(fontSize: 25.sp,fontWeight: FontWeight.bold,color: Colors.blue[800]),)),
                          ),
                         Padding(
                           padding:  EdgeInsets.symmetric(horizontal: 20.0.h,vertical: 40.w),
                           child: Row(
                             children: [
                               Container(
                                 decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(50.r),
                                   color: Colors.white,
                                   boxShadow: [
                                     BoxShadow(
                                       spreadRadius: 1,
                                       offset: Offset(0.0, 1.0), //(x,y)
                                       blurRadius: 6.0,
                                       color: Colors.grey,
                                     )
                                   ],
                                 ),
                                 height: 185.h,
                                 width: 142.w,
                                 child: Column(
                                   children: [
                                     Text('LGV',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blueGrey[300]),),
                                     Image.asset('assets/Drivinglogo.png')
                                   ],
                                 ),
                               ),
                               Spacer(),
                               Container(
                                 decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(50.r),
                                   color: Colors.white,
                                   boxShadow: [
                                     BoxShadow(
                                       spreadRadius: 1,
                                       offset: Offset(0.0, 1.0), //(x,y)
                                       blurRadius: 6.0,
                                       color: Colors.grey,
                                     )
                                   ],
                                 ),
                                 height: 185.h,
                                 width: 142.w,
                                 child: Column(
                                   children: [
                                     Text('LGV',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blueGrey[300]),),
                                     Image.asset('assets/Drivinglogo.png')
                                   ],
                                 ),
                               ),

                             ],
                           ),
                         ),

                          Padding(
                            padding:  EdgeInsets.symmetric(horizontal: 20.0.h,vertical: 05.w),
                            child: Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50.r),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        spreadRadius: 1,
                                        offset: Offset(0.0, 1.0), //(x,y)
                                        blurRadius: 6.0,
                                        color: Colors.grey,
                                      )
                                    ],
                                  ),
                                  height: 185.h,
                                  width: 142.w,
                                  child: Column(
                                    children: [
                                      Text('LGV',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blueGrey[300]),),
                                      Image.asset('assets/Drivinglogo.png')
                                    ],
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50.r),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        spreadRadius: 1,
                                        offset: Offset(0.0, 1.0), //(x,y)
                                        blurRadius: 6.0,
                                        color: Colors.grey,
                                      )
                                    ],
                                  ),
                                  height: 185.h,
                                  width: 142.w,
                                  child: Column(
                                    children: [
                                      Text('LGV',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blueGrey[300]),),
                                      Image.asset('assets/Drivinglogo.png')
                                    ],
                                  ),
                                ),

                              ],
                            ),
                          )


                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.only(top: 45.h),
                      child: Container(),
                    ),
                  ),
                ],
              ),
              Positioned(
                top: 0.22.sh,
                left: 0.18.sw,
                child: Container(
                  width: 0.65.sw,
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 1,
                              offset: Offset(0.0, 1.0), //(x,y)
                              blurRadius: 6.0,
                              color: Colors.grey,
                            )
                          ],
                        ),
                        height: 65.h,
                        width: 60.w,
                       child: Column(
                          children: [
                            Text('LGV',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blueGrey[300]),),
                            Image.asset('assets/Drivinglogo.png')
                          ],
                        ),
                      ),
                      Spacer(),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 1,
                              offset: Offset(0.0, 1.0), //(x,y)
                              blurRadius: 6.0,
                              color: Colors.grey,
                            )
                          ],
                        ),
                        height: 65.h,
                        width: 60.w,
                        child:  Column(
                          children: [
                            Text('Car',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blueGrey[300]),),
                            Image.asset('assets/Drivinglogo.png')
                          ],
                        ),
                      ),
                      Spacer(),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 1,
                              offset: Offset(0.0, 1.0), //(x,y)
                              blurRadius: 6.0,
                              color: Colors.grey,
                            )
                          ],
                        ),
                        height: 65.h,
                        width: 60.w,
                        child: Column(
                          children: [
                            Text('Bike',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blueGrey[300]),),
                          Image.asset('assets/Drivinglogo.png')
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ]),
          ),
          // This trailing comma makes auto-formatting nicer for build methods.
        ),
      ),
    );
  }
}
