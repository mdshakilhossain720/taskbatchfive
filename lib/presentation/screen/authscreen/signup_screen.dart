import 'package:flutter/material.dart';
import 'package:taskbatchfive/presentation/widgets/backgroundwidget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackGrounWidget(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Text(
                "Join With Us",
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
              ),TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(helperText: 'Frist Name'),
              ),
              SizedBox(
                height: 10,
              ),TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(helperText: 'Last Name'),
              ),
              SizedBox(
                height: 10,
              ),TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(helperText: 'Moblile'),
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpScreen()));
                      },
                      child: Text("SignUp")),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
