import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fyp_pro/firebase_options.dart';
import 'package:fyp_pro/screen/splash.dart';

void main() async{
WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp( debugShowCheckedModeBanner: false,
      title: 'Flutter FYP',
      theme: ThemeData(
       // brightness: Brightness.dark,
               primarySwatch: Colors.purple,
      // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),

      ),
      home: const splash(),
    );
  }
}

