import 'package:flutter/material.dart';
import 'package:dealsdray/OTPScreen.dart';
import 'package:dealsdray/Provider.dart';
import 'package:provider/provider.dart';

class SignUpScreen extends StatefulWidget{

  State<StatefulWidget> createState(){
    return SignUpScreenState();
  }
}

class SignUpScreenState extends State<SignUpScreen>{
  TextEditingController phoneNumber = TextEditingController();

  Widget build(BuildContext cont){
    var size = MediaQuery.of(cont);
    ProviderState? sendButtonProvider;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: (){},
          ),
          backgroundColor: Colors.white,
        ),
        body: ListView(children: [
          Column(
            children: [
              Image.asset("assets/image/1727267094353.png",height: size.size.height*0.25,),
              Padding(
                padding: EdgeInsets.fromLTRB(0, size.size.height*0.05, 0, 0),
                child: ChangeNotifierProvider<ProviderState>(
                  create: (context)=>ProviderState(),
                  child: Consumer<ProviderState>(
                    builder: (context, provider, child){
                      return InkWell(
                        child: Container(
                            height: size.size.height*0.07,
                            width: size.size.width*0.5,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade400,
                              borderRadius: BorderRadius.all(Radius.circular(size.size.width*1)),
                            ),
                            child: Row(
                              children: [
                                provider.emailphone == 1 ? Text("      Phone",style: TextStyle(color: Colors.grey.shade800,fontWeight: FontWeight.bold,fontSize: size.size.width*0.044),) : Text(""),
                                Align(
                                  child: SizedBox(
                                    height: size.size.height*0.07,
                                    width: size.size.width*0.3,
                                    child: Card(
                                      color: Colors.red,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(size.size.width*1)),
                                      ),
                                      child: Center(
                                          child: provider.emailphone == 0 ? Text("Phone",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: size.size.width*0.044),) : Text("Email",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: size.size.width*0.044),)),
                                    ),
                                  ),
                                  alignment: provider.emailphone == 0 ? Alignment.centerLeft : Alignment.centerRight,
                                ),
                                provider.emailphone == 0 ? Text("Email       ",style: TextStyle(color: Colors.grey.shade800,fontWeight: FontWeight.bold,fontSize: size.size.width*0.044),) : Text(""),
                              ],
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                            )
                        ),
                        onTap: (){
                          provider.emailphoneButtonState();
                        },
                        splashColor: Color(0xff),
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, size.size.height*0.05, size.size.width*0.1, 0),
                child: Text("Glad to see you!",style: TextStyle(fontSize: size.size.width*0.1,color: Colors.grey.shade700, fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, size.size.height*0.025, size.size.width*0.02, 0),
                child: Text("Please provide your phone number",style: TextStyle(fontSize: size.size.width*0.05,color: Colors.grey.shade600,),),
              ),
              Padding(
                padding: EdgeInsets.all(size.size.width*0.1),
                child: ChangeNotifierProvider<ProviderState>(
                  create: (context)=>ProviderState(),
                  child: Consumer<ProviderState>(
                    builder: (context, provide, child){
                      return TextField(
                        controller: phoneNumber,
                        decoration: InputDecoration(
                          hintText: "Phone",
                          hintStyle: TextStyle(color: Colors.grey.shade500),
                          prefix: provide.textfield == 1 ? Text("+91 ") : Text(""),
                        ),
                        onChanged: (text){
                          if(text.toString() == ""){
                            provide.textFieldCloss();
                            sendButtonProvider!.sendButton();
                            return;
                          }
                          if(text.toString().length == 1){
                            if(sendButtonProvider!.sendbutton == 0){
                              sendButtonProvider!.sendButton();
                            }
                          }
                          provide.textField();
                        },
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: ChangeNotifierProvider<ProviderState>(
                  create: (context)=>ProviderState(),
                  child: Consumer<ProviderState>(
                    builder: (context, provide, child){
                      sendButtonProvider = provide;
                      return SizedBox(
                        height: size.size.height*0.06,
                        width: size.size.width*0.8,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.red.shade100,
                            borderRadius: BorderRadius.all(Radius.circular(size.size.width * 0.025)),
                          ),
                          child: Builder(
                            builder: (context){
                              return ElevatedButton(
                                child: Text("SEND CODE",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                                onPressed: provide.sendbutton == 0 ? null :(){
                                  String no = phoneNumber.text.trim().toString();
                                  if(no.length != 10){
                                    final message = SnackBar(
                                      content: Text("Please Enter 10 Digit Number"),
                                    );
                                    ScaffoldMessenger.of(context).showSnackBar(message);
                                    return;
                                  }
                                  Navigator.push(cont, MaterialPageRoute(builder: (context)=>OTPScreen(no, cont)));
                                },
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(size.size.width*0.025)),
                                  ),
                                  backgroundColor: Colors.redAccent,
                                ),
                              );
                            },
                          )
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ],),
        backgroundColor: Colors.white,
      ),
    );
  }
}