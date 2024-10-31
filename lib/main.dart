import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isDarkTheme = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _isDarkTheme ? _buildDarkTheme() : _buildLightTheme(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tema Değiştirici',
              style: Theme.of(context).textTheme.titleLarge),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                _isDarkTheme = !_isDarkTheme;
              });
            },
            child: Text(_isDarkTheme ? 'Açık Tema' : 'Karanlık Tema'),
          ),
        ),
      ),
    );
  }

  ThemeData _buildLightTheme() {
    return ThemeData(
      brightness: Brightness.light,
      primarySwatch: Colors.blue,
      textTheme: const TextTheme(
        titleLarge: TextStyle(color: Colors.black, fontSize: 20),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue, // 'primary' yerine 'backgroundColor'
          textStyle: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  ThemeData _buildDarkTheme() {
    return ThemeData(
      brightness: Brightness.dark,
      primarySwatch: Colors.grey,
      textTheme: const TextTheme(
        titleLarge: TextStyle(color: Colors.white, fontSize: 20),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.grey, // 'primary' yerine 'backgroundColor'
          textStyle: const TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
