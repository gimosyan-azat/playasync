import 'package:flutter/material.dart';
import 'dart:async';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  String result = 'fuck';
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(result.toString()),
          ElevatedButton(
              onPressed: () {
                count();
              },
              child: const Text('Go')),
          const CircularProgressIndicator(),
        ],
      ),
    );
  }

  Future count() async {
    int total = 0;
    total = await returnOneAsync();
    total += await returnTwoAsync();
    total += await returnThreeAsync();
    setState(() {
      result = total.toString();
    });
  }

  Future<int> returnOneAsync() async {
    await Future<int>.delayed(const Duration(seconds: 3));
    return 1;
  }

  Future<int> returnTwoAsync() async {
    await Future<int>.delayed(const Duration(seconds: 3));
    return 2;
  }

  Future<int> returnThreeAsync() async {
    await Future<int>.delayed(const Duration(seconds: 3));
    return 3;
  }
}
