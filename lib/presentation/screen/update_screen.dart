import 'package:flutter/material.dart';

import '../widgets/backgroundwidget.dart';
class UpdateScreen extends StatelessWidget {
  const UpdateScreen({super.key});

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
          decoration: InputDecoration(
            helperText: 'First name',
          ),
        ),
        SizedBox(height: 8,),
        TextFormField(
          decoration: InputDecoration(
            helperText: 'Last Name',
          ),
        ),
        SizedBox(height: 8,),
        TextFormField(
          decoration: InputDecoration(
            helperText: 'Phone',
          ),
        ),
        SizedBox(height: 8,),
        TextFormField(

          decoration: InputDecoration(
            helperText: "Password",
          ),
        ),
        SizedBox(height: 50,),
        SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {
                  //Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>BottomNavbar()), (route) => false);
                },
                child: Icon(Icons.arrow_circle_right_sharp))),

      ],)),
    );
  }
}
