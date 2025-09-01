import 'package:chat_app/constants/routes.dart';
import 'package:chat_app/firebase_options.dart';
import 'package:chat_app/pages/chat_page.dart';
import 'package:chat_app/pages/home_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(
    ScreenUtilInit(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
        routes: {
          homePage: (context) => HomePage(),
          chatPage: (context) => ChatPage(),
        },
      ),
    ),
  );
}
