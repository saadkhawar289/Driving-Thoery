import 'package:driving_theory/CustomWidgets/bottomNavBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:simple_star_rating/simple_star_rating.dart';

class AllVideo extends StatefulWidget {
  const AllVideo({Key? key}) : super(key: key);

  @override
  _TheoryTestState createState() => _TheoryTestState();
}

class _TheoryTestState extends State<AllVideo> {
  DecorationImage _buildServiceBoxImage(String image) {
    return DecorationImage(fit: BoxFit.fill, image: AssetImage(image));
  }
  bool isSelectedA = false;
  bool isSelectedB = false;
  bool isSelectedC = true;
  bool isSelectedD = false;
  bool isSelectedF = false;


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[200],
      child: SafeArea(
        child: Scaffold(
          bottomNavigationBar: Container(
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
                        Navigator.pushNamed(context, '/');

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
                        Navigator.pushNamed(context, '/savedVedios');
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
                        Navigator.pushNamed(context, '/allViedos');

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
                        Navigator.pushNamed(context, '/progress');

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
                      Icons.workspaces_rounded,
                      size: 30,
                      color: isSelectedF ? Colors.blue[900] : Colors.white,
                    ),
                  ),
                )
              ],
            ),
            height: 45.h,
          ),
          body: Container(
            decoration: BoxDecoration(
                image: _buildServiceBoxImage('assets/Wallpaper.png')),
            child: Stack(children: [
              Column(
                //  mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 0.02.sh),
                      width: 0.35.sw,
                      height: 0.08.sh,
                    ),
                  ),
                ],
              ),
              StaggeredGridView.countBuilder(
                crossAxisCount: 3,
                itemCount: 9,
                itemBuilder: (BuildContext context, int index) => new Container(
                  decoration: BoxDecoration(
                      color: Color(0xffE6E6E6),
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: ClipRRect(
                            child: Image.asset(
                              "assets/allvideo.png",
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                      Text("clip"),
                      SimpleStarRating(
                        allowHalfRating: true,
                        starCount: 5,
                        rating: 3,
                        size: 8,
                        onRated: (rate) {},
                        spacing: 10,
                      )
                    ],
                  ),
                ),
                staggeredTileBuilder: (int index) => new StaggeredTile.count(
                    1, index.isEven ? 2 / 1.5 : 2 / 1.5),
                mainAxisSpacing: 15,
                crossAxisSpacing: 15,
                padding: EdgeInsets.only(
                    top: 185.0, left: 20, right: 20, bottom: 20),
              ),
              Positioned(
                // top: 0.12.sh,
                // left: 0.14.sw,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 0.04.sh),
                  child: Align(
                    alignment: AlignmentDirectional.topCenter,
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            boxShadow: [
                              BoxShadow(
                                //spreadRadius: 1,
                                offset: Offset(0.0, 0.0), //(x,y)
                                blurRadius: 6.0,
                                color: Colors.transparent,
                              )
                            ],
                            // color: Colors.white,
                            borderRadius: BorderRadius.circular(90.r)),
                        child: Image.asset(
                          "assets/allvideoicon.png",
                          fit: BoxFit.cover,
                          height: 0.20.sh,
                        )),
                  ),
                ),
              ),
            ]),
          ),
          // This trailing comma makes auto-formatting nicer for build methods.
        ),
      ),
    );
  }
}
