import 'package:flutter/material.dart';

class CustomTileControlled extends StatefulWidget {
  final int index;
  const CustomTileControlled({Key? key, required this.index}) : super(key: key);

  @override
  State<CustomTileControlled> createState() => _CustomTileState();
}

class _CustomTileState extends State<CustomTileControlled> with SingleTickerProviderStateMixin{
  bool isActive = false;
  late final AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Material(
        child: InkWell(
          onTap: () {
            setState(() {
              isActive = !isActive;
            });
          },
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                height: 50,
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('My expansion tile ${widget.index}', style: const TextStyle(fontSize: 18)),
                      const Spacer(),
                      AnimatedRotation(
                        turns: isActive ? 0.5 : 0,
                        duration: const Duration(milliseconds: 200),
                        child: Icon(Icons.keyboard_arrow_up_rounded, color: isActive ? Colors.blue : Colors.grey[800])
                      ),
                    ],
                  ),
              ),
              AnimatedAlign(
                alignment: Alignment.centerLeft,
                duration: const Duration(milliseconds: 200),
                heightFactor: isActive ? 1 : 0,
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: isActive ? [
                        Image.asset('assets/img/logo.png', height: 60, width: 60,),
                        const SizedBox(height: 10),
                        const Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                          'Etiam dictum venenatis est, et convallis ligula egestas hendrerit. '
                          'Vivamus pulvinar mollis diam, sit amet blandit elit tristique nec. '
                          'Vivamus ut dapibus diam. Donec vel aliquam nisi. Integer tincidunt '
                          'urna et luctus maximus. Proin vel mattis mi. Ut molestie at nunc ut '
                          'semper. Mauris mollis eros nec nulla accumsan fermentum. Etiam at mattis '
                          'justo, nec porta mi. Vestibulum porttitor augue nec est molestie semper. '
                          'Etiam tincidunt mi at nisl condimentum suscipit. Curabitur vestibulum porttitor '
                          'interdum. Cras felis leo, cursus vel enim sit amet, viverra sodales ante. '
                          'Donec ac tellus erat.', 
                          style: TextStyle(fontSize: 12),
                      ),
                    ] : [],
                  )
                ),
              ),
            ],
          ),
        ),
      );
  }
}