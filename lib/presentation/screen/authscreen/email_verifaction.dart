import 'package:flutter/material.dart';
import 'package:taskbatchfive/presentation/screen/authscreen/signup_screen.dart';
import 'package:taskbatchfive/presentation/widgets/backgroundwidget.dart';
class EmailVerifaction extends StatelessWidget {
  const EmailVerifaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackGrounWidget(child:Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Text(
            "Email Verifation",
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
            height: 20,
          ),
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Verify"))),
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
      ), )
    );
  }
}
