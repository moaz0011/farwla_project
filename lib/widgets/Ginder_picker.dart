import 'package:flutter/material.dart';

enum Gender { male, female }

class GenderWidget extends StatefulWidget {
  const GenderWidget({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _GenderWidgetState createState() => _GenderWidgetState();
}

class _GenderWidgetState extends State<GenderWidget> {
  Gender? _selectedGender;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              _selectedGender = Gender.male;
            });
          },
          child: Container(
            height: 35,
            width: 75,
            color: _selectedGender == Gender.female||_selectedGender==null ?   Colors.white:Colors.blue ,
            child: const Center(
              child: Text('Male',style: TextStyle(color: Colors.black, fontWeight: FontWeight.w300,)),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              _selectedGender = Gender.female;
            });
          },
          child: Container(
            height: 35,
            width: 75,
            color: _selectedGender == Gender.male||_selectedGender==null ?  Colors.white:Colors.pink ,
            child: const Center(
              child: Text('Female',style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400,)),
            ),
          ),
        ),
      ],
    );
  }
}
