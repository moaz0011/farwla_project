// ignore_for_file: must_be_immutable
// ignore: unused_import
import 'package:farwla_project/constants.dart';
import 'package:flutter/material.dart';

class MyTextFiled extends StatefulWidget {
  String hint;
  IconData icon;
  bool isPassword;
  bool isNumber;
  TextEditingController controller = TextEditingController();
  MyTextFiled(
      {super.key,
      required this.controller,
      required this.hint,
      required this.icon,
      required this.isPassword,
      this.isNumber = false});

  @override
  State<MyTextFiled> createState() => _MyTextFiledState();
}

class _MyTextFiledState extends State<MyTextFiled> {
  // bool to controll the icon if the text filed password
  bool hidepassword = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.07,
        child: TextField(
            keyboardType: widget.isNumber ? TextInputType.phone : null,
            controller: widget.controller,
            // this fun is controll if hidden text or not take bool
            obscureText: hidepassword,
            decoration: InputDecoration(
              // by default textfiled transparent use filled to make it have color and give it the color
              fillColor: Colors.white,
              filled: true,
              // this icon for the icon on the left
              prefixIcon: Icon(
                widget.icon,
                color: Colors.grey,
              ),
              // here we check if this text filed is passwod  if it password make icon for hide or show the text filed on the right

              suffixIcon: widget.isPassword
                  ? InkWell(
                      onTap: () {
                        setState(() {});
                        hidepassword = !hidepassword;
                      },
                      child: Icon(
                        hidepassword ? Icons.visibility : Icons.visibility_off,
                        color: Colors.grey,
                      ))
                  : null,
              // hint text is the word in text filed when it is empty
              hintText: widget.hint,
              hintMaxLines: 1,
              hintStyle: const TextStyle(
                  color: Colors.grey, fontWeight: FontWeight.w300),
              //enabled and focused border to change the boder styel,text filed have 3 states here we use 2
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(
                  color: Colors.grey,
                  width: 1.0,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(
                  color: Colors.grey,
                  width: 1.0,
                ),
              ),
            ),
            // to controll style of text the user write
            style: const TextStyle(
              color: Colors.black,
            )),
      ),
    );
  }
}
