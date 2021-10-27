import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyDialog extends StatefulWidget {
  @override
  _MyDialogState createState() => _MyDialogState();
}

class _MyDialogState extends State<MyDialog> {
  Color color = Color(0xFFE4E6FF);
  bool isSelected = false;
  bool isSelected1 = false;
  bool isSelected2 = false;
  bool isSelected3 = false;
  bool isSelected4 = false;
  bool isSelected5 = false;
  bool isSelected6 = false;
  bool isSelected7 = false;
  bool isSelected8 = false;
  bool isSelected9 = false;
  bool isSelected10 = false;
  bool isSelected11 = false;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r)),
      title: Center(
          child: Text(
        'Question Settings',
        style: TextStyle(fontWeight: FontWeight.bold),
      )),
      content: Container(
        height: 0.40.sh,
        width: 0.90.sw,
        child: Column(
          children: [
            Row(
              children: [
                Align(
                    alignment: Alignment.topLeft,
                    child: Text('Select Question Category',
                        style: TextStyle(fontWeight: FontWeight.bold)))
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 0, top: 0.01.sh, right: 0.0.sw),
              child: Container(
                width: 0.90.sw,
                height: 0.06.sh,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        const Color(0xFF404FFA),
                        const Color(0xFF9ea6ff),
                      ],
                      begin: const FractionalOffset(0.0, 0.0),
                      end: const FractionalOffset(1.0, 0.0),
                      stops: [0.0, 1.0],
                      tileMode: TileMode.clamp),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 2.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Alternatives',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                      Icon(Icons.keyboard_arrow_down_outlined,
                          color: Colors.white)
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 0.04.sh,
            ),
            Row(
              children: [
                Align(
                    alignment: Alignment.topLeft,
                    child: Text('Select Number of Questions',
                        style: TextStyle(fontWeight: FontWeight.bold)))
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 0,
                top: 0.01.sh,
              ),
              child: Container(
                width: 0.80.sw,
                height: 0.06.sh,
                child: Padding(
                  padding: EdgeInsets.only(left: 0.0.sw, right: 0.0.sh),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            isSelected6 = isSelected6 ? false : true;
                            isSelected7 = false;
                            isSelected8 = false;
                            isSelected9 = false;
                            isSelected10 = false;
                            isSelected11 = false;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color:
                                isSelected6 == true ? Colors.lightBlue : color,
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          height: 0.10.sh,
                          width: 0.10.sw,
                          child: Center(
                            child: Text('5'),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            isSelected7 = isSelected7 ? false : true;
                            isSelected6 = false;
                            isSelected8 = false;
                            isSelected9 = false;
                            isSelected10 = false;
                            isSelected11 = false;
                          });
                        },
                        child: Container(
                          height: 0.10.sh,
                          width: 0.10.sw,
                          decoration: BoxDecoration(
                            color:
                                isSelected7 == true ? Colors.lightBlue : color,
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Center(
                            child: Text('10'),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            isSelected8 = isSelected8 ? false : true;
                            isSelected6 = false;
                            isSelected7 = false;
                            isSelected9 = false;
                            isSelected10 = false;
                            isSelected11 = false;
                          });
                        },
                        child: Container(
                          height: 0.10.sh,
                          width: 0.10.sw,
                          decoration: BoxDecoration(
                            color:
                                isSelected8 == true ? Colors.lightBlue : color,
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Center(
                            child: Text('15'),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            isSelected9 = isSelected9 ? false : true;
                            isSelected7 = false;
                            isSelected8 = false;
                            isSelected6 = false;
                            isSelected10 = false;
                            isSelected11 = false;
                          });
                        },
                        child: Container(
                          height: 0.10.sh,
                          width: 0.10.sw,
                          decoration: BoxDecoration(
                            color:
                                isSelected9 == true ? Colors.lightBlue : color,
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Center(
                            child: Text('20'),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            isSelected10 = isSelected10 ? false : true;
                            isSelected7 = false;
                            isSelected8 = false;
                            isSelected9 = false;
                            isSelected6 = false;
                            isSelected11 = false;
                          });
                        },
                        child: Container(
                          height: 0.10.sh,
                          width: 0.10.sw,
                          decoration: BoxDecoration(
                            color:
                                isSelected10 == true ? Colors.lightBlue : color,
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Center(
                            child: Text('25'),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            isSelected11 = isSelected11 ? false : true;
                            isSelected7 = false;
                            isSelected8 = false;
                            isSelected9 = false;
                            isSelected10 = false;
                            isSelected6 = false;
                          });
                        },
                        child: Container(
                          height: 0.10.sh,
                          width: 0.10.sw,
                          decoration: BoxDecoration(
                            color:
                                isSelected11 == true ? Colors.lightBlue : color,
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Center(
                            child: Text('30'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 0.04.sh,
            ),
            Row(
              children: [
                Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Select Quiz time in minutes',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ))
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 0,
                top: 0.01.sh,
              ),
              child: Container(
                width: 0.80.sw,
                height: 0.06.sh,
                child: Padding(
                  padding: EdgeInsets.only(left: 0.0.sw, right: 0.0.sh),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            isSelected = isSelected ? false : true;
                            isSelected1 = false;
                            isSelected2 = false;
                            isSelected3 = false;
                            isSelected4 = false;
                            isSelected5 = false;
                          });
                        },
                        child: Container(
                          height: 0.10.sh,
                          width: 0.10.sw,
                          decoration: BoxDecoration(
                            color:
                                isSelected == true ? Colors.lightBlue : color,
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Center(
                            child: Text('3'),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            isSelected1 = isSelected1 ? false : true;
                            isSelected = false;
                            isSelected2 = false;
                            isSelected3 = false;
                            isSelected4 = false;
                            isSelected5 = false;
                          });
                        },
                        child: Container(
                          height: 0.10.sh,
                          width: 0.10.sw,
                          decoration: BoxDecoration(
                            color:
                                isSelected1 == true ? Colors.lightBlue : color,
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Center(
                            child: Text('6'),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            isSelected2 = isSelected2 ? false : true;
                            isSelected = false;
                            isSelected1 = false;
                            isSelected3 = false;
                            isSelected4 = false;
                            isSelected5 = false;
                          });
                        },
                        child: Container(
                          height: 0.10.sh,
                          width: 0.10.sw,
                          decoration: BoxDecoration(
                            color:
                                isSelected2 == true ? Colors.lightBlue : color,
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Center(
                            child: Text('9'),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            isSelected3 = isSelected ? false : true;
                            isSelected = false;
                            isSelected1 = false;
                            isSelected2 = false;
                            isSelected4 = false;
                            isSelected5 = false;
                          });
                        },
                        child: Container(
                          height: 0.10.sh,
                          width: 0.10.sw,
                          decoration: BoxDecoration(
                            color:
                                isSelected3 == true ? Colors.lightBlue : color,
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Center(
                            child: Text('12'),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            isSelected4 = isSelected ? false : true;
                            isSelected = false;
                            isSelected1 = false;
                            isSelected2 = false;
                            isSelected3 = false;
                            isSelected5 = false;
                          });
                        },
                        child: Container(
                          height: 0.10.sh,
                          width: 0.10.sw,
                          decoration: BoxDecoration(
                            color:
                                isSelected4 == true ? Colors.lightBlue : color,
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Center(
                            child: Text('15'),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            isSelected5 = isSelected ? false : true;
                            isSelected = false;
                            isSelected1 = false;
                            isSelected3 = false;
                            isSelected2 = false;
                            isSelected4 = false;
                          });
                        },
                        child: Container(
                          height: 0.10.sh,
                          width: 0.10.sw,
                          decoration: BoxDecoration(
                            color: isSelected5 == true ? Colors.blue : color,
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Center(
                            child: Text('18'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      actions: [
        Align(
          alignment: Alignment.bottomCenter,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Color(0xFF404FFA) // This is what you need!
                ),
            child: Text(
              'Done',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
