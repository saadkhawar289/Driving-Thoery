import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class MockTestTitle extends StatelessWidget {
  const MockTestTitle({Key? key}) : super(key: key);

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
        child: Center(
          child: ListTile(
            leading: Image.asset('assets/questionsIcon.png'),
            title: Text("All Questions"),
            trailing: Text("Change",style: TextStyle(decoration: TextDecoration.underline,color:Colors.blue),),
          ),
        ),
      ),
    );
  }
}
