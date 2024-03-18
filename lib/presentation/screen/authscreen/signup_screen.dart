import 'package:flutter/material.dart';
import 'package:taskbatchfive/data/Newtwork_services/network_caller.dart';
import 'package:taskbatchfive/presentation/utils/urls.dart';
import 'package:taskbatchfive/presentation/widgets/backgroundwidget.dart';

import '../../../data/Newtwork_services/response_object.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController emailcon=TextEditingController();
  final TextEditingController namecon=TextEditingController();
  final TextEditingController lastcon=TextEditingController();
  final TextEditingController phonecon=TextEditingController();
  final TextEditingController passcon=TextEditingController();

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
                controller: emailcon,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(helperText: 'Email'),
              ),
              SizedBox(
                height: 10,
              ),TextFormField(
                controller: namecon,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(helperText: 'Frist Name'),
              ),
              SizedBox(
                height: 10,
              ),TextFormField(
                controller: lastcon,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(helperText: 'Last Name'),
              ),
              SizedBox(
                height: 10,
              ),TextFormField(
                controller: phonecon,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(helperText: 'Moblile'),
              ),

              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: passcon,
                obscureText: true,
                decoration: InputDecoration(helperText: 'password'),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () async {

                        Map<String,dynamic>params={
                          "email":emailcon.text.toString(),
                          "firstName":namecon.text.toString(),
                          "lastName":lastcon.text.toString(),
                          "mobile":phonecon.text.toString(),
                          "password":passcon.text.toString(),
                        };
                     final ResponseObject response= await NetworkCaller.postRequest(Urls.regestion, params);
                     if(response.issuccess){
                       if(mounted){
                         ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Login Success")));
                       }


                     }else{
                       if(mounted){
                         ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Login fail")));
                       }


                     }
                      },
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
