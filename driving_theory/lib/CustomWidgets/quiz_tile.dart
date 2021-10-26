import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class QuizTitle extends StatelessWidget {

  const QuizTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
      const EdgeInsets.only(top: 5, left: 8.0, right: 8.0, bottom: 8.0),
      child: Container(
        decoration: BoxDecoration(color: Color(0xFFE4E6FF), borderRadius: BorderRadius.circular(12.r)),
        child: Center(
          child: ListTile(
            leading: Radio(groupValue: 1,onChanged: (value){},value: 1,),
            title: Text('MediaQuery.of(context).size.width.toString()',),

          ),
        ),
      ),
    );
  }
}
