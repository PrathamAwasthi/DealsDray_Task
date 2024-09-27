import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dealsdray/Sign_Up_Screen.dart';
import 'package:dealsdray/UX.dart';
import 'package:provider/provider.dart';
import 'Provider.dart';

class HomeScreen extends StatefulWidget{
  Account? ob;
  HomeScreen(this.ob);

  State<StatefulWidget> createState(){
    return HomeScreenState(ob);
  }
}

class HomeScreenState extends State<HomeScreen>{

  Account? ob;
  HomeScreenState(this.ob);

  Widget build(BuildContext context){
    var size = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: TextField(
            decoration: InputDecoration(
              filled: true,
              prefixIcon: Padding(
                padding: EdgeInsets.fromLTRB( size.size.width*0.025, size.size.height*0.0015, 0, size.size.height*0.0015),
                child: Image.asset("assets/image/1727250813344.png",height: size.size.height*0.04,),
              ),
              suffixIcon: Icon(Icons.search_outlined,size: size.size.width*0.074,color: Colors.grey.shade700,),
              fillColor: Colors.grey.shade300,
              hintText: "  Search here",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide.none,
              ),
            ),
          ),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.notifications_none,size: size.size.width*0.07,)),
          ],
          backgroundColor: Colors.white,
          toolbarHeight: size.size.height*0.1,
          shadowColor: Colors.black87,
          elevation: 4,
        ),
        body: ListView(
          children: [
          Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: size.size.width*0.9,
                        child: ClipRRect(
                          child: Image.asset("assets/image/Screenshot 2024-09-26 174638.png"),
                          borderRadius: BorderRadius.all(Radius.circular(size.size.width*0.05)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: size.size.width*0.9,
                        child: ClipRRect(
                          child: Image.asset("assets/image/Screenshot 2024-09-26 175201.png"),
                          borderRadius: BorderRadius.all(Radius.circular(size.size.width*0.05)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: size.size.width*0.9,
                        child: ClipRRect(

                          child: Image.asset("assets/image/Screenshot 2024-09-26 175457.png"),
                          borderRadius: BorderRadius.all(Radius.circular(size.size.width*0.05)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0,size.size.height*0.02,0,0),
                child: Container(
                  height: size.size.height*0.2,
                  width: size.size.width*0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(size.size.width*0.04)),
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color(0xff9999ff),
                        Color(0xffb3b3ff)
                      ],
                    ),
                  ),
                  child: Column(
                    children: [
                      Text("KYC Pending", style: TextStyle(color: Colors.white,fontSize: size.size.width*0.07,fontWeight: FontWeight.bold),),
                      Text("You need provide the required", style: TextStyle(color: Colors.white,fontSize: size.size.width*0.045,fontWeight: FontWeight.bold),),
                      Text("documents for your account activation", style: TextStyle(color: Colors.white,fontSize: size.size.width*0.045,fontWeight: FontWeight.bold),),
                      Text("Click Here", style: TextStyle(color: Colors.white,fontSize: size.size.width*0.07,fontWeight: FontWeight.bold),),
                    ],
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0,size.size.height*0.02,0,0),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: size.size.height*0.1,
                          width: size.size.width*0.2,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                Color(0xff9999ff),
                                Color(0xffb3b3ff)
                              ],
                            ),
                          ),
                          child: Icon(Icons.phone_android,color: Colors.white,size: size.size.width*0.1,),
                          alignment: Alignment.center,
                        ),
                        Text("Mobile")
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: size.size.height*0.1,
                          width: size.size.width*0.2,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color(0xff00b359),
                                Color(0xff4dffa6)
                              ],
                            ),
                          ),
                          child: Icon(Icons.laptop_mac_outlined,color: Colors.white,size: size.size.width*0.1,),
                          alignment: Alignment.center,
                        ),
                        Text("Laptop")
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: size.size.height*0.1,
                          width: size.size.width*0.2,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                Color(0xffff66a3),
                                Color(0xffff80b3),
                              ],
                            ),
                          ),
                          child: Icon(Icons.camera_alt_rounded,color: Colors.white,size: size.size.width*0.1,),
                          alignment: Alignment.center,
                        ),
                        Text("Camera")
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: size.size.height*0.1,
                          width: size.size.width*0.2,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color(0xffe67300),
                                Color(0xffff9933)
                              ],
                            ),
                          ),
                          child: Icon(Icons.lightbulb,color: Colors.white,size: size.size.width*0.1,),
                          alignment: Alignment.center,
                        ),
                        Text("LED")
                      ],
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0,size.size.height*0.02,0,0),
                child: Container(
                  height: size.size.height*0.5,
                  width: size.size.width*1,
                  color: Colors.lightBlue.shade300,
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          height: size.size.height*0.42,
                          width: size.size.width*0.5,
                          decoration: BoxDecoration(
                            color: Color(0xff80d7ff),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(size.size.width*1),
                              bottomLeft: Radius.circular(size.size.width*1),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          height: size.size.height*0.42,
                          width: size.size.width*0.4,
                          decoration: BoxDecoration(
                            color: Color(0xff99dfff),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(size.size.width*1),
                              bottomLeft: Radius.circular(size.size.width*1),
                            ),
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(size.size.width*0.06),
                            child: Row(
                              children: [
                                Text("EXCLUSIVE FOR YOU",style: TextStyle(fontWeight: FontWeight.bold,fontSize: size.size.width*0.06,color: Colors.white),),
                                Icon(Icons.arrow_forward_sharp, size: size.size.width*0.08,color: Colors.white,)
                              ],
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            ),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(size.size.width*0.04,0,size.size.width*0.04,0),
                                  child: Container(
                                    height: size.size.height*0.38,
                                    width: size.size.width*0.52,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(Radius.circular(size.size.width*0.03))
                                    ),
                                    child:Column(
                                      children: [
                                        Stack(
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(size.size.width*0.35,size.size.height*0.02,0,0),
                                              child: Container(
                                                height: size.size.height*0.022,
                                                width: size.size.width*0.12,
                                                decoration: BoxDecoration(
                                                  color: Colors.green,
                                                  borderRadius: BorderRadius.all(Radius.circular(size.size.width*0.008)),
                                                ),
                                                child: Text("32% off",style: TextStyle(fontSize: size.size.width*0.025,color: Colors.white,fontWeight: FontWeight.bold),),
                                                alignment: Alignment.center,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(size.size.width*0.11,size.size.height*0.015,0,0),
                                              child:    Image.asset("assets/image/1727362910996.png",height: size.size.height*0.2,),
                                            ),
                                          ],
                                        ),
                                        Spacer(),
                                        Padding(
                                          padding: EdgeInsets.fromLTRB(0,0,size.size.width*0.32,0),
                                          child:  Text("49,000 ₹",style: TextStyle(color: Colors.grey.shade600),),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.fromLTRB(0,0,size.size.width*0.2,size.size.height*0.02),
                                          child: Text("Apple iPhone 13",style: TextStyle(color: Colors.grey.shade800),),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0,0,size.size.width*0.04,0),
                                  child: Container(
                                    height: size.size.height*0.38,
                                    width: size.size.width*0.52,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(Radius.circular(size.size.width*0.03))
                                    ),
                                    child:Column(
                                      children: [
                                        Stack(
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(size.size.width*0.35,size.size.height*0.02,0,0),
                                              child: Container(
                                                height: size.size.height*0.022,
                                                width: size.size.width*0.12,
                                                decoration: BoxDecoration(
                                                  color: Colors.green,
                                                  borderRadius: BorderRadius.all(Radius.circular(size.size.width*0.008)),
                                                ),
                                                child: Text("42% off",style: TextStyle(fontSize: size.size.width*0.025,color: Colors.white,fontWeight: FontWeight.bold),),
                                                alignment: Alignment.center,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(size.size.width*0.11,size.size.height*0.015,0,0),
                                              child: Image.asset("assets/image/1727362869752.png",height: size.size.height*0.2,),
                                            ),
                                          ],
                                        ),
                                        Spacer(),
                                        Padding(
                                          padding: EdgeInsets.fromLTRB(0,0,size.size.width*0.32,0),
                                          child:  Text("29,999 ₹",style: TextStyle(color: Colors.grey.shade600),),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.fromLTRB(0,0,size.size.width*0.1,size.size.height*0.02),
                                          child: Text("Samsung Galaxy S23",style: TextStyle(color: Colors.grey.shade800),),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0,0,size.size.width*0.04,0),
                                  child: Container(
                                    height: size.size.height*0.38,
                                    width: size.size.width*0.52,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(Radius.circular(size.size.width*0.03))
                                    ),
                                    child:Column(
                                      children: [
                                        Stack(
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(size.size.width*0.35,size.size.height*0.02,0,0),
                                              child: Container(
                                                height: size.size.height*0.022,
                                                width: size.size.width*0.12,
                                                decoration: BoxDecoration(
                                                  color: Colors.green,
                                                  borderRadius: BorderRadius.all(Radius.circular(size.size.width*0.008)),
                                                ),
                                                child: Text("27% off",style: TextStyle(fontSize: size.size.width*0.025,color: Colors.white,fontWeight: FontWeight.bold),),
                                                alignment: Alignment.center,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(size.size.width*0.11,size.size.height*0.015,0,0),
                                              child:    Image.asset("assets/image/1727362850132.png",height: size.size.height*0.2,),
                                            ),
                                          ],
                                        ),
                                        Spacer(),
                                        Padding(
                                          padding: EdgeInsets.fromLTRB(0,0,size.size.width*0.32,0),
                                          child:  Text("63,999 ₹",style: TextStyle(color: Colors.grey.shade600),),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.fromLTRB(0,0,size.size.width*0.2,size.size.height*0.02),
                                          child: Text("Apple iPhone 15",style: TextStyle(color: Colors.grey.shade800),),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0,0,size.size.width*0.04,0),
                                  child: Container(
                                    height: size.size.height*0.38,
                                    width: size.size.width*0.52,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(Radius.circular(size.size.width*0.03))
                                    ),
                                    child:Column(
                                      children: [
                                        Stack(
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(size.size.width*0.35,size.size.height*0.02,0,0),
                                              child: Container(
                                                height: size.size.height*0.022,
                                                width: size.size.width*0.12,
                                                decoration: BoxDecoration(
                                                  color: Colors.green,
                                                  borderRadius: BorderRadius.all(Radius.circular(size.size.width*0.008)),
                                                ),
                                                child: Text("38% off",style: TextStyle(fontSize: size.size.width*0.025,color: Colors.white,fontWeight: FontWeight.bold),),
                                                alignment: Alignment.center,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(size.size.width*0.1,size.size.height*0.015,0,0),
                                              child:    Image.asset("assets/image/1727362770628.png",height: size.size.height*0.2,),
                                            ),
                                          ],
                                        ),
                                        Spacer(),
                                        Padding(
                                          padding: EdgeInsets.fromLTRB(0,0,size.size.width*0.32,0),
                                          child:  Text("6,499 ₹",style: TextStyle(color: Colors.grey.shade600),),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.fromLTRB(0,0,size.size.width*0.1,size.size.height*0.02),
                                          child: Text("Samsung Galaxy F05",style: TextStyle(color: Colors.grey.shade800),),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: Center(child: CircleAvatar(radius: size.size.width*0.1,)),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Email :- ${ob!.email}",overflow: TextOverflow.ellipsis,),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Phone No. :- ${ob!.phoneNo}",overflow: TextOverflow.ellipsis,),
              ),
              Padding(
                padding: EdgeInsets.all(size.size.width*0.2),
                child: ElevatedButton(
                  child: Text("LogOut", style: TextStyle(color: Colors.grey.shade900,fontWeight: FontWeight.bold),),
                  onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(size.size.width*0.02)),
                    ),
                    backgroundColor: Colors.grey.shade400
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: ChangeNotifierProvider<ProviderState>(
          create: (context)=>ProviderState(),
          child: Consumer<ProviderState>(
            builder: (context, provider, child){
              return Container(
                height: size.size.height*0.1,
                color: Colors.white,
                child: Row(
                  children: [
                    InkWell(
                      child: Column(
                        children: [
                          Icon(Icons.home_outlined, size: size.size.width*0.11,color:  provider.home == 1 ? Colors.red : Colors.grey.shade600,),
                          Text("Home",style: TextStyle(color: provider.home == 1 ? Colors.red : Colors.grey.shade600,),),
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                      ),
                      onTap: (){
                        provider.homeButton();
                      },
                    ),
                    InkWell(
                      child: Column(
                        children: [
                          Icon(Icons.grid_view_outlined, size: size.size.width*0.1,color: provider.categories == 1 ? Colors.red : Colors.grey.shade600,),
                          Text("Categories",style: TextStyle(color:  provider.categories == 1 ? Colors.red : Colors.grey.shade600,),),
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                      ),
                      onTap: (){
                        provider.categoriesButton();
                      },
                    ),
                    InkWell(
                      child: Column(
                        children: [
                          Image.asset(provider.deals == 1 ? "assets/image/1727366315243.png" : "assets/image/1727366848440.png",width: size.size.width*0.13,),
                          Text("Deals",style: TextStyle(color: provider.deals == 1 ? Colors.red : Colors.grey.shade600)),
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                      ),
                      onTap: (){
                        provider.dealsButton();
                      },
                    ),
                    InkWell(
                      child: Column(
                        children: [
                          Icon(Icons.shopping_cart_outlined, size: size.size.width*0.1,color: provider.cart == 1 ? Colors.red : Colors.grey.shade600,),
                          Text("Cart",style: TextStyle(color:  provider.cart == 1 ? Colors.red : Colors.grey.shade600,)),
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                      ),
                      onTap: (){
                        provider.cartButton();
                      },
                    ),
                    InkWell(
                      child: Column(
                        children: [
                          Icon(Icons.person_outline_outlined, size: size.size.width*0.1,color: provider.profile == 1 ? Colors.red : Colors.grey.shade600,),
                          Text("Profile",style: TextStyle(color: provider.profile == 1 ? Colors.red : Colors.grey.shade600,)),
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                      ),
                      onTap: (){
                        provider.profileButton();
                      },
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                ),
              );
            },
          ),
        ),
        backgroundColor: Colors.white,
        floatingActionButton: SizedBox(
          height: size.size.height*0.07,
          width: size.size.width*0.34,
          child: FloatingActionButton(
            onPressed: (){},
            backgroundColor: Colors.red,
            child: Row(
              children: [
                Icon(Icons.chat,color: Colors.white,size: size.size.width*0.07,),
                Text(" Chat",style: TextStyle(color: Colors.white, fontSize: size.size.width*0.05,),)
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(size.size.width*1))
            ),
          ),
        ),
      ),
    );
  }
}