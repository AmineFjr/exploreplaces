import 'package:exploreplaces/pages/header.dart';
import 'package:exploreplaces/pages/my_home_page.dart';
import 'package:flutter/material.dart';
import 'package:exploreplaces/pages/signUp.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  LoginState createState() => LoginState();
}

class LoginState extends State<Login> {
  late TextEditingController userNameController;
  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    userNameController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    userNameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  const Header(),
                  const SizedBox(height: 68),
                  const Center(
                    child: Text("Login",
                        style: TextStyle(
                            fontSize: 30,
                            color: Color(0xFF9E00FF),
                            fontWeight: FontWeight.w300)),
                  ),
                  const SizedBox(height: 59),
                  _buildLoginSection(context),
                  const SizedBox(height: 16),
                  _buildPasswordSection(context),
                  const SizedBox(height: 22),
                  _buildForgotPasswordSection(context),
                  const SizedBox(height: 27),
                  _buildLoginButton(),
                  const SizedBox(height: 72),
                  Center(
                    child: Text(
                      "WELCOME",
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                  ),
                  const SizedBox(height: 29),
                  const Center(
                    child: Text(
                      "Don't you have an account?",
                      style: TextStyle(
                        color: Color(0xFF9E00FF),
                        fontSize: 18,
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  _buildSignUpButton(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLoginSection(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "User Name",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 6),
          TextField(
            controller: userNameController,
            decoration: const InputDecoration(
              hintText: "John...",
              border: OutlineInputBorder(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPasswordSection(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Password",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 5),
          TextField(
            controller: passwordController,
            obscureText: true,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildForgotPasswordSection(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Forgot Password",
            style: TextStyle(
              color: Color(0xFF9E00FF),
              fontSize: 18,
            ),
          ),
          Text(
            "Connect as Visitor",
            style: TextStyle(
              color: Color(0xFF9E00FF),
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLoginButton() {
    return Center(
      child: OutlinedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const MyHomePage()),
          );
        },
        child: const Text("LOGIN"),
      ),
    );
  }

  Widget _buildSignUpButton() {
    return Center(
      child: OutlinedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const SignUp()),
          );
        },
        child: const Text("Sign Up"),
      ),
    );
  }
}
