import 'package:flutter/material.dart';
import 'package:netflixclone/SignUp.dart';
import 'package:netflixclone/User.dart';

import 'MainPage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  final User user = User.empty();
  String checkUser = "";
  String password = "";
  var ekranBilgisi;
  late double width;
  late double height;


  @override
  Widget build(BuildContext context) {
    ekranBilgisi = MediaQuery.of(context);
    width = ekranBilgisi.size.width;
    height = ekranBilgisi.size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Container(
            width: width,
            height: height,
            color: Colors.black,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  logo(),
                  userName(),
                  Password(),
                  Login(),
                  Sign(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget logo(){
    return Image.asset("resimler/logo2.png");
  }

  Widget userName(){
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextFormField(
        onSaved: (String? value){
          setState(() {
            checkUser = value!;
          });
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
        onSaved: (String? value){
          setState(() {
            password = value!;
          });
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

  Widget Login(){
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
        width: width,
        height: height / 15,
        child: ElevatedButton(
          onPressed: () {
            check();
          },
          child: Text("Giriş Yap"),
          style: ElevatedButton.styleFrom(
            primary: Colors.red,
          ),
        ),
      ),
    );
  }

  Widget Sign(){
    return TextButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
      },
      child: Text("Kayıt Ol", style: TextStyle(color: Colors.red, fontSize: 20),),
    );
  }

  void check(){
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      setState(() {

        for(int i = 0; i < SignUp.userList.length; i++){
          if(checkUser == SignUp.userList[i].userName && password == SignUp.userList[i].password){
            Navigator.push(context, MaterialPageRoute(builder: (context) => MainPage()));
          }else{
            print("Hatalı Giriş");
          }
        }

      });
    }
  }

}










