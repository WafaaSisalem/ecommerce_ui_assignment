import 'package:flutter/material.dart';
import 'package:flutter_application_2/routes.dart';
import 'package:flutter_application_2/widget/custom_textfield.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text('Sign Up')),
      body: Center(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.network(
                'https://media.istockphoto.com/id/1305268276/vector/registration-abstract-concept-vector-illustration.jpg?s=612x612&w=0&k=20&c=nfvUbHjcNDVIPdWkaxGx0z0WZaAEuBK9SyG-aIqg2-0=',
                height: 300,
                fit: BoxFit.cover,
              ),
              CustomTextField(
                hintText: 'Email',
                controller: emailController,
                validator: validateEmail,
              ),
              CustomTextField(
                hintText: 'Password',
                isPassword: true,
                controller: passwordController,
                validator: validatePassword,
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, Routes.login);
                },
                child: Text('Already have an account?'),
              ),
              ElevatedButton(
                onPressed: () => _signUp(context),
                child: Text('Sign Up'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String? validateEmail(String? email) {
    if (email == null || email.isEmpty) {
      return 'Please enter your email';
    } else if (email.contains('@') && email.contains('.')) {
      return null;
    } else {
      return 'Invalid email format';
    }
  }

  String? validatePassword(String? password) {
    if (password == null || password.isEmpty) {
      return 'Please enter your password';
    } else if (password.length < 8) {
      return 'Password must be at least 8 characters';
    }
    return null;
  }

  _showSnackBar(BuildContext context, String message, {Color? color}) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message), backgroundColor: color));
  }

  _signUp(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      return Navigator.pushReplacementNamed(context, Routes.home);
    } else {
      _showSnackBar(
        context,
        'Please fill in all fields correctly',
        color: Colors.red,
      );
    }
  }
}
