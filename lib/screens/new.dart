import 'package:flutter/material.dart';
import 'package:analog_clock/analog_clock.dart';

class ClockPage extends StatelessWidget {
  const ClockPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF0F4F3),
      body: Center(
        child: AnalogClock(
          decoration: BoxDecoration(
            border: Border.all(width: 2.0, color: Colors.transparent),
            color: Color(0xfff1fdff),
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 8,
                offset: Offset(2, 4),
              )
            ],
          ),
          width: 150.0,
          isLive: true,
          hourHandColor: Color(0xff50C2C9),
          minuteHandColor: Color(0xff50C2C9),
          showSecondHand: false,
          numberColor: Color(0xff50C2C9),
          showNumbers: true,
          showAllNumbers: true,
          textScaleFactor: 1.4,
          showTicks: false,
          datetime: DateTime.now(),
        ),
      ),
    );
  }
}
