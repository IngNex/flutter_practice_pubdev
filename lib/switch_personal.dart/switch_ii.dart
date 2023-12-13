import 'package:flutter/material.dart';

class CustomSwitchs extends StatefulWidget {
  final bool value;
  final ValueChanged<bool>? onChanged;

  const CustomSwitchs({
    Key? key,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  @override
  _CustomSwitchState createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitchs> {
  late bool _value;

  @override
  void initState() {
    super.initState();
    _value = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _value = !_value;
          widget.onChanged?.call(_value);
        });
      },
      child: Container(
        width: 80.0,
        height: 30.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: _value ? Colors.blue : Colors.grey,
        ),
        child: Stack(
          children: <Widget>[
            AnimatedPositioned(
              duration: Duration(milliseconds: 400),
              curve: Curves.easeIn,
              left: _value ? 50.0 : 0.0,
              right: _value ? 0.0 : 50.0,
              
              child: Container(
                width: 20.0,
                height: 20.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: Center(
                  child: _value
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