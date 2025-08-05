import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SmartDeviceBox extends StatelessWidget {
  final String smartDeviceName;
  final String iconpath;
  final bool powerOn;
  final void Function(bool)? onChanged;
  const SmartDeviceBox({
    super.key,
    required this.smartDeviceName,
    required this.iconpath,
    required this.powerOn,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[400],
          borderRadius: BorderRadius.circular(12 * 2),
        ),
        child: Column(
          children: [
            Image.asset(iconpath, height: 65),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Text(
                      smartDeviceName,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: powerOn ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                ),
                Transform.rotate(
                  angle: pi / 2,
                  child: CupertinoSwitch(value: powerOn, onChanged: onChanged),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
