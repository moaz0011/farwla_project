import 'dart:async';
import 'package:flutter/material.dart';

class TimerWidget extends StatefulWidget {
  const TimerWidget({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TimerWidgetState createState() => _TimerWidgetState();
}

class _TimerWidgetState extends State<TimerWidget> {
  Duration _duration = Duration(seconds: 944);
  @override
  void initState() {
    _startTimer();
    // TODO: implement initState
    super.initState();
  }

  void _startTimer() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_duration.inSeconds == 0) {
          timer.cancel();
        } else {
          _duration = _duration - const Duration(seconds: 1);
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    const Text(
                      'Hours',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                      ),
                    ),
                    Text(
                      _duration.inHours.toString().padLeft(2, '0'),
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 48,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    const Text(
                      'Minutes',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                      ),
                    ),
                    Text(
                      _duration.inMinutes.remainder(60).toString().padLeft(2, '0'),
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 48,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    const Text(
                      'Seconds',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                      ),
                    ),
                    Text(
                      _duration.inSeconds.remainder(60).toString().padLeft(2, '0'),
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 48,
                      ),
                    )
                  ],
                )
              ],
            ),
          )),
    );
  }
}
