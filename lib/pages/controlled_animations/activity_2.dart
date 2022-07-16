import 'package:flutter/material.dart';
import 'package:masterclass_homework_2/components/custom_tile_controlled.dart';

class Activity2 extends StatelessWidget {
  const Activity2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyScrollView'),
      ),
      body: ListView.builder(
        itemCount: 60,
        itemBuilder: (context, index) => CustomTileControlled(index: index),
      )
    );
  }
}