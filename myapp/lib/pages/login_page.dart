import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
} 

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 181, 189, 192),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 100,
              ),
              Container(
               // margin: EdgeInsets.only(top:50), 
                width: 200, height: 200, color: Colors.amber,),

                   const SizedBox(
                height: 10,
              ),
              Container(
                color: Colors.green,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 30),
                height: 30,
                alignment: Alignment.center,
                child: Text("Informe seu email"),
              ),
               const SizedBox(
                height: 20,
              ),
              Container(
                color: Colors.green,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 30),
                height: 30,
                alignment: Alignment.center,
                child: Text("Informe a senha"),
              )
            ],
          ),
        ),),
    );
  }
}