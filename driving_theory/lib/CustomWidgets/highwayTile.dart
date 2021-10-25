import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HighwayTile extends StatelessWidget {
  final int index;
  HighwayTile(this.index);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 5, left: 8.0, right: 8.0, bottom: 8.0),
      child: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            spreadRadius: 1,
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: 3.0,
            color: Colors.grey,
          )
        ], color: Colors.white, borderRadius: BorderRadius.circular(12.r)),
        child: ListTile(
          leading: Container(
              height: 30,
              width: 30,
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
              child: Center(child: Text(index.toString()))),
          title: Text("Introduction"),
          trailing: Container(
              height: 30,
              width: 30,
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
              child: Center(
                  child: Image.asset(
                "assets/LockBTN.png",
                height: 25.h,
                width: 35.w,
              ))),
        ),
      ),
    );
  }
}
