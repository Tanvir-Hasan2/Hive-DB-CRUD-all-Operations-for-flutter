import 'package:flutter/material.dart';
import 'package:hive_crud_all/splash_screen.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'hive_crud_op.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();

  Box box = await Hive.openBox('notepad');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'learning-approach',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.green,
      ),
      routes: {
        '/splash': (context) => Splash(),
        '/login': (context) => Example(),
      },
      initialRoute: '/splash',
    );
  }
}

