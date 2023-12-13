import 'package:flutter/material.dart';
import 'package:flutter_practice_navigationbar/switch_personal.dart/provider/bloc_switch.dart';
import 'package:provider/provider.dart';

class CustomSwitchProv extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //final switchState = Provider.of<SwitchState>(context);
    final switchState = context.watch<SwitchState>();
    print(switchState.value);
    return GestureDetector(
      onTap: () {
        switchState.toggleSwitch();
      },
      child: Container(
        width: 50.0,
        height: 30.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: switchState.value ? Colors.blue : Colors.grey,
        ),
        child: Stack(
          children: <Widget>[
            AnimatedPositioned(
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeIn,
              left: switchState.value ? 20.0 : 0.0,
              right: switchState.value ? 0.0 : 20.0,
              child: Container(
                width: 30.0,
                height: 30.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: Center(
                  child: switchState.value
                      ? Icon(Icons.light_mode_outlined, size: 20.0, color: Colors.blue)
                      : Icon(Icons.dark_mode_outlined, size: 20.0, color: Colors.grey),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}