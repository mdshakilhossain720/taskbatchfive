
import 'package:flutter/material.dart';
import 'package:taskbatchfive/presentation/widgets/backgroundwidget.dart';

import 'bottomNavbar.dart';
class AddNewTask extends StatelessWidget {
  const AddNewTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackGrounWidget(child: Column(children: [
        SizedBox(height: 48,),
        Text("Add To New Task",style: Theme.of(context).textTheme.titleLarge,),
        TextFormField(
          decoration: InputDecoration(
            helperText: 'Email',
          ),
        ),
        SizedBox(height: 8,),
        TextFormField(
          maxLines: 6,
          decoration: InputDecoration(
            helperText: "asss",
          ),
        ),
        SizedBox(height: 50,),
        SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>BottomNavbar()), (route) => false);
                },
                child: Icon(Icons.arrow_circle_right_sharp))),

      ],)),
    );
  }
}
