import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../../../constants.dart';

class LoginForm extends StatelessWidget {
  LoginForm({
    Key? key,
  }) : super(key: key);

  final emailaddController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: emailaddController.text,
      password: passwordController.text,
    );
  }

  //header for login form
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Text(
            "Welcome!",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          Text("Enter login details to continue"),
          SizedBox(height: defaultPadding * 2),

          //email textfield
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            cursorColor: kPrimaryColor,
            onSaved: (email) {},
            controller: emailaddController,
            decoration: InputDecoration(
              hintText: "Email",
              prefixIcon: Padding(
                padding: const EdgeInsets.all(defaultPadding),
                child: Icon(Icons.person),
              ),
            ),
          ),

          //passwrod textfield
          Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding),
            child: TextFormField(
              textInputAction: TextInputAction.done,
              controller: passwordController,
              obscureText: true,
              cursorColor: kPrimaryColor,
              decoration: InputDecoration(
                hintText: "Password",
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(defaultPadding),
                  child: Icon(Icons.lock),
                ),
              ),
            ),
          ),

          // not working forgot password
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Forgot Password?',
                  style: TextStyle(color: Color(0xFFEE0F37)),
                ),
              ],
            ),
          ),
          const SizedBox(height: 50),

          //login button
          Hero(
            tag: "login_btn",
            child: ElevatedButton(
              onPressed: signUserIn,
              child: Text(
                "Login",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(height: defaultPadding),

          // register not functioning too
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don't have an account yet?",
                style: TextStyle(color: Colors.grey[700]),
              ),
              const SizedBox(width: 4),
              const Text(
                'Register',
                style: TextStyle(
                  color: Color(0xFFEE0F37),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
