import 'dart:async';
import 'package:flutter/material.dart';
import 'package:dealsdray/CreateAccount.dart';
import 'package:dealsdray/HomePage.dart';
import 'package:dealsdray/Provider.dart';
import 'package:dealsdray/main.dart';
import 'package:provider/provider.dart';

class OTPScreen extends StatefulWidget{

  String? number;
  BuildContext? cont;
  OTPScreen(this.number, this.cont);

  @override
  State<StatefulWidget> createState(){
    return OTPScreenState(number, cont);
  }
}

class OTPScreenState extends State<OTPScreen>{

  String? number;
  TextEditingController no1 = TextEditingController();
  TextEditingController no2 = TextEditingController();
  TextEditingController no3 = TextEditingController();
  TextEditingController no4 = TextEditingController();
  ProviderState? timeProvider;
  int seconds = 60;
  int minutes = 1;
  BuildContext? cont;
  OTPScreenState(this.number, this.cont);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer.periodic(Duration(seconds: 1), (Timer time){
      seconds--;
      if(seconds == 0){
        if(minutes == 0){
          time.cancel();
          Navigator.pop(context);
        }
        minutes--;
        seconds = 60;
      }
      timeProvider!.changeState();
    });
  }

  @override
  Widget build(BuildContext context){
    var size = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon:Icon(Icons.arrow_back_ios),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
          toolbarHeight: size.size.height*0.08,
          backgroundColor: Colors.white,
        ),
        body: ListView(
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0,0,size.size.width*0.5,0),
                  child: Image.asset("assets/image/1727320478365.png"),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0,0,size.size.width*0.1,0),
                  child: Text("OTP Verification",style: TextStyle(fontSize: size.size.width*0.092,fontWeight: FontWeight.bold,color: Colors.grey.shade800),),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0,0,0,0),
                  child: Text("We have sent a unique OTP number \n to your mobile +91-$number",style: TextStyle(fontSize: size.size.width*0.047,color: Colors.grey.shade800),),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0,size.size.height*0.05,0,0),
                  child: Row(
                    children: [
                      Spacer(flex: 5,),
                      Container(
                        height: size.size.height*0.05,
                        width: size.size.width*0.1,
                        child: TextField(
                          controller: no1,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(size.size.width*0.025)),
                              borderSide: BorderSide(
                                  color: Colors.grey.shade500
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(size.size.width*0.025)),
                              borderSide: BorderSide(
                                  color: Colors.grey.shade500
                              ),
                            ),
                          ),
                          onChanged: (text){
                            if(1 < text.length ){
                              String a = text.trim().toString();
                              no1.clear();
                              no1.text = a[1];
                            }
                            String n1 = no1.text.trim().toString();
                            String n2 = no2.text.trim().toString();
                            String n3 = no3.text.trim().toString();
                            String n4 = no4.text.trim().toString();
                            if(n1 == "9" && n2 == "8" && n3 == "7" && n4 == "9"){
                              for(int i=0;i<accountList.length;i++){
                                if(accountList[i].phoneNo==number){
                                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen(accountList[i])));
                                  return;
                                }
                              }
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>CreateAccount(number!,cont)));
                            }
                          },
                        ),
                      ),
                      Spacer(),
                      Container(
                        height: size.size.height*0.05,
                        width: size.size.width*0.1,
                        child: TextField(
                          controller: no2,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(size.size.width*0.025)),
                              borderSide: BorderSide(
                                  color: Colors.grey.shade500
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(size.size.width*0.025)),
                              borderSide: BorderSide(
                                  color: Colors.grey.shade500
                              ),
                            ),
                          ),
                          onChanged: (text){
                            if(1 < text.length ){
                              String a = text.trim().toString();
                              no2.clear();
                              no2.text = a[1];
                            }
                            String n1 = no1.text.trim().toString();
                            String n2 = no2.text.trim().toString();
                            String n3 = no3.text.trim().toString();
                            String n4 = no4.text.trim().toString();
                            if(n1 == "9" && n2 == "8" && n3 == "7" && n4 == "9"){
                              for(int i=0;i<accountList.length;i++){
                                if(accountList[i].phoneNo==number){
                                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen(accountList[i])));
                                  return;
                                }
                              }
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>CreateAccount(number!, cont)));
                            }
                          },
                        ),
                      ),
                      Spacer(),
                      Container(
                        height: size.size.height*0.05,
                        width: size.size.width*0.1,
                        child: TextField(
                          controller: no3,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(size.size.width*0.025)),
                              borderSide: BorderSide(
                                  color: Colors.grey.shade500
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(size.size.width*0.025)),
                              borderSide: BorderSide(
                                  color: Colors.grey.shade500
                              ),
                            ),
                          ),
                          onChanged: (text){
                            if(1 < text.length ){
                              String a = text.trim().toString();
                              no3.clear();
                              no3.text = a[1];
                            }
                            String n1 = no1.text.trim().toString();
                            String n2 = no2.text.trim().toString();
                            String n3 = no3.text.trim().toString();
                            String n4 = no4.text.trim().toString();
                            if(n1 == "9" && n2 == "8" && n3 == "7" && n4 == "9"){
                              for(int i=0;i<accountList.length;i++){
                                if(accountList[i].phoneNo==number){
                                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen(accountList[i])));
                                  return;
                                }
                              }
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>CreateAccount(number!, cont)));
                            }
                          },
                        ),
                      ),
                      Spacer(),
                      Container(
                        height: size.size.height*0.05,
                        width: size.size.width*0.1,
                        child: TextField(
                          controller: no4,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(size.size.width*0.025)),
                              borderSide: BorderSide(
                                  color: Colors.grey.shade500
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(size.size.width*0.025)),
                              borderSide: BorderSide(
                                  color: Colors.grey.shade500
                              ),
                            ),
                          ),
                          onChanged: (text){
                            if(1 < text.length ){
                              String a = text.trim().toString();
                              no4.clear();
                              no4.text = a[1];
                            }
                            String n1 = no1.text.trim().toString();
                            String n2 = no2.text.trim().toString();
                            String n3 = no3.text.trim().toString();
                            String n4 = no4.text.trim().toString();
                            if(n1 == "9" && n2 == "8" && n3 == "7" && n4 == "9"){
                              for(int i=0;i<accountList.length;i++){
                                if(accountList[i].phoneNo==number){
                                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen(accountList[i])));
                                  return;
                                }
                              }
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>CreateAccount(number!, cont)));
                            }
                          },
                        ),
                      ),
                      Spacer(flex: 5,)
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0,size.size.height*0.015,0,0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Spacer(flex: 5,),
                      ChangeNotifierProvider<ProviderState>(
                      create: (context)=>ProviderState(),
                      child: Consumer<ProviderState>(
                      builder: (context, provider, child){
                        timeProvider = provider;
                        return Text("0$minutes:$seconds",style: TextStyle(fontSize: size.size.width*0.045),);
                      },
                    ),
                  ),
                      Spacer(flex: 4,),
                      Text("SEND AGAIN",style: TextStyle(fontSize: size.size.width*0.04,color: Colors.grey.shade500,fontWeight: FontWeight.bold),),
                      Spacer(flex: 5,),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        backgroundColor: Colors.white,
        bottomNavigationBar: Container(
          height: size.size.height*0.04,
          child: Center(child: Text("Please Enter This OTP 9879"))),
        ),
    );
  }
}