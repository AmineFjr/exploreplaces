import 'package:exploreplaces/pages/header.dart';
import 'package:exploreplaces/pages/login.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  SignUpState createState() => SignUpState();
}

class SignUpState extends State<SignUp> {
  late TextEditingController emailController;
  late TextEditingController userNameController;
  late TextEditingController passwordController;
  late TextEditingController confirmpasswordController;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    userNameController = TextEditingController();
    passwordController = TextEditingController();
    confirmpasswordController = TextEditingController();
  }

  @override
  void dispose() {
    emailController.dispose();
    userNameController.dispose();
    passwordController.dispose();
    confirmpasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                const Header(),
                const SizedBox(height: 79),
                Center(
                  child: Text(
                    "Sign Up",
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                ),
                const SizedBox(height: 28),
                _buildEmailColumn(),
                const SizedBox(height: 12),
                _buildUsernameColumn(),
                const SizedBox(height: 27),
                _buildPasswordColumn(),
                const SizedBox(height: 16),
                _buildConfirmColumn(),
                const SizedBox(height: 24),
                _buildLoginButton(),
                const SizedBox(height: 39),
                Center(
                  child: OutlinedButton(
                    child: const Text(
                      'Sign Up',
                      textDirection: TextDirection.rtl,
                    ),
                    onPressed: () => {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildEmailColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Email",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: 7),
        TextField(
          controller: emailController,
          decoration: const InputDecoration(
            hintText: "example@example.com",
            border: OutlineInputBorder(),
          ),
        ),
      ],
    );
  }

  Widget _buildUsernameColumn() {
    return Column(
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
    );
  }

  Widget _buildPasswordColumn() {
    return Column(
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
    );
  }

  Widget _buildConfirmColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Confirm Password",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: 6),
        TextField(
          controller: confirmpasswordController,
          obscureText: true,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
          ),
        ),
      ],
    );
  }

Widget _buildLoginButton() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Login()),
          );
        },
        child: Text("I have an account"),
      ),
    ],
  );
}

}
