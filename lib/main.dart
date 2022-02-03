import 'package:flutter/material.dart';
import 'package:playasync/views/BottomSheetPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme:
              const TextTheme(bodyText2: TextStyle(color: Colors.black))),
      home: Scaffold(
          appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              title: const Text(
                'Demo App',
                style: TextStyle(color: Colors.black),
              ),
              leading: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.menu),
                color: Colors.black,
              ),
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.add),
                    color: Colors.black)
              ]),
          body: const BottomSheetPage()),
    );
  }
}
