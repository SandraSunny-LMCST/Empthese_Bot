import 'package:chatbot/pages/chat_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  bool isLoading = false;
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  void login() async{
    try{
      UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(email: _email.text, password: _password.text);
      print("Succesfull");
      Navigator.push(context, MaterialPageRoute(builder: (context)=> ChatPage()));
    } catch(e){
      print('Error while login: $e');
    }
  }
  
  //  signInWithEmailAndPassword() async {
  //     try {
  //       setState(() {
  //         isLoading = true;
  //       });
  //       await FirebaseAuth.instance.signInWithEmailAndPassword(
  //         email: _email.text,
  //         password: _password.text,
  //       );

  //       setState(() {
  //         isLoading = false;
  //         Navigator.push(
  //             context, MaterialPageRoute(builder: (context) => ChatPage()));
  //       });
  //     } on FirebaseAuthException catch (e) {
  //       setState(() {
  //         isLoading = false;
  //       });

  //       if (e.message == 'user-not-found') {
  //         return ScaffoldMessenger.of(context).showSnackBar(
  //           SnackBar(
  //             content: Text("No user found for that email."),
  //           ),
  //         );
  //       } else if (e.message == 'wrong-password') {
  //         return ScaffoldMessenger.of(context).showSnackBar(
  //           SnackBar(
  //             content: Text("Wrong password provided for that user."),
  //           ),
  //         );
  //       } else {
  //         print('error $e');
  //       }
  //     }
  //   }


  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: OverflowBar(
              overflowSpacing: 20,
              children: [
                TextFormField(
                  //controller: _email,
                  validator: (text) {
                    if (text == null || text.isEmpty) {
                      return 'Email is Empty';
                    }
                    return null;
                  },
                  decoration: InputDecoration(labelText: "Email"),
                ),
                TextFormField(
                  //controller: _password,
                  validator: (text) {
                    if (text == null || text.isEmpty) {
                      return 'Password is Empty';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: "Password",
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        login();
                      }
                    },
                    child: isLoading
                        ? const Center(
                            child: const CircularProgressIndicator(
                              color: Colors.white,
                            ),
                          )
                        : const Text("Login"),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text("SignUp"),
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
