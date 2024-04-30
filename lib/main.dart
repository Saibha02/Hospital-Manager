import 'package:flutter/material.dart';
import 'package:flutter_application_11/home.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Myhome(),
      debugShowCheckedModeBanner: false,
    );
  }
}
