import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dealsdray/HomePage.dart';
import 'package:dealsdray/Provider.dart';
import 'package:dealsdray/UX.dart';
import 'package:dealsdray/main.dart';
import 'package:provider/provider.dart';

class CreateAccount extends StatefulWidget{
  String? number;
  BuildContext? cont;
  CreateAccount(this.number, this.cont);
  State<StatefulWidget> createState(){
    return CreateAccountState(number, cont);
  }
}

class CreateAccountState extends State<CreateAccount>{
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController referral = TextEditingController();
  String? number;
  BuildContext? cont;
  CreateAccountState(this.number, this.cont);

  Widget build(BuildContext context){
    var size = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          toolbarHeight: size.size.height*0.08,
        ),
        body: ListView(
          children: [
            Column(
              children: [
                Image.asset("assets/image/1727267094353.png",height: size.size.height*0.25,),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, size.size.height*0.02, size.size.width*0.3, 0),
                  child: Text("Let's Begin!",style: TextStyle(fontSize: size.size.width*0.1,color: Colors.grey.shade800, fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, size.size.height*0.02,0, 0),
                  child: Text("Please enter your credentials to proceed",style: TextStyle(fontSize: size.size.width*0.043,color: Colors.grey.shade500, fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(size.size.width*0.1, size.size.height*0.08,size.size.width*0.1, 0),
                  child: TextField(
                    controller: email,
                    decoration: InputDecoration(
                      hintText: "Your Email",
                      hintStyle: TextStyle(fontSize: size.size.width*0.04,color: Colors.grey.shade500),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(size.size.width*0.1, size.size.height*0.04,size.size.width*0.1, 0),
                  child: ChangeNotifierProvider<ProviderState>(
                    create: (context)=>ProviderState(),
                    child: Consumer<ProviderState>(
                      builder: (context, provider, child){
                        return TextField(
                          controller: password,
                          decoration: InputDecoration(
                            hintText: "Create Password",
                            hintStyle: TextStyle(fontSize: size.size.width*0.04,color: Colors.grey.shade500),
                            suffixIcon: provider.hidebutton == 0 ? IconButton(
                              icon: Icon(Icons.visibility_off, color: Colors.grey.shade500,),
                              onPressed: (){provider.hideButton();},
                            ) : IconButton(
                              icon: Icon(Icons.visibility, color: Colors.grey.shade500,),
                              onPressed: (){provider.hideButton();},
                            ),
                          ),
                          obscureText: provider.hidebutton == 0 ? true : false,
                          obscuringCharacter: "*",
                        );
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(size.size.width*0.1, size.size.height*0.04,size.size.width*0.1, 0),
                  child: TextField(
                    controller: referral,
                    decoration: InputDecoration(
                      hintText: "Referral Code (Optional)",
                      hintStyle: TextStyle(fontSize: size.size.width*0.04,color: Colors.grey.shade500),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
        floatingActionButton: Builder(
          builder: (context){
            return FloatingActionButton(
              child: Icon(Icons.arrow_forward_outlined,color: Colors.white,),
              onPressed: (){
                String em = email.text.trim().toString();
                String ps = password.text.trim().toString();
                String? rf = referral.text.trim().toString();
                if(em == "" || ps == ""){
                  final message = SnackBar(
                    content: Text("Please Enter Email and Password"),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(message);
                  return;
                }
                Account ob = Account(email: em, password: ps, phoneNo: number, refCode: rf);
                accountList.add(ob);
                Navigator.popUntil(context, (route)=>route.isFirst);
                Navigator.popUntil(cont!, (route)=>route.isFirst);
                Navigator.pushReplacement(cont!, MaterialPageRoute(builder: (context)=>HomeScreen(ob)));
              },
              backgroundColor: Colors.red,
            );
          },
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}