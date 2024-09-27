import 'package:flutter/material.dart';

class ProviderState with ChangeNotifier{

  int home = 1;
  int categories = 0;
  int deals = 0;
  int cart = 0;
  int profile = 0;
  int emailphone = 0;
  int textfield = 0;
  int sendbutton = 0;
  int hidebutton = 0;

  void homeButton(){
    home = 1;
    categories = 0;
    deals = 0;
    cart = 0;
    profile = 0;
    notifyListeners();
  }
  void categoriesButton(){
    home = 0;
    categories = 1;
    deals = 0;
    cart = 0;
    profile = 0;
    notifyListeners();
  }
  void dealsButton(){
    home = 0;
    categories = 0;
    deals = 1;
    cart = 0;
    profile = 0;
    notifyListeners();
  }
  void cartButton(){
    home = 0;
    categories = 0;
    deals = 0;
    cart = 1;
    profile = 0;
    notifyListeners();
  }
  void profileButton(){
    home = 0;
    categories = 0;
    deals = 0;
    cart = 0;
    profile = 1;
    notifyListeners();
  }
  void emailphoneButtonState(){
    if(emailphone == 0){
      emailphone = 1;
    }else{
      emailphone = 0;
    }
    notifyListeners();
  }
  void textField(){
    textfield =1;
    notifyListeners();
  }
  void textFieldCloss(){
    textfield =0;
    notifyListeners();
  }
  void sendButton(){
    if(sendbutton == 0){
      sendbutton = 1;
    }else{
      sendbutton = 0;
    }
    notifyListeners();
  }
  void changeState(){
    notifyListeners();
  }
  void hideButton(){
    if(hidebutton == 1){
      hidebutton = 0;
    }else{
      hidebutton = 1;
    }
    notifyListeners();
  }

}