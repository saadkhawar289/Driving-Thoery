import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  bool isSelectedA = false;
  bool isSelectedB = false;
  bool isSelectedC = false;
  bool isSelectedD = false;
  bool isSelectedF = false;

  @override
  Widget build(BuildContext context) {
    return Container(
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
                Icons.pregnant_woman,
                size: 30,
                color: isSelectedF ? Colors.blue[900] : Colors.white,
              ),
            ),
          )
        ],
      ),
      height: 45.h,
    );
  }
}
