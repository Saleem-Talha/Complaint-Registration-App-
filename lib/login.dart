import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class User_LoginPage extends StatefulWidget {
  const User_LoginPage({
    Key? key,
  }) : super(key: key);

  @override
  _User_LoginPageState createState() => _User_LoginPageState();
}

class _User_LoginPageState extends State<User_LoginPage> {
  var passwordField = TextEditingController();
  late var user = userField;
  var emailField = TextEditingController();
  var userField = TextEditingController();
  //Firebase firebase = Firebase.instance;
  // final user = FirebaseAuth.instance.currentUser!;

  bool _obsecureText = true;

  Future signIn() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailField.text.trim(), password: passwordField.text.trim());

      /* Map<String, String> data = {'email': "some-email", 'password': "some-password"};
 ref.push().set(data);*/

      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(content: Text('Form Submitted by {$userField}'));
            //' ' + user.email!
          });
    } on FirebaseAuthException catch (e) {
      print(e);

      showDialog(
          context: context,
          builder: (context) {
            return const AlertDialog(
                content: Text('All Fields are Compulsory!'));
          });
    }
  }

  @override
  void dispose() {
    emailField.dispose();
    passwordField.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            Colors.blue.withOpacity(0.8),
            Colors.blueAccent.withOpacity(0.8)
          ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          color: const Color.fromARGB(0, 0, 0, 0),
          child: Column(
            children: [
              const SizedBox(
                height: 7,
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(
                      height: 18,
                    ),
                    const Center(
                      child: Text(
                        'Sign In Page',
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 60),
                      child: TextField(
                        controller: userField,
                        keyboardType: TextInputType.name,
                        style: const TextStyle(color: Colors.blue),
                        autofocus: true,
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 15),
                          labelText: 'Username',
                          isDense: true,
                          filled: true,
                          fillColor: Colors.white,
                          labelStyle: const TextStyle(color: Colors.blue),
                          hintText: 'Username',
                          hintStyle: const TextStyle(color: Colors.grey),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                          prefixIcon: const Icon(
                            Icons.person_4_sharp,
                            color: Colors.blue,
                          ),
                        ),
                        textAlignVertical: TextAlignVertical.center,
                        enableInteractiveSelection: true,
                      ),
                    ),
                    const SizedBox(
                      height: 18,
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 60),
                      child: TextField(
                        controller: emailField,
                        keyboardType: TextInputType.emailAddress,
                        style: const TextStyle(color: Colors.blue),
                        autofocus: true,
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 15),
                          labelText: 'Email',
                          isDense: true,
                          filled: true,
                          fillColor: Colors.white,
                          labelStyle: const TextStyle(color: Colors.blue),
                          hintText: 'Email',
                          hintStyle: const TextStyle(color: Colors.grey),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                          prefixIcon: const Icon(
                            Icons.person_4_sharp,
                            color: Colors.blue,
                          ),
                        ),
                        textAlignVertical: TextAlignVertical.center,
                        enableInteractiveSelection: true,
                      ),
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 60),
                      child: TextField(
                        controller: passwordField,
                        keyboardType: TextInputType.visiblePassword,
                        style: const TextStyle(color: Colors.blue),
                        autofocus: true,
                        decoration: InputDecoration(
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 15),
                            labelText: 'Password',
                            labelStyle: const TextStyle(color: Colors.blue),
                            filled: true,
                            fillColor: Colors.white,
                            isDense: true,
                            hintText: 'Password',
                            hintStyle: const TextStyle(color: Colors.grey),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue),
                            ),
                            prefixIcon: const Icon(
                              Icons.security_sharp,
                              color: Colors.blue,
                            ),
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _obsecureText = !_obsecureText;
                                });
                              },
                              child: Icon(
                                _obsecureText
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Colors.blue,
                              ),
                            )),
                        textAlignVertical: TextAlignVertical.center,
                        enableInteractiveSelection: true,
                        obscureText: _obsecureText,
                        maxLength: 15,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    //  Checkbox(value: true, onChanged: (onChanged)),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 150),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(25),
                            backgroundColor: Colors.blue,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50))),
                        child: const Text(
                          'Male/Female',
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 150),
                      child: ElevatedButton(
                        onPressed: signIn,
                        style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(25),
                            backgroundColor: Colors.blue,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50))),
                        child: const Text(
                          'Sign In',
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 11,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
