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
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 60,
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

              const Text("Já tem cadastro?", style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600, color: Colors.white),),
              const Text("Faça seu login e make the change_", style: TextStyle(fontSize: 16, color: Colors.white),),

              const SizedBox(
                height: 25,
              ),

              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 30),
                height: 30,
                alignment: Alignment.center,
                child: Row(
                  children: [
                    Expanded(flex: 2, child: Text("Informe seu Email:", style: TextStyle(color: Colors.white))),
                    SizedBox(width:20),
                    Expanded(flex: 3, child: Text("Email", style: TextStyle(color: Colors.white))),
                  ],
                ),
              ),
               const SizedBox(
                height: 10,
              ),
                   Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 30),
                height: 30,
                alignment: Alignment.center,
                child: Row(
                  children: [
                    Expanded(flex: 2, child: Text("Informe sua Senha:", style: TextStyle(color: Colors.white))),
                    SizedBox(width:20),
                    Expanded(flex: 3, child: Text("Senha", style: TextStyle(color: Colors.white))),
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
                child: Text("Login"),
              ),
             Expanded(child: Container()),

                Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 30),
                height: 30,
                alignment: Alignment.center,
                child: Text("Esqueci minha senha", style: TextStyle(fontSize: 16, color: Colors.yellow)),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 30),
                height: 30,
                alignment: Alignment.center,
                child: Text("Criar conta", style: TextStyle(fontSize: 16, color: Colors.greenAccent)),
              ),
                   const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),),
    );
  }
}