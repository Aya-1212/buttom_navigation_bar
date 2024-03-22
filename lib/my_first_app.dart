// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MyFirstApp extends StatefulWidget {
  const MyFirstApp({super.key});

  @override
  State<MyFirstApp> createState() => _MyFirstAppState();
}

class _MyFirstAppState extends State<MyFirstApp> {
  int selectedIndex = 0;
  List<Widget> screens = [HomeView(),FavView(),PersonView()];
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: PreferredSize(
          //
          preferredSize: Size.fromHeight(40),
          child: AppBar(backgroundColor: Colors.amber,
            leading: Icon(Icons.search, color: Colors.white),
            centerTitle: true,
            title: Text(
              'BottomNavigationBar',
              style: TextStyle(color: Colors.white),
            ),
            actions: [
              Icon(
                Icons.menu,
                color: Colors.white,
              )
            ],
          )),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.amber,
          currentIndex: selectedIndex,
          iconSize: 24,
          onTap: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
          showSelectedLabels: false,
          type: BottomNavigationBarType.fixed,
          items:[ BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              label: 'Home',
              activeIcon: Icon(Icons.home_filled)),

              BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                color: Colors.white,
              ),
              label: 'Favorite',),
              
              BottomNavigationBarItem(
              icon: Icon(
                Icons.person_2_outlined,
                color: Colors.white,
              ),
              label: 'person',
              activeIcon: Icon(Icons.person))
              ] ),
    body:screens[selectedIndex] ,
    
    );
  }
}

 class HomeView extends StatelessWidget {
   HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(mainAxisAlignment: MainAxisAlignment.center, 
          children:[
                 Icon(Icons.home,
                  color: Colors.amber) ,
                  Gap(10),
                  Text('HOME VIEW',style: TextStyle(color: Colors.amber) ,),
               ] ),
      ),
    );
  }
}

 class FavView extends StatelessWidget {
   FavView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(mainAxisAlignment: MainAxisAlignment.center,
          children:[
                 Icon(Icons.favorite,
                  color: Colors.amber) ,
                  Gap(10),
                  Text('FAVORITE VIEW',style: TextStyle(color: Colors.amber) ,),
               ] ),
      ),
    );
  }
}

 class PersonView extends StatelessWidget {
   PersonView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row( mainAxisAlignment: MainAxisAlignment.center,
          children:[
                 Icon(Icons.person,
                  color: Colors.amber) ,
                  Gap(10),
                  Text('PERSON VIEW',style: TextStyle(color: Colors.amber) ,),
               ] ),
      ),
    );
  }
}