
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HazardBox extends StatelessWidget {
  const HazardBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      Color lightBlue = Color(0xFF404FFA);
      
      DecorationImage _buildVedioBoxImage(String image) {
        return DecorationImage(fit: BoxFit.fill, image: AssetImage(image));
      }
    return Stack(
        children:[ Padding(
          padding:
          EdgeInsets.only(left: 28.0.w, right: 28.0.w, bottom: 20.h, top: 5.h),
          child: Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                spreadRadius: 1,
                offset: Offset(0.0, 1.0), //(x,y)
                blurRadius: 6.0,
                color: Colors.grey,
              )
            ], color: Colors.white, borderRadius: BorderRadius.circular(20.r)),
            child: Padding(
              padding: const EdgeInsets.all(0.0),
              child: Row(
                children: [
                  Container(
                    height: 0.13.sh,
              width: 0.24.sw,
              decoration: BoxDecoration(
                image: _buildVedioBoxImage('assets/roadPic.jpg'),
               color: Colors.red, borderRadius: BorderRadius.circular(20.r)),
                  ),
                  SizedBox(
                    width: 25.w,
                  ),
                  Text(
                    'MOCK TEST',
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF414253)),
                  ),
                ],
              ),
            ),
          ),
        ),
          Positioned(child: Padding(
            padding:  EdgeInsets.only(top: 0.05.sh,right: 0.04.sw),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Container(
                    height: 30.h,
                  width: 30.w,
                  decoration: BoxDecoration(

                    ),

                  child: Image.asset('assets/LockBTN.png')),
            ),
          )),
          Positioned(child: Padding(
            padding:  EdgeInsets.only(top: 0.11.sh,left: 0.10.sw),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                    height: 0.04.sh,
                  width: 0.32.sw,
                  decoration: BoxDecoration( color:lightBlue.withOpacity(0.58), borderRadius: BorderRadius.circular(15.r)),

                  child: Center(child: Text('Share to Unlock',style: TextStyle(fontSize: 13.sp,color: Colors.white,fontWeight: FontWeight.bold),))),
            ),
          ))
        ]);
  }
}
