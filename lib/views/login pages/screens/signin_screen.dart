import 'package:flutter/material.dart';
import 'package:gasmy_food_app/views/login%20pages/components/my_text_field.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
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
                "Login",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 18, right: 18),
              child: MyTextField(label: "Email", controller: _emailController),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 18, right: 18),
              child:
                  MyTextField(label: "Password", controller: _passwordController),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Forot your Password ?",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  )
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
                          "Login",
                          style: TextStyle(fontSize: 20),
                        ))),
              ),
               Padding(
                padding: const EdgeInsets.all(70),
                child: Center(
                    child: Text(
                  "Or login in with social account",
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
