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
                height: 80,
              ),

              Row(
                children: [
                  Expanded(child: Container()),
                   Expanded(
                    flex: 1,
                    child: Image.network("https://i.pinimg.com/originals/e5/6b/84/e56b841924ac729935e858cb59535fb7.png",
                     // height: 150,
                      ),
                  ),
                  Expanded(child: Container()),
                ],
              ),

              const SizedBox(
                height: 20,
              ),

              const Text("Já tem cadastro?"),
              const Text("Faça seu login e make the change_"),

              const SizedBox(
                height: 15,
              ),

              Container(
                color: Colors.green,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 30),
                height: 30,
                alignment: Alignment.center,
                child: Row(
                  children: [
                    Expanded(flex: 2, child: Text("Informe seu Email:")),
                    SizedBox(width:20),
                    Expanded(flex: 3, child: Text("Email")),
                  ],
                ),
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
              ),
             Expanded(child: Container()),
                     Container(
                color: Colors.green,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 30),
                height: 30,
                alignment: Alignment.center,
                child: Text("Login"),
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),),
    );
  }
}