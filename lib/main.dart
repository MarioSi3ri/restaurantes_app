import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'restaurant_list.dart';
import 'firebase_options.dart'; // generado por flutterfire configure

void main() async {
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CRUD Restaurantes',
      theme: ThemeData(primarySwatch: Colors.teal),
      home: const RestaurantList(),
    );
  }
}
