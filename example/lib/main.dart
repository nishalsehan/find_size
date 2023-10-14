import 'package:find_size/find_size.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    /// Build and return the main user interface for the application.
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Find Size Plugin Example'),
        ),
        body: Center(
          child: FindSize(
            onChange: (Size size) {
              /// Callback function to handle size changes and print the size.
              print("Button size: $size");
            },
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Click Me'),
            ),
          ),
        ),
      ),
    );
  }
}
