import 'package:dismissible/widget/tabbar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//Welcme back to my channel "Bimbimzzz Project"

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const TabBarWidget(),
    );
  }
}

//Now i wanto to create a tabbarview 
//Let's start 
