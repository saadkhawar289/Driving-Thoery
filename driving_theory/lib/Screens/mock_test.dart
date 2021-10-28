import 'package:driving_theory/CustomWidgets/bottomNavBar.dart';
import 'package:driving_theory/CustomWidgets/hazard_box.dart';
import 'package:driving_theory/CustomWidgets/highwayTile.dart';
import 'package:driving_theory/CustomWidgets/mock_test_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MockTest extends StatefulWidget {
  const MockTest({Key? key}) : super(key: key);

  @override
  _MockTestState createState() => _MockTestState();
}

class _MockTestState extends State<MockTest> {
  Color color = Color(0xFFE4E6FF);

  DecorationImage _buildServiceBoxImage(String image) {
    return DecorationImage(fit: BoxFit.fill, image: AssetImage(image));
  }

  DecorationImage _buildMinutesBoxImage(String image) {
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
                  ), //////////////////////Top Center Container for logo or heading as tittle
                  Expanded(
                    flex: 3,
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
                        width: 0.90.sw,
                        //height: 0.55.sh,
                        child: Padding(
                          padding: EdgeInsets.only(top: 0.13.sh),
                          child: Column(
                            children: [
                              Expanded(
                                flex: 3,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Container(
                                    child: Stack(children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 28.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                  //image: _buildMinutesBoxImage('assets/timer.png'),
                                                  color: color,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20.r)),
                                              width: 0.25.sw,
                                              height: 0.20.sh,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.spaceEvenly,
                                                children: [
                                                  SizedBox(
                                                    height: 0.02.sh,
                                                  ),
                                                  Text(
                                                    '57',
                                                    style: TextStyle(
                                                        fontSize: 25.sp,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.blue[800]),
                                                  ),
                                                  Text('MINUTES',
                                                      style: TextStyle(
                                                          color:
                                                              Colors.blue[900]))
                                                ],
                                              ),
                                            ),
                                            Container(
                                                decoration: BoxDecoration(
                                                    //  image: _buildMinutesBoxImage('assets/qusetionBox.png'),
                                                    color: color,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20.r)),
                                                width: 0.25.sw,
                                                height: 0.20.sh,
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    SizedBox(
                                                      height: 0.02.sh,
                                                    ),
                                                    Text('50',
                                                        style: TextStyle(
                                                            fontSize: 25.sp,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: Colors
                                                                .blue[800])),
                                                    Text('QUESTIONS',
                                                        style: TextStyle(
                                                            color:
                                                                Colors.blue[900]))
                                                  ],
                                                )),
                                            Container(
                                              decoration: BoxDecoration(
                                                  //  image:_buildMinutesBoxImage('assets/likeBox.png'),
                                                  color: color,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20.r)),
                                              width: 0.25.sw,
                                              height: 0.20.sh,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.spaceEvenly,
                                                children: [
                                                  SizedBox(
                                                    height: 0.02.sh,
                                                  ),
                                                  Text(
                                                    '43',
                                                    style: TextStyle(
                                                        fontSize: 25.sp,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.blue[800]),
                                                  ),
                                                  Text('TO PASS',
                                                      style: TextStyle(
                                                          color:
                                                              Colors.blue[900]))
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Positioned(
                                          child: Padding(
                                        padding: EdgeInsets.only(left: 0.10.sw),
                                        child: Align(
                                            alignment: Alignment.topLeft,
                                            child: Image.asset(
                                              'assets/time.png',
                                              width: 0.10.sw,
                                              height: 0.09.sh,
                                            )),
                                      )),
                                      Positioned(
                                          child: Padding(
                                        padding: EdgeInsets.only(left: 0.0.sw),
                                        child: Align(
                                            alignment: Alignment.topCenter,
                                            child: Image.asset(
                                              'assets/questionMark.png',
                                              width: 0.10.sw,
                                              height: 0.09.sh,
                                            )),
                                      )),
                                      Positioned(
                                          child: Padding(
                                        padding: EdgeInsets.only(right: 0.10.sw),
                                        child: Align(
                                            alignment: Alignment.topRight,
                                            child: Image.asset(
                                              'assets/recommended.png',
                                              width: 0.10.sw,
                                              height: 0.09.sh,
                                            )),
                                      ))
                                    ]),
                                  ),
                                ),
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: MockTestTitle(),
                              )
                            ],
                          ),
                        )),
                  ), ///////////////////Main white Container of screen
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.only(top: 45.h),
                      child: Container(),
                    ),
                  ), ///////////////////For hollow container to achieve the required space
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
                          'assets/hazardCircle.png',
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
                  onTap: () {},
                  child: Icon(
                    Icons.arrow_back_ios_outlined,
                    color: Colors.blue[800],
                    size: 35,
                  ),
                ),
              )),
              Positioned(
                  child: Padding(
                padding: const EdgeInsets.only(bottom: 15.0),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xFF404FFA) // This is what you need!
                        ),
                    child: Text(
                      '      Start       ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.sp),
                    ),
                    onPressed: ()=>Navigator.pushNamed(context, '/questionQuiz'),
                  ),
                ),
              )),
            ]),
          ),
          // This trailing comma makes auto-formatting nicer for build methods.
        ),
      ),
    );
  }
}
