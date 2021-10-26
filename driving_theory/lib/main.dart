import 'package:device_preview/device_preview.dart';
import 'package:driving_theory/Screens/mock_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Screens/road_signs.dart';

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
            enabled: true,
            builder: (context) => MaterialApp(
                  debugShowCheckedModeBanner: false,
                  theme: ThemeData(primaryColor: const Color(0xFF404FFA)),
                  // home: Splash(),
                  routes: {
                    '/': (BuildContext context) => MockTest(),
                  },
                )));
  }
}
