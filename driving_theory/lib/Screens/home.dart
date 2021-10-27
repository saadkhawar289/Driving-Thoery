import 'package:driving_theory/CustomWidgets/bottomNavBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isSelectedA = true;
  bool isSelectedB = false;
  bool isSelectedC = false;
  bool isSelectedD = false;
  bool isSelectedF = false;

  DecorationImage _buildServiceBoxImage(String image) {
    return DecorationImage(fit: BoxFit.fill, image: AssetImage(image));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[200],
      child: SafeArea(
        child: Scaffold(
          bottomNavigationBar:  Container(
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
            child: Stack(

                children: [
              Column(
                //  mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 0.02.sh),
                      width: 0.35.sw,
                      height: 0.08.sh,
                      child: Image.asset('assets/Drivinglogo.png'),
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
                      margin: EdgeInsets.only(top: 0.09.sh),
                      width:0.80.sw,
                     //height: 0.55.sh,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                         // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 4,
                              child: Padding(
                                padding:  EdgeInsets.only(top:0.07.sh),
                                child: Text('Let\'s Practice',style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.bold,color: Colors.blue[800]),),
                              ),
                            ),

                           Expanded(
                             flex: 7,
                             child: Padding(
                               padding:  EdgeInsets.only(left: 0.03.sw,top: 0.0.sh,right:0.03.sw,bottom: 0.02.sh  ),
                               child: InkWell(
                                 onTap:()=> Navigator.pushNamed(context, '/theoryTest'),
                                 child: Container(
                                   color: Colors.white,
                                   child: Row(
                                     children: [
                                       Container(
                                         decoration: BoxDecoration(
                                           borderRadius: BorderRadius.circular(20.r),
                                           color: Colors.white,
                                           image: DecorationImage( image: AssetImage('assets/sss.png'),fit: BoxFit.fill),
                                           // boxShadow: [
                                           //   BoxShadow(
                                           //     spreadRadius: 1,
                                           //     offset: Offset(0.0, 1.0), //(x,y)
                                           //     blurRadius: 6.0,
                                           //     color: Colors.grey,
                                           //   )
                                           // ],
                                         ),
                                         width: 0.30.sw,

                                       ),
                                       Spacer(),
                                       InkWell(
                                         onTap: ()=>Navigator.pushNamed(context, '/hazard'),
                                         child: Container(
                                           decoration: BoxDecoration(
                                             image: DecorationImage( image: AssetImage('assets/hazard.png'),fit: BoxFit.fill),
                                             borderRadius: BorderRadius.circular(20.r),
                                             color: Colors.white,
                                             // boxShadow: [
                                             //   BoxShadow(
                                             //     spreadRadius: 1,
                                             //     offset: Offset(0.0, 1.0), //(x,y)
                                             //     blurRadius: 6.0,
                                             //     color: Colors.grey,
                                             //   )
                                             // ],
                                           ),

                                           width: 0.30.sw,

                                         ),
                                       ),

                                     ],
                                   ),
                                 ),
                               ),
                             ),
                           ),
                            SizedBox(
                              height: 0.02.sh,
                            ),
                            Expanded(
                              flex: 7,
                              child: Padding(
                                padding:  EdgeInsets.only(left: 0.03.sw,top: 0.0.sh,right:0.03.sw,bottom: 0.02.sh  ),
                                child: InkWell(
                                  onTap: ()=>Navigator.pushNamed(context, '/roadSigns'),
                                  child: Container(
                                    color: Colors.white,
                                    child: Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            image: DecorationImage( image: AssetImage('assets/signs.png'),fit: BoxFit.fill),
                                            borderRadius: BorderRadius.circular(20.r),
                                            color: Colors.white,
                                            // boxShadow: [
                                            //   BoxShadow(
                                            //     spreadRadius: 1,
                                            //     offset: Offset(0.0, 1.0), //(x,y)
                                            //     blurRadius: 6.0,
                                            //     color: Colors.grey,
                                            //   )
                                            // ],
                                          ),
                                          width: 0.30.sw,

                                        ),
                                        Spacer(),
                                        InkWell(
                                          onTap:()=>Navigator.pushNamed(context, '/highWayCode'),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(20.r),
                                              color: Colors.white,
                                              image: DecorationImage( image: AssetImage('assets/highway.png'),fit: BoxFit.fill),

                                              // boxShadow: [
                                              //   BoxShadow(
                                              //     spreadRadius: 1,
                                              //     offset: Offset(0.0, 1.0), //(x,y)
                                              //     blurRadius: 6.0,
                                              //     color: Colors.grey,
                                              //   )
                                              // ],
                                            ),

                                            width: 0.30.sw,

                                          ),
                                        ),

                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),


                          ],
                        ),
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
                // top: 0.12.sh,
                // left: 0.14.sw,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 88.0),
                  child: Align(
                    alignment: AlignmentDirectional.topCenter,
                    child: Container(
                      width: 0.65.sw,
                      height: 0.10.sh,
                      child:
                       Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Center(
                            child: Container(
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
                              height: 0.09.sh,
                              width: 0.14.sw,
                             child: Column(
                                children: [
                                  Text('Truck',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blueGrey[300],fontSize: 14.sp),),
                                  Center(child: Image.asset('assets/truck.png',fit: BoxFit.fill,height: 40.h,))
                                ],
                              ),
                            ),
                          ),
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
                            height: 0.09.sh,
                            width: 0.14.sw,
                            child:  Column(
                              children: [
                                Text('Car',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blueGrey[300],fontSize: 14.sp),),
                                Center(child: Image.asset('assets/sedan.png',fit: BoxFit.fill,height: 40.h,))
                              ],
                            ),
                          ),
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
                            height: 0.09.sh,
                            width: 0.14.sw,
                            child: Column(
                              children: [
                                Text('Car',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blueGrey[300],fontSize: 14.sp),),
                                Center(child: Image.asset('assets/motorcycle.png',fit: BoxFit.fill,height: 40.h,))
                              ],
                            ),
                          )
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
