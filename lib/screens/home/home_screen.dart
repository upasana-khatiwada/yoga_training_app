import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:yoga_training_app/constants/constants.dart';
import 'package:yoga_training_app/screens/home/components/courses.dart';
import 'package:yoga_training_app/screens/home/components/custom_app_bar.dart';
import 'package:yoga_training_app/screens/home/components/diff_styles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   int selectedIconIndex = 2;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      extendBody: true,
      backgroundColor: white,
      body: const Padding(
        padding: EdgeInsets.only(top: appPadding * 2),
        child: Column(
          children: [
            CustomAppBar(),
            DiffStyles(),
            ListCourses(),
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        index:selectedIconIndex,
        buttonBackgroundColor: primary,
        height: 60.0,
        color: white,
        onTap: (index){
          setState(() {
            selectedIconIndex =index;
          });
        },
        animationDuration: const Duration(milliseconds: 200,
        ),
         items: <Widget>[
          Icon(Icons.play_arrow_outlined, size: 30,color: selectedIconIndex == 0 ? white : black,),
          Icon(Icons.search, size: 30,color: selectedIconIndex == 1 ? white : black,),
          Icon(Icons.home_outlined, size: 30,color: selectedIconIndex == 2 ? white : black,),
          Icon(Icons.favorite_border_outlined, size: 30,color: selectedIconIndex == 3 ? white : black,),
          Icon(Icons.person_outline, size: 30,color: selectedIconIndex == 4 ? white : black,),
        ],
        ),
        
    );
  }
}
