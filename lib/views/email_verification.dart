import 'package:chat_app/routes/routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class EmailVerification extends StatefulWidget {
  const EmailVerification({super.key});

  @override
  State<EmailVerification> createState() => _EmailVerificationState();
}

class _EmailVerificationState extends State<EmailVerification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("email verify"),
        backgroundColor: Colors.purple[50],
      ),
      body: Column(
        children: [
          TextButton(
            onPressed: () async {
              final user = FirebaseAuth.instance.currentUser;
              if (user!.emailVerified) {
                Navigator.pushNamed(context, chatRoute);
              } else {
                user.sendEmailVerification();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("email verification sent")),
                );
              }
            },
            child: const Text("check verification status"),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, loginRoute);
            },
            child: const Text("back to login "),
          ),
        ],
      ),
    );
  }
}
