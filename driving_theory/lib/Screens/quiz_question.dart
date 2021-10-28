import 'package:driving_theory/CustomWidgets/bottomNavBar.dart';
import 'package:driving_theory/CustomWidgets/hazard_box.dart';
import 'package:driving_theory/CustomWidgets/quiz_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Quiz extends StatefulWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  bool isFavourite=false;
  DecorationImage _buildServiceBoxImage(String image) {
    return DecorationImage(fit: BoxFit.fill, image: AssetImage(image));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[200],
      child: SafeArea(
        child: Scaffold(
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
                    flex: 15,
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
                        width: 0.95.sw,
                        //height: 0.55.sh,
                        child: Padding(
                          padding: EdgeInsets.only(top: 0.10.sh),
                          child: Column(
                            children: [
                              Expanded(
                                  flex: 3,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 5,right:5 ),
                                    child: Container(
                                      child: Center(
                                        child: Column(
                                          children: [
                                            Text(
                                                'What can you do to reduce environmental damage caused by your vehicle?',style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.bold),),
                                         //Image.asset('assets/Drivinglogo.png',height:80 ,)
                                          ],
                                        ),
                                      ),
                                    ),
                                  )),
                              // Expanded(
                              //     flex: 1,
                              //     child: Container(
                              //     )),
                              Expanded(
                                  flex: 7,
                                  child: Padding(
                                    padding:  EdgeInsets.only(bottom: 0.09.sh),
                                    child: Container(
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          QuizTitle(),
                                          QuizTitle(),
                                          QuizTitle(),
                                          QuizTitle()
                                        ],
                                      ),
                                    ),
                                  ))
                            ],
                          ),
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
                  padding: EdgeInsets.symmetric(vertical: 0.01.sh),
                  child: Align(
                    alignment: AlignmentDirectional.topCenter,
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
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
                padding: EdgeInsets.only(top: 0.14.sh, left: 0.06.sw),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 1,
                          offset: Offset(0.0, 1.0), //(x,y)
                          blurRadius: 3.0,
                          color: Colors.red//Color(0xFF404FFA),
                        )
                      ],
                    ),
                    child: Center(
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            isFavourite=isFavourite?false:true;

                          });
                        },
                        child: Icon(
                        isFavourite?Icons.favorite: Icons.favorite_border_outlined,
                          color: Colors.red[800],
                          size: 22.sp,
                        ),
                      ),
                    ),
                  ),
                ),
              )),
              Positioned(
                  child: Padding(
                padding: EdgeInsets.only(top: 0.14.sh, left: 0.75.sw),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 1,
                          offset: Offset(0.0, 1.0), //(x,y)
                          blurRadius: 3.0,
                          color: Color(0xFF404FFA),
                        )
                      ],
                    ),
                    child: Center(
                      child: Icon(
                        Icons.replay_5_rounded,
                        color: Colors.blue[800],
                        size: 22.sp,
                      ),
                    ),
                  ),
                ),
              )),
              Positioned(
                  child: Padding(
                padding: EdgeInsets.only(top: 0.14.sh, left: 0.85.sw),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 1,
                          offset: Offset(0.0, 1.0), //(x,y)
                          blurRadius: 3.0,
                          color: Color(0xFF404FFA),
                        )
                      ],
                    ),
                    child: Center(
                      child: Icon(
                        Icons.record_voice_over_rounded,
                        color: Colors.blue[800],
                        size: 20.sp,
                      ),
                    ),
                  ),
                ),
              )),
              Positioned(
                // top: 0.12.sh,
                // left: 0.14.sw,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 28.0),
                  child: Align(
                    alignment: AlignmentDirectional.bottomCenter,
                    child: Container(
                      width: 0.65.sw,
                      height: 0.05.sh,
                      decoration: BoxDecoration(
                          color: Color(0xFF404FFA),
                          borderRadius: BorderRadius.circular(20.r)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.arrow_back_ios_outlined,
                            color: Colors.white,
                          ),
                          Icon(Icons.flag, color: Colors.white),
                          Icon(Icons.sms_failed, color: Colors.white),
                          Icon(Icons.arrow_forward_ios_outlined,
                              color: Colors.white),
                        ],
                      ),
                    ),
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
