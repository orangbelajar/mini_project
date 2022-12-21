// ignore_for_file: deprecated_member_use

import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mynotes/screens/home_screen.dart';

import '../constants/color_scheme.dart';



class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

//login function
// static Future<User?> loginUsingEmailPassword({required String email, required String password, required BuildContext context}) async{
//   FirebaseAuth auth = FirebaseAuth.instance;
//   User? user;
//   try {
//     UserCredential userCredential = await auth.signInWithEmailAndPassword(email: email, password: password);
//     user = userCredential.user;
//    } on FirebaseAuthException catch (e){
//       var e;
//       if(e.code == "user-not-found"){
//         print("no user found for that email");
//       }
//     }
  
//   return user;
// }


  @override
  Widget build(BuildContext context) {
    //create the controler
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();
    return Scaffold(
      body: Padding(       
        padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Simple Notes",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "Login to Your Notes",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 44.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 44.0,
                ),
                TextField(
                  style: TextStyle(
                    color: Colors.white
                  ),
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    hintText: "User Email",
                    hintStyle: TextStyle(color: Colors.grey),
                    prefixIcon: Icon(Icons.mail, color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextField(
                  style: TextStyle(
                    color: Colors.white
                  ),
                  controller: _passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: "User Password", 
                    hintStyle: TextStyle(color: Colors.grey),
                  prefixIcon: Icon(Icons.lock, color: Colors.white),
                ),
                ),
        
                SizedBox(
                  height: 12.0,
                ),
                const Text("Dont Remember your password",
                style: TextStyle(color: Colors.blue),
                ),
        
                SizedBox(
                  height: 78.0,
                ),
       
        Container(
            height: 45,
                  decoration: BoxDecoration(
                    
                    borderRadius: BorderRadius.circular(20.0),
                    gradient: LinearGradient(
                      begin: Alignment(-0.95, 0.0),
                      end: Alignment(1.0, 0.0),
                      colors: [const Color(0xff667eea), const Color(0xff64b6ff)],
                      stops: [0.0, 1.0],
                    ),
                  ),
                  child: ElevatedButton(
                    
                    style: ElevatedButton.styleFrom(primary: Colors.transparent,
                        onSurface: Colors.transparent,
                        shadowColor: Colors.transparent,),

                    onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));},

                    child: 
                    
                    Center(
                      child: Text(
                        'Log in',
                        style: TextStyle(
                          fontSize: 16,
                          color: const Color(0xffffffff),
                          letterSpacing: -0.3858822937011719,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
               
                //       onPressed: (){
                //         // Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                // },
        
                    // onPressed: ()async{
                    //   //PANGGIL 
                    //   User? user = await loginUsingEmailPassword(email: _emailController.text, password: _passwordController.text, context: context);
                    //   print(user);
                    //   if (user != null){
                    //     Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> HomePage()));
                    //   }
        
                    // },
                    
        
        
        
        
                // ElevatedButton(
                //     onPressed: () => Navigator.of(context).pushReplacement(
                //           MaterialPageRoute(builder: (_) {
                //             return HomePage();
                //           }),
                //         ),
                //     child: Text('home page')),
                
              
            
                
                
              ],
            
                
          
        ),),
        backgroundColor: Color(0xff16213E),
    );
    
  }
  
  
}
