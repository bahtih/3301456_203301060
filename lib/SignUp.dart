import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'User.dart';

class SignUp extends StatefulWidget {
  static List<User> userList = <User>[];
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final formKey = GlobalKey<FormState>();
  late var ekranBilgisi;
  late double width;
  late double height;
  String email = "";
  String userName = "";
  String password = "";


  @override
  Widget build(BuildContext context) {
    ekranBilgisi = MediaQuery.of(context);
    width = ekranBilgisi.size.width;
    height = ekranBilgisi.size.height;


    return Scaffold(
      body: Form(
        key: formKey,
        child: Container(
          color: Colors.black,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Logo(),
                Email(),
                UserName(),
                Password(),
                Sign()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget Logo(){
    return Image.asset("resimler/logo2.png");
  }

  Widget Email(){
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextFormField(
        onSaved : (String? text){
          CheckEmail(text!);
        },
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: "E-Mail",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    );
  }

  Widget UserName(){
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextFormField(
        onSaved : (String? text){
          CheckUserName(text!);
        },
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: "Kullanici Adi",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    );
  }

  Widget Password(){
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextFormField(
        onSaved : (String? text){
          CheckPassword(text!);
        },
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: "Sifre",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        obscureText: true,
      ),
    );
  }

  Widget Sign(){
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
        width: width,
        height: height / 15,
        child: ElevatedButton(
          onPressed: () {
            if (formKey.currentState!.validate()) {
              formKey.currentState!.save();
              User user = User(email: email, userName: userName, password: password);
              SignUp.userList.add(user);
              Navigator.pop(context);
            }
          },
          child: Text("Kayıt Ol"),
          style: ElevatedButton.styleFrom(
            primary: Colors.red,
          ),
        ),
      ),
    );
  }

  void CheckEmail(String text){
    email = text;
  }

  void CheckUserName(String text){
    userName = text;
  }

  void CheckPassword(String text){
    password = text;
  }

}
