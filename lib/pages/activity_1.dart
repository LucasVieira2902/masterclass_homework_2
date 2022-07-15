import 'package:flutter/material.dart';

class Activity1 extends StatefulWidget {
  const Activity1({Key? key}) : super(key: key);

  @override
  State<Activity1> createState() => _Activity1State();
}
class _Activity1State extends State<Activity1> {
  double posX = 20, posY = 20;
  bool isActive = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Desafio do Botão Flutuante'),
      ),
      body: Stack(
        children: <Widget>[
          AnimatedPositioned(
            duration: const Duration(milliseconds: 500),
            bottom: posY,
            right: posX,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isActive = !isActive;
                  posX = isActive ? (MediaQuery.of(context).size.width/2 - 60) : 20;
                  posY = isActive ? (MediaQuery.of(context).size.height - 140) : 20;
                });
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 500),
                width: isActive ? 120 : 60,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(isActive ? 0 : 50),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}