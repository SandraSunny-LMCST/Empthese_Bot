import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:chatbot/pages/login_page.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final FirebaseAuth auth = FirebaseAuth.instance;
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  void signup()async{
    try{
      UserCredential userCredential = await auth.createUserWithEmailAndPassword(email: email.text, password: password.text);
      print('user registered: ${userCredential}');
      Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
    }catch(e){
      print("Error during Registration: $e");
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Signup Page"),),
      body:Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: email,
                decoration: InputDecoration(labelText: 'Email'),
              ),
              TextField(
                controller: password,
                decoration: InputDecoration(labelText: 'Password'),
                obscureText: true,
              ),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: signup, child: Text('Signup')),
            SizedBox(height: 10),
            TextButton(
              onPressed: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
              },
              child: Text('Login'),
            ),

            ],
          ),
        ),
      )
    );
  }
}