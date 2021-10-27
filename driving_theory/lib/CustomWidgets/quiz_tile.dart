import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class QuizTitle extends StatelessWidget {

  const QuizTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
       EdgeInsets.only(top: 0.01.sh, left: 0.02.sw, right: 0.02.sw, bottom: 0.0.sh),
      child: Container(
        height: 0.07.sh,
        width: 0.90.sw,
        decoration: BoxDecoration(color: Color(0xFFE4E6FF), borderRadius: BorderRadius.circular(12.r)),
        child: Center(
          child: ListTile(
            leading: Radio(groupValue: 1,onChanged: (value){},value: 1,),
            title: Text('MediaQuery.of(context).size.height.toString()',),

          ),
        ),
      ),
    );
  }
}
