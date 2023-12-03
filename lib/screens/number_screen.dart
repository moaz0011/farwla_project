import 'package:farwla_project/constants.dart';
import 'package:flutter/material.dart';

import '../widgets/timer_widget.dart';

class Number extends StatefulWidget {
  const Number({super.key});

  @override
  State<Number> createState() => _NumberState();
}

class _NumberState extends State<Number> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 50
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                width: double.infinity,
              ),
              Image.asset(logopath),
              const SizedBox(
                height: 20,
              ),
              Container(
                color: Colors.white,
                width: 150,
                height: 100,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Nov",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          fontSize: 18),
                    ),
                    Text(
                      "4",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                          fontSize: 26),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 300,
                height: 200,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 53, 96, 170),
                    border: Border.all(color: Colors.white,width: 10)),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "your turn",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          fontSize: 18),
                    ),
                    Text(
                      "12",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                          fontSize: 26),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20,),
               const TimerWidget()
            ],
          ),
        ),
      ),
    );
  }
}
