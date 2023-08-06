import 'package:equatableflutterdev/with_equ.dart';
import 'package:equatableflutterdev/without_equ.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyTabBar(),
    );
  }
}

class MyTabBar extends StatelessWidget {
  const MyTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: const Center(child: Text('Equatable')),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'With Equatable'),
              Tab(text: 'Without Equatable'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            WithEqu(),
            WithoutEqu(),
          ],
        ),
      ),
    );
  }
}
