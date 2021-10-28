import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Screens/allvideo.dart';
import 'Screens/hazard_preception.dart';
import 'Screens/highway_code.dart';
import 'Screens/home.dart';
import 'Screens/introduction.dart';
import 'Screens/list_road_signs.dart';
import 'Screens/mock_test.dart';
import 'Screens/practice.dart';
import 'Screens/progress.dart';
import 'Screens/quiz_question.dart';
import 'Screens/road_signs.dart';
import 'Screens/savevideo.dart';
import 'Screens/theory_test.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        //designSize: Size(428, 926),,
        builder: () => DevicePreview(
            enabled: false,
            builder: (context) => MaterialApp(
                  debugShowCheckedModeBanner: false,
                  theme: ThemeData(primaryColor: const Color(0xFF404FFA)),
                  // home: Splash(),
                  routes: {
                    '/': (BuildContext context) => MyHomePage(
                          title: '',
                        ),
                    '/theoryTest': (BuildContext context) => TheoryTest(),
                    '/practice': (BuildContext context) => Practice(),
                    '/mockTest': (BuildContext context) => MockTest(),
                    '/questionQuiz': (BuildContext context) => Quiz(),
                    '/hazard': (BuildContext context) => HazardPreception(),
                    '/roadSigns': (BuildContext context) => RoadSigns(),
                    '/roadSignlist': (BuildContext context) => ListRoadSigns(),
                    '/highWayCode': (BuildContext context) => Highway(),
                    '/intro': (BuildContext context) => Introduction(),
                    '/savedVedios': (BuildContext context) => SaveVideo(),
                    '/allViedos': (BuildContext context) => AllVideo(),
                    '/progress': (BuildContext context) => Progress()
                  },
                )));
  }
}
