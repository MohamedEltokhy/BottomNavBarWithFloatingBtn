
import 'package:bottomnavbar/screens/AboutUsScreen.dart';
import 'package:bottomnavbar/screens/HomeScreen.dart';
import 'package:bottomnavbar/screens/NotificationScreen.dart';
import 'package:bottomnavbar/screens/PersonScreen.dart';
import 'package:bottomnavbar/screens/ProductScreen.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {

  int currentIndex = 0;

  final List<Widget> _children =   [
    const HomeScreen(),
    const ProductScreen(),
    const NotificationScreen(),
    const AboutUsScreen(),
    const PersonScreen(),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[currentIndex],

      floatingActionButton:FloatingActionButton(
        onPressed: (){
          setState(() {
            currentIndex = 4;
          });
        },
        child:  Icon(Icons.person ,color : currentIndex == 4 ? Colors.grey : Colors.white,),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: BottomAppBar(
        color:Colors.red,
        shape: const CircularNotchedRectangle(),
        notchMargin: 6,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(icon:  Icon(Icons.menu, color : currentIndex == 0 ? Colors.grey : Colors.white,), onPressed: () {
              setState(() {
                currentIndex = 0;
              });
            },),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: IconButton(icon:  Icon(Icons.search, color:currentIndex == 1 ? Colors.grey : Colors.white,), onPressed: () {
                setState(() {
                  currentIndex = 1;
                });
              },),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: IconButton(icon: Icon(Icons.print, color: currentIndex == 2 ? Colors.grey :Colors.white,), onPressed: () {
                setState(() {
                  currentIndex = 2;
                });
              },),
            ),
            IconButton(icon:  Icon(Icons.people, color: currentIndex == 3 ? Colors.grey : Colors.white,), onPressed: () {
              setState(() {
                currentIndex = 3;
              });
            },),
          ],
        ),
      ),

    );
  }




}
