import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prac_ui1/categoryDetail.dart';
import 'package:prac_ui1/homePage.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});


  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _currentIndex = 0;
  final List<Widget> _childrens = [HomePage() ];
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      
      home:  Scaffold(
        body: _childrens[0],
        bottomNavigationBar: SalomonBottomBar(
          // margin: EdgeInsets.fromLTRB(0, 0, 0,40),
          currentIndex: _currentIndex,
          onTap: (i) => setState(() => _currentIndex = i),
          items: [
            /// Home
            SalomonBottomBarItem(
              icon: Icon(Icons.home),
              title: Text("Home"),
              selectedColor: Colors.purple,
            ),

            SalomonBottomBarItem(
              icon: Icon(Icons.category),
              title: Text("Category"),
              selectedColor: Colors.purple,
            ),

            /// Likes
            SalomonBottomBarItem(
              icon: Icon(Icons.favorite_border),
              title: Text("Likes"),
              selectedColor: Colors.pink,
            ),

            SalomonBottomBarItem(
              icon: Icon(Icons.shopping_bag_rounded),
              title: Text("Cart"),
              selectedColor: Colors.pink,
            ),

            /// Search


            /// Profile
            SalomonBottomBarItem(
              icon: Icon(Icons.person),
              title: Text("Profile"),
              selectedColor: Colors.teal,
            ),
          ],
        ),
      ),



      
    );
  }
}


