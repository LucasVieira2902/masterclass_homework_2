import 'package:flutter/material.dart';

class Activity1 extends StatefulWidget {
  const Activity1({Key? key}) : super(key: key);

  @override
  State<Activity1> createState() => _Activity1State();


}
class _Activity1State extends State<Activity1> with SingleTickerProviderStateMixin {

  bool isActive = false;
  late final AnimationController animationController;
  Animation<double>? animationPositionX;
  Animation<double>? animationPositionY;
  Animation<double>? animationSize;
  Animation<double>? animationRounded;
  
  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this, 
      duration: const Duration(milliseconds: 600),
    );

  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    animationPositionX = Tween<double>(
      begin: 20, 
      end: MediaQuery.of(context).size.width/2 - 60
    ).animate(CurvedAnimation(parent: animationController, curve: Curves.easeInOut));
    
    animationPositionY = Tween<double>(
      begin: 20, 
      end: MediaQuery.of(context).size.height - 140
    ).animate(CurvedAnimation(parent: animationController, curve: Curves.easeInOut));

    animationSize = Tween<double>(
      begin: 60, 
      end: 120,
      ).animate(CurvedAnimation(parent: animationController, curve: const Interval(0.0, 0.5, curve: Curves.easeInOut)));

    animationRounded = Tween<double>(
      begin: 60, 
      end: 0,
      ).animate(CurvedAnimation(parent: animationController, curve: const Interval(0.0, 0.5, curve: Curves.easeInOut)));

    return AnimatedBuilder(
      animation: animationController,
      builder: (context, child) => Scaffold(
        appBar: AppBar(
          title: const Text('Desafio do Botão Flutuante'),
        ),
        body: Stack(
          children: <Widget>[
            Positioned(
              bottom: animationPositionY!.value,
              right: animationPositionX!.value,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    isActive = !isActive;
                    isActive ? animationController.forward() : animationController.reverse();
                  });
                },
                child: Container(
                  width: animationSize!.value,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(animationRounded!.value),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}