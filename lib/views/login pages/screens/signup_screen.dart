import 'package:flutter/material.dart';
import 'package:gasmy_food_app/views/login%20pages/components/my_text_field.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 18),
              child: Text(
                "Sign Up",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 22, top: 45, right: 22),
              child: MyTextField(
                controller: _nameController,
                label: "Name",
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 22, top: 20, right: 22),
              child: MyTextField(
                controller: _nameController,
                label: "Email",
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 22, top: 20, right: 22),
              child: MyTextField(
                controller: _nameController,
                label: "Password",
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: Center(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          fixedSize: Size(370, 50),
                          backgroundColor: Color.fromARGB(255, 206, 75, 4),
                          foregroundColor: Colors.white),
                      onPressed: () {},
                      child: Text(
                        "Sign Up",
                        style: TextStyle(fontSize: 20),
                      ))),
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: Center(
                  child: Text(
                "Or sign up with social account",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.black54,
                    fontSize: 17),
              )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset("images/new-google-favicon-512.png",width: 40,),
                Image.asset(
                    "images/facebook-logo-icon-vector-27990381-e1592215786624.jpg",width: 40,)
              ],
            )
          ],
        ),
      ),
    );
  }
}
