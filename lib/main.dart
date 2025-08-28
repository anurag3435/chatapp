import 'package:chat_app/firebase_options.dart';
import 'package:chat_app/views/home_page.dart';
import 'package:chat_app/views/login_page.dart';
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
    const MaterialApp(home: LoginPage(), debugShowCheckedModeBanner: false),
  );
}
