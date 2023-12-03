import 'package:farwla_project/constants.dart';
import 'package:farwla_project/screens/signUp_screen.dart';
import 'package:flutter/material.dart';

import '../widgets/mainBotton.dart';
import '../widgets/mytextfeild.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

final TextEditingController emailController = TextEditingController();
final TextEditingController passwordController = TextEditingController();

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
            vertical: height * 0.1, horizontal: width * 0.05),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Image.asset(logopath),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Login",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  )
                ],
              ),
              MyTextFiled(
                hint: "Email",
                icon: Icons.email_outlined,
                controller: emailController,
                isPassword: false,
              ),
              MyTextFiled(
                hint: "Password",
                icon: Icons.lock,
                controller: passwordController,
                isPassword: true,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Forget Password?",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color(0xFF355FAA),
                      decoration: TextDecoration.underline,
                      decorationColor: secondaryColor,
                      decorationThickness:
                          1.0, // Adjust the thickness of the underline
                    ),
                  ),
                  
                ],
              ),
              const SizedBox(height: 30,),
              MyBotton(label: "Login",),
              const SizedBox(height: 5,),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(context,MaterialPageRoute(builder: (context) =>  SignUP()),);
                                  },
                                  child: const Text(
                                                    "Switch signUp",
                                                    style: TextStyle(
                                                      fontWeight: FontWeight.w400,
                                                      fontSize: 14,
                                                      color: Colors.black,
                                                      decoration: TextDecoration.underline,
                                                      decorationColor: Colors.black,
                                                      decorationThickness:
                                                          1.0, // Adjust the thickness of the underline
                                                    ),
                                                  ),
                                ),
            ],
          ),
        ),
      ),
    );
  }
}
