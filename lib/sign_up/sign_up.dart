import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutterall/component/my_button.dart';
import 'package:flutterall/component/my_iconbutton.dart';
import 'package:flutterall/component/my_textbutton.dart';
import 'package:flutterall/component/my_textfield.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void signInUser() async {
    if (emailController.text != "" && passwordController.text != "") {
      print("It's ok");
    } else {
      print('Please input your email and password.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
        child: Form(
          child: Column(
            children: [
              const Spacer(),
              Text(
                "Hello, ready to get started?",
                textAlign: TextAlign.center,
                style: GoogleFonts.openSans(
                  textStyle: Theme.of(context).textTheme.displayLarge,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Please sign up with your email and password",
                textAlign: TextAlign.center,
                style: GoogleFonts.openSans(
                  textStyle: Theme.of(context).textTheme.displaySmall,
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  fontStyle: FontStyle.italic,
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              MyTextField(
                controller: emailController,
                hintText: 'Enter your email',
                labelText: 'Email',
                obscureText: false,
              ),
              const SizedBox(
                height: 20,
              ),
              MyTextField(
                controller: passwordController,
                hintText: 'Enter your password',
                labelText: 'Password',
                obscureText: true,
              ),
              const SizedBox(
                height: 20,
              ),
              MyTextField(
                controller: passwordController,
                hintText: 'Confirm your password',
                labelText: 'Confirm Password',
                obscureText: true,
              ),
              const SizedBox(
                height: 25,
              ),

              const SizedBox(
                height: 25,
              ),
              MyButton(onTap: signInUser, hintText: 'Sign Up'),

              const SizedBox(
                height: 25,
              ),
              //Icon button
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        'Or continue with',
                        style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyIconButton(imagePath: 'assets/images/google.png'),
                  MyIconButton(imagePath: 'assets/images/Discord.png'),
                  MyIconButton(imagePath: 'assets/images/Steam.png'),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyIconButton(imagePath: 'assets/images/EA.png'),
                  MyIconButton(imagePath: 'assets/images/Battlenet.png'),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already a member?',
                      style: GoogleFonts.openSans(
                        textStyle: Theme.of(context).textTheme.displaySmall,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.italic,
                        color: const Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                    const MyTextButton(lableText: 'login now', pageRoute: 'login',),
                  ],
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
