import 'package:chat_app/firebase_options.dart';
import 'package:chat_app/routes/routes.dart';
import 'package:chat_app/views/chat_view.dart';
import 'package:chat_app/views/email_verification.dart';
import 'package:chat_app/views/login_page.dart';
// import 'package:chat_app/views/login_page.dart';
import 'package:chat_app/views/register_page.dart';
import 'package:chat_app/views/theme/theme_data.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
/*  
today's targets 
- register page 
- login page 
- home page 
- theme (lavender)
- side bar 
- custom snack bar 
 */

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(
    MaterialApp(
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      home: const RegisterPage(),
      debugShowCheckedModeBanner: false,
      routes: {
        loginRoute: (context) => LoginPage(),
        registerRoute: (context) => RegisterPage(),
        emailVerifyRoute: (context) => EmailVerification(),
        chatRoute: (context) => ChatView(),
      },
    ),
  );
}
