import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myapp/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
} 

class _LoginPageState extends State<LoginPage> {
  var email = TextEditingController(text: "");
  TextEditingController senha = TextEditingController(text: "");
  bool isObscureText = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 0, 0, 0),

        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
            child: SizedBox(
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
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    height: 30,
                    alignment: Alignment.center,
                    child: TextField(
                      controller: email,
                      onChanged: (value) { debugPrint(value); },
                      style: TextStyle(color: Colors.white),
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.only(top:0),
                        hintText: "Email",
                        hintStyle: TextStyle(color: Colors.white),
                        prefixIcon: Icon(Icons.person, color:Color.fromARGB(255, 107, 54, 138))
                      ), 
                    ),
                  ),
            
                   const SizedBox(
                    height: 10,
                  ),
            
                  
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    height: 30,
                    alignment: Alignment.center,
                    child: TextField(
                      obscureText: isObscureText,
                      controller: senha,
                      onChanged: (value) => debugPrint(value),
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top:-5),
                        enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color:Color.fromARGB(255, 228, 221, 233))
                        ),
                        focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color:Color.fromARGB(255, 19, 95, 182))
                        ),
                        hintText: "Senha",
                        hintStyle: const TextStyle(color: Colors.white),
                        prefixIcon: const Icon(Icons.lock, color:Color.fromARGB(255, 107, 54, 138)),
                        suffixIcon: InkWell(
                          onTap: () {
                            setState(() {
                                isObscureText = !isObscureText;
                            });
                          },
                          child: Icon(
                            isObscureText ? Icons.visibility_off: Icons.visibility, 
                            color:Color.fromARGB(255, 107, 54, 138)),
                        )
                      ), 
                    ),
                  ),
            
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: double.infinity,
                      child: TextButton(onPressed: () {
                        if(email.text.trim() == "email@email.com"
                        && senha.text.trim() == "123"){
                          Navigator.push(
                            context, MaterialPageRoute(builder: (context) => const HomePage())
                            );
                        }else{
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Erro ao efetuar o login"))
                          );
                        }
                       debugPrint(email.text);
                       debugPrint(senha.text);
                      },
                        style: ButtonStyle(
                          shape: WidgetStateProperty.all(
                            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                          ),
                          backgroundColor: WidgetStateProperty.all(Color.fromARGB(255, 107, 54, 138))),
                        child: const Text("ENTRAR", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400),)),
                    ),
                  ),
                 Expanded(child: Container()),
            
                    Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    height: 30,
                    alignment: Alignment.center,
                    child: const Text("Esqueci minha senha", style: TextStyle(fontSize: 16, color: Colors.yellow)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    height: 30,
                    alignment: Alignment.center,
                    child: const Text("Criar conta", style: TextStyle(fontSize: 16, color: Colors.greenAccent)),
                  ),
                       const SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}