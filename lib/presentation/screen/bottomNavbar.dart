import 'package:flutter/material.dart';
import 'package:taskbatchfive/presentation/screen/progressscreen.dart';

import 'cancelscreen.dart';
import 'compelete.dart';
import 'new_task.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {

  int currentIndex=0;
  final List<Widget>screen=[
    NewTaskScreen(),
    COmpeletedScreen(),
    CancellScreen(),
    ProgressScreen(),


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: true,
          onTap: (index){
            currentIndex=index;
            if(mounted){
              setState(() {


              });
            }

          },
          items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "New task"),
        BottomNavigationBarItem(icon: Icon(Icons.done), label: "Complete"),
        BottomNavigationBarItem(icon: Icon(Icons.abc), label: "Progress"),
            BottomNavigationBarItem(icon: Icon(Icons.file_copy), label: "Cancell"),
      ]),
    );
  }
}
