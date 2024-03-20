import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:taskbatchfive/data/login_response.dart';
import 'package:taskbatchfive/presentation/controller/auth_controller.dart';
import 'package:taskbatchfive/presentation/screen/authscreen/signup_screen.dart';
import 'package:taskbatchfive/presentation/widgets/backgroundwidget.dart';

import '../../../data/Newtwork_services/network_caller.dart';
import '../../../data/Newtwork_services/response_object.dart';
import '../../utils/assets_path.dart';
import '../../utils/urls.dart';
import '../bottomNavbar.dart';

class SignScreen extends StatefulWidget {
  const SignScreen({super.key});

  @override
  State<SignScreen> createState() => _SignScreenState();
}

class _SignScreenState extends State<SignScreen> {
  final TextEditingController emailcon = TextEditingController();
  final TextEditingController passcon = TextEditingController();

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
                  controller: emailcon,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(helperText: 'Email'),
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
                          Map<String, dynamic> params = {
                            "email": emailcon.text.toString(),
                            "password": passcon.text.toString(),
                          };
                          final ResponseObject response =
                              await NetworkCaller.postRequest(
                                  Urls.regestion, params);
                          if (response.issuccess) {
                            if (mounted) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text("Login Success")));
                            }
                            LoginResponse loginresponse =
                                LoginResponse.fromJson(response.responseBODY);

                            await AuthController.saveData(loginresponse.data!);
                            await AuthController.savetoken(
                                loginresponse.token!);

                            if (mounted) {
                              Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BottomNavbar()),
                                  (route) => false);
                            }
                          } else {
                            if (mounted) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                      content: Text(response.errorMessage ??
                                          "Login fail")));
                            }
                          }
                        },
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
          ))
        ],
      ),
    );
  }
}
