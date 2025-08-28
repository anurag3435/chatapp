import 'package:chat_app/routes/routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'dart:developer' as devtools;

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController pwcontroller = TextEditingController();

  @override
  void dispose() {
    emailcontroller.dispose();
    pwcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register"),
        backgroundColor: Colors.purple[50],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 150),
            child: Icon(Icons.app_registration, size: 150),
          ),
          const Text("register now!", style: TextStyle(fontSize: 23)),
          Padding(
            padding: const EdgeInsets.only(
              left: 25,
              right: 25,
              top: 100,
              bottom: 15,
            ),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              controller: emailcontroller,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),

                hintText: "enter your email",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, bottom: 15),
            child: TextField(
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              controller: pwcontroller,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                hintText: "create your password",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 75, right: 75, top: 10),
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.purple[50]),
              ),
              onPressed: () async {
                final email = emailcontroller.text.trim();
                final password = pwcontroller.text.trim();
                final userCredential = await FirebaseAuth.instance
                    .createUserWithEmailAndPassword(
                      email: email,
                      password: password,
                    );
                devtools.log(userCredential.toString());
              },
              child: Center(
                child: const Text(
                  "Login",
                  style: TextStyle(fontSize: 23, fontFamily: 'roboto'),
                ),
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, loginRoute);
            },
            child: const Text("already registered?Login here"),
          ),
        ],
      ),
    );
  }
}
