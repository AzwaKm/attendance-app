import 'package:attendance_app/wrapper/auth_wrapper.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyBUtciOuowJibbN9C8c_hUC2xHFGllWvp0",
      appId: "1:47198573285:android:9a5e40ab4ed1ae8a1fba0c",
      messagingSenderId: "47198573285",
      projectId: "attendance-app-b8798"
    )
  );
  runApp(AttendanceApp());
}

class AttendanceApp extends StatelessWidget {
  const AttendanceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Attendance App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.light,
        ),
        useMaterial3: true,
        appBarTheme: AppBarTheme(
          centerTitle: true,
          elevation: 0
        )
      ),
      home: AuthWrapper(),
    );
  }
}