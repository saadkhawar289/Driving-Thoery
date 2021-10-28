import 'package:driving_theory/CustomWidgets/bottomNavBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Practice extends StatefulWidget {
  const Practice({Key? key}) : super(key: key);

  @override
  _TheoryTestState createState() => _TheoryTestState();
}

class _TheoryTestState extends State<Practice> {
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
                      margin: EdgeInsets.only(top: 0.02.sh),

                      width: 0.35.sw,
                      height: 0.08.sh,
                      //child: Image.asset('assets/Drivinglogo.png'),
                    ),
                  ),
                  // SizedBox(height: 10.h,),
                  Expanded(
                    flex: 6,
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
                        margin: EdgeInsets.only(top: 0.02.sh),
                        width: 0.80.sw,
                        //height: 0.55.sh,
                        child: Padding(
                            padding:
                                const EdgeInsets.only(top: 90.0, bottom: 5),
                            child: ListView(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 5,
                                      left: 8.0,
                                      right: 8.0,
                                      bottom: 8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            spreadRadius: 1,
                                            offset: Offset(0.0, 1.0), //(x,y)
                                            blurRadius: 3.0,
                                            color: Colors.grey,
                                          )
                                        ],
                                        color: const Color(0xFFE4E6FF),
                                        borderRadius:
                                            BorderRadius.circular(12.r)),
                                    child: ListTile(
                                      leading: Container(
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                              boxShadow: [
                                                BoxShadow(
                                                  spreadRadius: 1,
                                                  offset:
                                                      Offset(0.0, 1.0), //(x,y)
                                                  blurRadius: 6.0,
                                                  color: Colors.grey,
                                                )
                                              ],
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(20.r)),
                                          child: Center(
                                            child: Image.asset(
                                              'assets/alert.png',
                                              height: 30,
                                              width: 30,
                                            ),
                                          )),
                                      title: Text("Alertness(26)"),
                                      trailing: Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                spreadRadius: 1,
                                                offset:
                                                    Offset(0.0, 0.0), //(x,y)
                                                blurRadius: 0.0,
                                                color: Colors.grey,
                                              )
                                            ],
                                            color: const Color(0xFFE4E6FF),
                                            borderRadius:
                                                BorderRadius.circular(20.r)),
                                        child: CircularPercentIndicator(
                                          radius: 30.0,
                                          lineWidth: 3.0,
                                          backgroundColor: Colors.white,
                                          percent: 0.20,
                                          center: new Text(
                                            "12%",
                                            style: TextStyle(fontSize: 10),
                                          ),
                                          progressColor: Colors.blue,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 2,
                                      left: 8.0,
                                      right: 8.0,
                                      bottom: 8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            spreadRadius: 1,
                                            offset: Offset(0.0, 1.0), //(x,y)
                                            blurRadius: 3.0,
                                            color: Colors.grey,
                                          )
                                        ],
                                        color: const Color(0xFFE4E6FF),
                                        borderRadius:
                                            BorderRadius.circular(12.r)),
                                    child: ListTile(
                                      leading: Container(
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                              boxShadow: [
                                                BoxShadow(
                                                  spreadRadius: 1,
                                                  offset:
                                                      Offset(0.0, 1.0), //(x,y)
                                                  blurRadius: 6.0,
                                                  color: Colors.grey,
                                                )
                                              ],
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(20.r)),
                                          child: Center(
                                            child: Image.asset(
                                              "assets/practice (9).png",
                                              height: 30,
                                              width: 30,
                                            ),
                                          )),
                                      title: Text("Attitude(39)"),
                                      trailing: Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                spreadRadius: 1,
                                                offset:
                                                    Offset(0.0, 0.0), //(x,y)
                                                blurRadius: 0.0,
                                                color: Colors.grey,
                                              )
                                            ],
                                            color: const Color(0xFFE4E6FF),
                                            borderRadius:
                                                BorderRadius.circular(20.r)),
                                        child: CircularPercentIndicator(
                                          radius: 30.0,
                                          lineWidth: 3.0,
                                          backgroundColor: Colors.white,
                                          percent: 0.12,
                                          center: new Text(
                                            "8%",
                                            style: TextStyle(fontSize: 10),
                                          ),
                                          progressColor: Colors.blue,
                                        ),
                                        // Center(
                                        //     child: Image.asset(
                                        //   "assets/LockBTN.png",
                                        //   height: 25.h,
                                        //   width: 35.w,
                                        // ))
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 2,
                                      left: 8.0,
                                      right: 8.0,
                                      bottom: 8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            spreadRadius: 1,
                                            offset: Offset(0.0, 1.0), //(x,y)
                                            blurRadius: 3.0,
                                            color: Colors.grey,
                                          )
                                        ],
                                        color: const Color(0xFFE4E6FF),
                                        borderRadius:
                                            BorderRadius.circular(12.r)),
                                    child: ListTile(
                                      leading: Container(
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                              boxShadow: [
                                                BoxShadow(
                                                  spreadRadius: 1,
                                                  offset:
                                                      Offset(0.0, 1.0), //(x,y)
                                                  blurRadius: 6.0,
                                                  color: Colors.grey,
                                                )
                                              ],
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(20.r)),
                                          child: Center(
                                            child: Image.asset(
                                              "assets/practice (8).png",
                                              height: 30,
                                              width: 30,
                                            ),
                                          )),
                                      title: Text(
                                        "Safety and your vehicle",
                                        style: TextStyle(
                                          fontSize: 13,
                                        ),
                                      ),
                                      trailing: Container(
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                              boxShadow: [
                                                BoxShadow(
                                                  spreadRadius: 1,
                                                  offset:
                                                      Offset(0.0, 0.0), //(x,y)
                                                  blurRadius: 0.0,
                                                  color: Colors.grey,
                                                )
                                              ],
                                              color: const Color(0xFFE4E6FF),
                                              borderRadius:
                                                  BorderRadius.circular(20.r)),
                                          child: Center(
                                              child: Image.asset(
                                            "assets/LockBTN.png",
                                            height: 25.h,
                                            width: 35.w,
                                          ))),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 2,
                                      left: 8.0,
                                      right: 8.0,
                                      bottom: 8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            spreadRadius: 1,
                                            offset: Offset(0.0, 1.0), //(x,y)
                                            blurRadius: 3.0,
                                            color: Colors.grey,
                                          )
                                        ],
                                        color: const Color(0xFFE4E6FF),
                                        borderRadius:
                                            BorderRadius.circular(12.r)),
                                    child: ListTile(
                                      leading: Container(
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                              boxShadow: [
                                                BoxShadow(
                                                  spreadRadius: 1,
                                                  offset:
                                                      Offset(0.0, 1.0), //(x,y)
                                                  blurRadius: 6.0,
                                                  color: Colors.grey,
                                                )
                                              ],
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(20.r)),
                                          child: Center(
                                            child: Image.asset(
                                              "assets/practice (7).png",
                                              height: 30,
                                              width: 30,
                                            ),
                                          )),
                                      title: Text(
                                        "Safety margins(33)",
                                        style: TextStyle(
                                          fontSize: 13,
                                        ),
                                      ),
                                      trailing: Container(
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                              boxShadow: [
                                                BoxShadow(
                                                  spreadRadius: 1,
                                                  offset:
                                                      Offset(0.0, 0.0), //(x,y)
                                                  blurRadius: 0.0,
                                                  color: Colors.grey,
                                                )
                                              ],
                                              color: const Color(0xFFE4E6FF),
                                              borderRadius:
                                                  BorderRadius.circular(20.r)),
                                          child: Center(
                                              child: Image.asset(
                                            "assets/LockBTN.png",
                                            height: 25.h,
                                            width: 35.w,
                                          ))),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 2,
                                      left: 8.0,
                                      right: 8.0,
                                      bottom: 8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            spreadRadius: 1,
                                            offset: Offset(0.0, 1.0), //(x,y)
                                            blurRadius: 3.0,
                                            color: Colors.grey,
                                          )
                                        ],
                                        color: const Color(0xFFE4E6FF),
                                        borderRadius:
                                            BorderRadius.circular(12.r)),
                                    child: ListTile(
                                      leading: Container(
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                              boxShadow: [
                                                BoxShadow(
                                                  spreadRadius: 1,
                                                  offset:
                                                      Offset(0.0, 1.0), //(x,y)
                                                  blurRadius: 6.0,
                                                  color: Colors.grey,
                                                )
                                              ],
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(20.r)),
                                          child: Center(
                                            child: Image.asset(
                                              "assets/practice (6).png",
                                              height: 30,
                                              width: 30,
                                            ),
                                          )),
                                      title: Text(
                                        "Hazard awareness(78)",
                                        style: TextStyle(
                                          fontSize: 13,
                                        ),
                                      ),
                                      trailing: Container(
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                              boxShadow: [
                                                BoxShadow(
                                                  spreadRadius: 1,
                                                  offset:
                                                      Offset(0.0, 0.0), //(x,y)
                                                  blurRadius: 0.0,
                                                  color: Colors.grey,
                                                )
                                              ],
                                              color: const Color(0xFFE4E6FF),
                                              borderRadius:
                                                  BorderRadius.circular(20.r)),
                                          child: Center(
                                              child: Image.asset(
                                            "assets/LockBTN.png",
                                            height: 25.h,
                                            width: 35.w,
                                          ))),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 2,
                                      left: 8.0,
                                      right: 8.0,
                                      bottom: 8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            spreadRadius: 1,
                                            offset: Offset(0.0, 1.0), //(x,y)
                                            blurRadius: 3.0,
                                            color: Colors.grey,
                                          )
                                        ],
                                        color: const Color(0xFFE4E6FF),
                                        borderRadius:
                                            BorderRadius.circular(12.r)),
                                    child: ListTile(
                                      leading: Container(
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                              boxShadow: [
                                                BoxShadow(
                                                  spreadRadius: 1,
                                                  offset:
                                                      Offset(0.0, 1.0), //(x,y)
                                                  blurRadius: 6.0,
                                                  color: Colors.grey,
                                                )
                                              ],
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(20.r)),
                                          child: Center(
                                            child: Image.asset(
                                              "assets/practice (5).png",
                                              height: 30,
                                              width: 30,
                                            ),
                                          )),
                                      title: Text(
                                        "Vulnerable road users(67)",
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                      ),
                                      trailing: Container(
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                              boxShadow: [
                                                BoxShadow(
                                                  spreadRadius: 1,
                                                  offset:
                                                      Offset(0.0, 0.0), //(x,y)
                                                  blurRadius: 0.0,
                                                  color: Colors.grey,
                                                )
                                              ],
                                              color: const Color(0xFFE4E6FF),
                                              borderRadius:
                                                  BorderRadius.circular(20.r)),
                                          child: Center(
                                              child: Image.asset(
                                            "assets/LockBTN.png",
                                            height: 25.h,
                                            width: 35.w,
                                          ))),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 2,
                                      left: 8.0,
                                      right: 8.0,
                                      bottom: 8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            spreadRadius: 1,
                                            offset: Offset(0.0, 1.0), //(x,y)
                                            blurRadius: 3.0,
                                            color: Colors.grey,
                                          )
                                        ],
                                        color: const Color(0xFFE4E6FF),
                                        borderRadius:
                                            BorderRadius.circular(12.r)),
                                    child: ListTile(
                                      leading: Container(
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                              boxShadow: [
                                                BoxShadow(
                                                  spreadRadius: 1,
                                                  offset:
                                                      Offset(0.0, 1.0), //(x,y)
                                                  blurRadius: 6.0,
                                                  color: Colors.grey,
                                                )
                                              ],
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(20.r)),
                                          child: Center(
                                            child: Image.asset(
                                              "assets/practice (4).png",
                                              height: 30,
                                              width: 30,
                                            ),
                                          )),
                                      title: Text(
                                        "Other types of vehicle",
                                        style: TextStyle(
                                          fontSize: 13,
                                        ),
                                      ),
                                      trailing: Container(
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                              boxShadow: [
                                                BoxShadow(
                                                  spreadRadius: 1,
                                                  offset:
                                                      Offset(0.0, 0.0), //(x,y)
                                                  blurRadius: 0.0,
                                                  color: Colors.grey,
                                                )
                                              ],
                                              color: const Color(0xFFE4E6FF),
                                              borderRadius:
                                                  BorderRadius.circular(20.r)),
                                          child: Center(
                                              child: Image.asset(
                                            "assets/LockBTN.png",
                                            height: 25.h,
                                            width: 35.w,
                                          ))),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 2,
                                      left: 8.0,
                                      right: 8.0,
                                      bottom: 8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            spreadRadius: 1,
                                            offset: Offset(0.0, 1.0), //(x,y)
                                            blurRadius: 3.0,
                                            color: Colors.grey,
                                          )
                                        ],
                                        color: const Color(0xFFE4E6FF),
                                        borderRadius:
                                            BorderRadius.circular(12.r)),
                                    child: ListTile(
                                      leading: Container(
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                              boxShadow: [
                                                BoxShadow(
                                                  spreadRadius: 1,
                                                  offset:
                                                      Offset(0.0, 1.0), //(x,y)
                                                  blurRadius: 6.0,
                                                  color: Colors.grey,
                                                )
                                              ],
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(20.r)),
                                          child: Center(
                                            child: Image.asset(
                                              "assets/practice (3).png",
                                              height: 30,
                                              width: 30,
                                            ),
                                          )),
                                      title: Text(
                                        "Vehicle handing(44)",
                                        style: TextStyle(
                                          fontSize: 13,
                                        ),
                                      ),
                                      trailing: Container(
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                              boxShadow: [
                                                BoxShadow(
                                                  spreadRadius: 1,
                                                  offset:
                                                      Offset(0.0, 0.0), //(x,y)
                                                  blurRadius: 0.0,
                                                  color: Colors.grey,
                                                )
                                              ],
                                              color: const Color(0xFFE4E6FF),
                                              borderRadius:
                                                  BorderRadius.circular(20.r)),
                                          child: Center(
                                              child: Image.asset(
                                            "assets/LockBTN.png",
                                            height: 25.h,
                                            width: 35.w,
                                          ))),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 2,
                                      left: 8.0,
                                      right: 8.0,
                                      bottom: 8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            spreadRadius: 1,
                                            offset: Offset(0.0, 1.0), //(x,y)
                                            blurRadius: 3.0,
                                            color: Colors.grey,
                                          )
                                        ],
                                        color: const Color(0xFFE4E6FF),
                                        borderRadius:
                                            BorderRadius.circular(12.r)),
                                    child: ListTile(
                                      leading: Container(
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                              boxShadow: [
                                                BoxShadow(
                                                  spreadRadius: 1,
                                                  offset:
                                                      Offset(0.0, 1.0), //(x,y)
                                                  blurRadius: 6.0,
                                                  color: Colors.grey,
                                                )
                                              ],
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(20.r)),
                                          child: Center(
                                            child: Image.asset(
                                              "assets/practice (2).png",
                                              height: 30,
                                              width: 30,
                                            ),
                                          )),
                                      title: Text(
                                        "Motorway rules(54) ",
                                        style: TextStyle(
                                          fontSize: 13,
                                        ),
                                      ),
                                      trailing: Container(
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                              boxShadow: [
                                                BoxShadow(
                                                  spreadRadius: 1,
                                                  offset:
                                                      Offset(0.0, 0.0), //(x,y)
                                                  blurRadius: 0.0,
                                                  color: Colors.grey,
                                                )
                                              ],
                                              color: const Color(0xFFE4E6FF),
                                              borderRadius:
                                                  BorderRadius.circular(20.r)),
                                          child: Center(
                                              child: Image.asset(
                                            "assets/LockBTN.png",
                                            height: 25.h,
                                            width: 35.w,
                                          ))),
                                    ),
                                  ),
                                ),
                              ],
                            ))),
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
                // top: 0.12.sh,
                // left: 0.14.sw,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 0.04.sh),
                  child: Align(
                    alignment: AlignmentDirectional.topCenter,
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            boxShadow: [
                              BoxShadow(
                                //spreadRadius: 1,
                                offset: Offset(0.0, 0.0), //(x,y)
                                blurRadius: 6.0,
                                color: Colors.transparent,
                              )
                            ],
                            // color: Colors.white,
                            borderRadius: BorderRadius.circular(90.r)),
                        child: Image.asset(
                          "assets/practice (1).png",
                          fit: BoxFit.cover,
                          height: 0.20.sh,
                        )),
                  ),
                ),
              ),
              Positioned(
                  child: Padding(
                padding: EdgeInsets.only(top: 0.02.sh, left: 0.02.sw),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_ios_outlined,
                    color: Colors.blue[800],
                    size: 35,
                  ),
                ),
              ))
            ]),
          ),
          // This trailing comma makes auto-formatting nicer for build methods.
        ),
      ),
    );
  }
}
