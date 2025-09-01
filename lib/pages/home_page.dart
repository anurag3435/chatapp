import 'package:chat_app/constants/routes.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Page")),
      body: Center(
        child: GestureDetector(
          onTap: () async {
            await FirebaseAuth.instance.signInAnonymously();
            if (!context.mounted) return;
            Navigator.pushNamed(context, chatPage);
          },
          child: const Text(
            "sign in anonymously",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}
