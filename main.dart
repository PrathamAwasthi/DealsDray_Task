import 'dart:async';
import 'package:flutter/material.dart';
import 'package:dealsdray/Sign_Up_Screen.dart';
import 'UX.dart';

List<Account> accountList = [];

void main() async{
  runApp(
    MaterialApp(
    home: SplashScreen(),
    debugShowCheckedModeBanner:false,
  ),
);

}


class SplashScreen extends StatefulWidget{
  State<StatefulWidget> createState(){
    return SplashScreenState();
  }
}
class SplashScreenState extends State<SplashScreen>{

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
    });
  }



  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/image/Screenshot_20240925_122240_DealsDray B2B.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

