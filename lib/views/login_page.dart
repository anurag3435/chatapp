import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
        title: const Text("Login"),
        backgroundColor: Colors.purple[50],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 150),
            child: Icon(Icons.message, size: 150),
          ),
          const Text("welcome back!", style: TextStyle(fontSize: 23)),
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
                hintText: "enter your password",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 75, right: 75, top: 10),
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.purple[50]),
              ),
              onPressed: () {},
              child: Center(
                child: const Text(
                  "Login",
                  style: TextStyle(fontSize: 23, fontFamily: 'roboto'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
