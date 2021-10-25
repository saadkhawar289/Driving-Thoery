import 'package:driving_theory/CustomWidgets/bottomNavBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TheoryTest extends StatefulWidget {
  const TheoryTest({Key? key}) : super(key: key);

  @override
  _TheoryTestState createState() => _TheoryTestState();
}

class _TheoryTestState extends State<TheoryTest> {
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
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 4,
                              child: Container(

                              ),
                            ),
                            Expanded(
                              flex: 4,
                              child: Container(
                                width: 0.60.sw,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        spreadRadius: 1,
                                        offset: Offset(0.0, 1.0), //(x,y)
                                        blurRadius: 6.0,
                                        color: Colors.grey,
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(20.r)),
                                  child:Row(
                                    mainAxisAlignment: MainAxisAlignment.center,

                                    children: [
                                      Image.asset('assets/question.png',height: 75.h,width: 75.w,),
                                      SizedBox(width: 20.w,),
                                      Text('PRACTICE ALL\n Questions',style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.bold,color: Color(0xFF414253)),)
                                    ],
                                  ) ,
                              ),
                            ),
                            SizedBox(height: 0.03.sh,),

                            Expanded(
                              flex: 4,
                              child: Container(
                                  width: 0.60.sw,
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

                                child:Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset('assets/pic1.png',height: 75.h,width: 75.h,),
                                      SizedBox(width: 20.w,),
                                      Text('MOCK TEST',style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.bold,color: Color(0xFF414253)),)
                                    ],
                                  ),
                                ) ,

                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                  decoration: BoxDecoration(
                                     )
                              ),
                            ),

                          ],
                        )),
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
                            boxShadow: [
                              BoxShadow(
                                spreadRadius: 1,
                                offset: Offset(0.0, 1.0), //(x,y)
                                blurRadius: 8.0,
                                color: Colors.grey
                                ,
                              )
                            ],
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(60.r)),
                        child: CircleAvatar(
                          child: Column(
                            children: [

                              Padding(
                                padding:  EdgeInsets.only(top: 20.0.h),
                                child: Image.asset('assets/pic1.png',height: 0.08.sh,),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Theory Test',style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.bold,color: Colors.black45),),
                              )
                            ],
                          ),
                          radius: 0.09.sh,
                          backgroundColor: Colors.white,
                        )),
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
