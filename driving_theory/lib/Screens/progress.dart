import 'package:driving_theory/CustomWidgets/bottomNavBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Progress extends StatefulWidget {
  const Progress({Key? key}) : super(key: key);

  @override
  _TheoryTestState createState() => _TheoryTestState();
}

class _TheoryTestState extends State<Progress> {
  DecorationImage _buildServiceBoxImage(String image) {
    return DecorationImage(fit: BoxFit.fill, image: AssetImage(image));
  }
  bool isSelectedA = false;
  bool isSelectedB = false;
  bool isSelectedC = false;
  bool isSelectedD = true;
  bool isSelectedF = false;


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[200],
      child: SafeArea(
        child: Scaffold(
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              color: const Color(0xFF404FFA),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        isSelectedA = isSelectedA ? false : true;
                        isSelectedB = false;
                        isSelectedC = false;
                        isSelectedD = false;
                        isSelectedF = false;
                        Navigator.pushNamed(context, '/');

                      });
                    },
                    child: Icon(
                      Icons.menu_book,
                      size: 30,
                      color: isSelectedA ? Colors.blue[900] : Colors.white,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        isSelectedB = isSelectedB ? false : true;
                        isSelectedA = false;
                        isSelectedC = false;
                        isSelectedD = false;
                        isSelectedF = false;
                        Navigator.pushNamed(context, '/savedVedios');
                      });
                    },
                    child: Icon(
                      Icons.check_circle,
                      size: 30,
                      color: isSelectedB ? Colors.blue[900] : Colors.white,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        isSelectedC = isSelectedC ? false : true;
                        isSelectedA = false;
                        isSelectedB = false;
                        isSelectedD = false;
                        isSelectedF = false;
                        Navigator.pushNamed(context, '/allViedos');

                      });
                    },
                    child: Icon(
                      Icons.play_arrow,
                      size: 35,
                      color: isSelectedC ? Colors.blue[900] : Colors.white,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        isSelectedD = isSelectedD ? false : true;
                        isSelectedA = false;
                        isSelectedC = false;
                        isSelectedB = false;
                        isSelectedF = false;
                        Navigator.pushNamed(context, '/progress');

                      });
                    },
                    child: Icon(
                      Icons.trending_up,
                      size: 30,
                      color: isSelectedD ? Colors.blue[900] : Colors.white,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        isSelectedF = isSelectedF ? false : true;
                        isSelectedA = false;
                        isSelectedC = false;
                        isSelectedD = false;
                        isSelectedB = false;
                      });
                    },
                    child: Icon(
                      Icons.workspaces_rounded,
                      size: 30,
                      color: isSelectedF ? Colors.blue[900] : Colors.white,
                    ),
                  ),
                )
              ],
            ),
            height: 45.h,
          ),
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
                          padding: const EdgeInsets.only(top: 100.0),
                          child: Column(
                            children: [
                              Container(
                                child: Image.asset("assets/graph.png"),
                              ),
                              Container(
                                width: 1.sw,
                                //color: Colors.red,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 20.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height: 30,
                                        width: 80,
                                        decoration: BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: Center(
                                            child: Text(
                                          "Mock task",
                                          style: TextStyle(color: Colors.white),
                                        )),
                                      ),
                                      Container(
                                        height: 30,
                                        width: 80,
                                        decoration: BoxDecoration(
                                          // color: Colors.red,
                                          border: Border.all(
                                              color: Colors.blueAccent),
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: Center(
                                            child: Text(
                                          "theory test",
                                          style: TextStyle(
                                              color: Colors.lightBlue),
                                        )),
                                      )
                                    ],
                                  ),
                                ),
                              )
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
            ]),
          ),
          // This trailing comma makes auto-formatting nicer for build methods.
        ),
      ),
    );
  }
}
