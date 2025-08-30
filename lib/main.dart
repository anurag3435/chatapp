import 'package:chat_app/firebase_options.dart';
import 'package:chat_app/routes/routes.dart';
import 'package:chat_app/views/chat_view.dart';
import 'package:chat_app/views/home_page.dart';
import 'package:chat_app/views/theme/theme_data.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(
    MaterialApp(
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      home: const Homepage(),
      debugShowCheckedModeBanner: false,
      routes: {chatRoute: (context) => ChatView()},
    ),
  );
}
