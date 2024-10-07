import 'package:flutter/material.dart';
import 'package:next_app/components/my_button.dart';
import 'package:next_app/components/my_textfield.dart';
import 'package:next_app/services/auth/auth_service.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;

  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //tec tediting controllers
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();
  //login metod
  void login() async {
    /*

    fill out auth
    
    */
    final authService = AuthService();
    //try sign in
    try {
      await authService.signInWithEmailPassword(
          emailController.text, passwordController.text);
    } catch (e) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text(e.toString()),
              ));
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //logo
          Icon(
            Icons.lock_open_rounded,
            size: 100,
            color: Theme.of(context).colorScheme.inversePrimary,
          ),
          const SizedBox(height: 25),
          //mesage or slogan
          Text(
            "Food delivery app",
            style: TextStyle(
              fontSize: 16,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
          const SizedBox(height: 10),
          //email textfield
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: MyTextfield(
              controller: emailController,
              hintText: "Email",
              obscureText: false,
            ),
          ),
          const SizedBox(height: 10),
          //password text field
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: MyTextfield(
              controller: passwordController,
              hintText: "Password",
              obscureText: true,
            ),
          ),
          const SizedBox(height: 10),
          //sighn in button
          MyButton(text: "Sign In", onTap: login),
          const SizedBox(height: 10),
          // dont have account? register
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Dont have an accont?",
                style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary),
              ),
              const SizedBox(width: 4),
              GestureDetector(
                onTap: widget.onTap,
                child: Text("Register",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontWeight: FontWeight.bold)),
              ),
            ],
          )
        ],
      ),
    );
  }
}
