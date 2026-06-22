import 'package:Orchard/start.dart';
import 'package:flutter/material.dart';

class Minigame extends StatefulWidget {
  const Minigame({super.key, required this.levelUp});

  final Function levelUp;

  @override
  State<Minigame> createState() => MinigameState();
}

class MinigameState extends State<Minigame> {
  Widget level = Start();

  @override
  Widget build(BuildContext context) {
    //final deviceInfo = MediaQuery.of(context);
    //late var h = deviceInfo.size.height;
    //late double w = deviceInfo.size.width;

    return AnimatedSwitcher(
        duration: Duration(milliseconds: 350), child: level);
  }
}
