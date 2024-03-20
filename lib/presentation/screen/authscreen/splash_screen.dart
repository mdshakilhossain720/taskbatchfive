import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taskbatchfive/presentation/controller/auth_controller.dart';
import 'package:taskbatchfive/presentation/screen/authscreen/sign_screen.dart';
import 'package:taskbatchfive/presentation/screen/bottomNavbar.dart';
import 'package:taskbatchfive/presentation/utils/assets_path.dart';
import 'package:taskbatchfive/presentation/widgets/backgroundwidget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

      @override
  void initState(){
        super.initState();
        signScreen();


      }
  Future<void>signScreen() async {
        bool logins=await AuthController.logins();

    await Future.delayed(Duration(seconds: 3));
    if(mounted){
      if(logins){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>BottomNavbar()));
      }

    }
    else{
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SignScreen()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackGrounWidget(child:Center(
            child: SvgPicture.asset(AssetsPath.logo,width: 100,),
          ) )

        ],
      ),
    );
  }
}
