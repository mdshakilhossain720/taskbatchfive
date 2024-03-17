import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:taskbatchfive/presentation/screen/authscreen/signup_screen.dart';
import 'package:taskbatchfive/presentation/widgets/backgroundwidget.dart';

import '../../utils/assets_path.dart';

class SignScreen extends StatelessWidget {
  const SignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackGrounWidget(
              child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Get Stared  With",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(helperText: 'Email'),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(helperText: 'password'),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {},
                        child: Icon(Icons.arrow_circle_right_sharp))),
                SizedBox(
                  height: 25,
                ),
                Center(
                  child: TextButton(
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.grey,
                        textStyle: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      onPressed: () {},
                      child: Text("Forget Password")),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Do Have an account?",
                      style: TextStyle(fontSize: 15),
                    ),
                    TextButton(
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.grey,
                          textStyle: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));

                        },
                        child: Text("SignUp")),
                  ],
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
