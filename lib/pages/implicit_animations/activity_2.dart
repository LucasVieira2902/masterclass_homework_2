import 'package:flutter/material.dart';
import 'package:masterclass_homework_2/components/custom_tile.dart';

class Activity2 extends StatefulWidget {
  const Activity2({Key? key}) : super(key: key);

  @override
  State<Activity2> createState() => _Activity2State();
}

class _Activity2State extends State<Activity2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyScrollView'),
      ),
      body: ListView.builder(
        itemCount: 60,
        itemBuilder: (context, index) => CustomTile(index: index),
      )
    );
  }
}