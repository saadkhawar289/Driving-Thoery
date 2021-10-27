import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class MyDialog extends StatefulWidget {
  @override
  _MyDialogState createState() =>  _MyDialogState();
}

class _MyDialogState extends State<MyDialog> {

  Color color = Color(0xFFE4E6FF);
  bool isSelected=false;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r)) ,
      title: Center(child: Text('Question Settings',style: TextStyle(fontWeight: FontWeight.bold),)),
      content: Container(
        height: 0.40.sh,
        width: 0.90.sw,
        child: Column(
          children: [
            Row(
              children: [
                Align(
                    alignment: Alignment.topLeft,
                    child: Text('Select Question Category',style: TextStyle(
                        fontWeight: FontWeight.bold
                    )))
              ],
            ),
            Padding(
              padding:  EdgeInsets.only(left: 0,top:0.01.sh,right: 0.0.sw),
              child: Container(
                width: 0.90.sw,
                height: 0.06.sh,
                decoration: BoxDecoration(
                  gradient:  LinearGradient(
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
                      Text('Alternatives',style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                      Icon(Icons.keyboard_arrow_down_outlined,color: Colors.white)
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 0.04.sh,),
            Row(
              children: [
                Align(
                    alignment: Alignment.topLeft,
                    child: Text('Select Number of Questions',style: TextStyle(
                        fontWeight: FontWeight.bold
                    )))
              ],
            ),
            Padding(
              padding:  EdgeInsets.only(left: 0,top:0.01.sh,),
              child: Container(
                width: 0.80.sw,
                height: 0.06.sh,

                child: Padding(
                  padding:  EdgeInsets.only(left: 0.0.sw,right:0.0.sh),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: color,
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        height: 0.10.sh,
                        width: 0.10.sw,

                        child: Center(
                          child: Text('5'),
                        ),
                      ),
                      Container(
                        height: 0.10.sh,
                        width: 0.10.sw,
                        decoration: BoxDecoration(
                          color: color,
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Center(
                          child: Text('10'),
                        ),
                      ), Container(
                        height: 0.10.sh,
                        width: 0.10.sw,
                        decoration: BoxDecoration(
                          color: color,
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Center(
                          child: Text('15'),
                        ),
                      ), Container(
                        height: 0.10.sh,
                        width: 0.10.sw,
                        decoration: BoxDecoration(
                          gradient:  LinearGradient(
                              colors: [
                                const Color(0xFF404FFA),
                                const Color(0xFF9ea6ff),
                              ],
                              begin: const FractionalOffset(0.0, 0.0),
                              end: const FractionalOffset(1.0, 0.0),
                              stops: [0.0, 1.0],
                              tileMode: TileMode.clamp),
                          color: color,
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Center(
                          child: Text('20'),
                        ),
                      ), Container(
                        height: 0.10.sh,
                        width: 0.10.sw,
                        decoration: BoxDecoration(
                          color: color,
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Center(
                          child: Text('25'),
                        ),
                      ), Container(
                        height: 0.10.sh,
                        width: 0.10.sw,
                        decoration: BoxDecoration(
                          color: color,
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Center(
                          child: Text('30'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 0.04.sh,),
            Row(
              children: [
                Align(
                    alignment: Alignment.topLeft,
                    child: Text('Select Quiz time in minutes',style: TextStyle(
                        fontWeight: FontWeight.bold
                    ),))
              ],
            ),
            Padding(
              padding:  EdgeInsets.only(left: 0,top:0.01.sh,),
              child: Container(
                width: 0.80.sw,
                height: 0.06.sh,

                child: Padding(
                  padding:  EdgeInsets.only(left: 0.0.sw,right:0.0.sh),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                      onTap: (){
                setState(() {

                isSelected=isSelected?false:true;

                });
                },
                  child: Container(
                    height: 0.10.sh,
                    width: 0.10.sw,
                    decoration: BoxDecoration(
                      color:isSelected==true?Colors.red:color,

                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Center(
                      child: Text('20'),
                    ),
                  ),
                ),
                      InkWell(
                        onTap: (){
                          setState(() {

                            isSelected=isSelected?false:true;

                          });
                        },
                        child: Container(
                          height: 0.10.sh,
                          width: 0.10.sw,
                          decoration: BoxDecoration(
                            color:isSelected==true?Colors.red:color,

                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Center(
                            child: Text('20'),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          setState(() {

                            isSelected=isSelected?false:true;

                          });
                        },
                        child: Container(
                          height: 0.10.sh,
                          width: 0.10.sw,
                          decoration: BoxDecoration(
                            color:isSelected==true?Colors.red:color,

                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Center(
                            child: Text('20'),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          setState(() {

                            isSelected=isSelected?false:true;

                          });
                        },
                        child: Container(
                          height: 0.10.sh,
                          width: 0.10.sw,
                          decoration: BoxDecoration(
                            color:isSelected==true?Colors.red:color,

                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Center(
                            child: Text('20'),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          setState(() {

                            isSelected=isSelected?false:true;

                          });
                        },
                        child: Container(
                          height: 0.10.sh,
                          width: 0.10.sw,
                          decoration: BoxDecoration(
                            color:isSelected==true?Colors.red:color,

                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Center(
                            child: Text('20'),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          setState(() {

                            isSelected=isSelected?false:true;

                          });
                        },
                        child: Container(
                          height: 0.10.sh,
                          width: 0.10.sw,
                          decoration: BoxDecoration(
                            color:isSelected==true?Colors.red:color,

                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Center(
                            child: Text('20'),
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
              '      Done       ',
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 16.sp),
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}