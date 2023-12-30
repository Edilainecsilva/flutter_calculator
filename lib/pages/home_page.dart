import 'package:flutter/material.dart';
import 'package:flutter_calculator/class/people.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  //var people = People(name, weight, height);
  
 // static String get name => "";

 String name = "";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 192, 84),
        title: const Text(
          "Calculadora IMC",
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 30, color: Colors.white),
        ),
      ),
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    Expanded(child: Container()),
                    Expanded(
                      flex: 8,
                      child: 
                      Image.asset(
                        'assets/imagens/logo.png',
                        height: 250,),
                    ),
                    Expanded(child: Container()),
                  ],
                ),
                
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  alignment: Alignment.center,
                  child: const SizedBox(
                    width: double.infinity,
                    child: TextField (
                      /*onChanged: (value) {
                        name = value;
                      },*/
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color:Color.fromARGB(255, 51, 94, 248))),
                        hintText:"Informe seu nome: ",
                        prefixIcon: Icon(Icons.account_circle_rounded, color: Color.fromARGB(255, 51, 94, 248),)),
                    ),
                  ),
                ),

                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  alignment: Alignment.center,
                  child: const SizedBox(
                    width: double.infinity,
                    child: TextField (
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color:Color.fromARGB(255, 51, 94, 248))),
                        hintText:"Informe seu peso: ",
                        prefixIcon: Icon(Icons.boy_sharp, color: Color.fromARGB(255, 51, 94, 248),)),
                    ),
                  ),
                ),

                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  alignment: Alignment.center,
                  child: const SizedBox(
                    width: double.infinity,
                    child: TextField (
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color:Color.fromARGB(255, 51, 94, 248))),
                        hintText:"Informe sua altura: ",
                        prefixIcon: Icon(Icons.boy_sharp, color: Color.fromARGB(255, 51, 94, 248),)),
                    ),
                  ),
                ),
               
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: double.infinity,
                    child: TextButton(
                      onPressed: () {}, 
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 51, 94, 248)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
                      ),
                      child: const Text("CALCULAR",
                        style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700)),
                      ),
                      ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}