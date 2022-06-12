import 'package:ahmed_shop/controllers/auth_controller.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final bool _isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 80.0,
              ),
              Image.asset(
                'assests/images/logo.jpg',
                width: 100.0,
                height: 100.0,
              ),
              const SizedBox(
                height: 8.0,
              ),
              const Text('Ahmed Tech'),
              const SizedBox(
                height: 30.0,
              ),
              TextField(
                controller: _emailController,
                key: Key('email'),
                decoration: const InputDecoration(
                  labelText: 'Email',
                  hintText: ('test@test.com'),
                  //enabled: _isLoading == false,
                ),
              ),
              TextField(
                controller: _passwordController,
                key: Key('password'),
                decoration: const InputDecoration(
                  labelText: 'password',
                ),
              ),
              const SizedBox(
                height: 50.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () async {
                      await AuthController().signUpUser(
                          _emailController.text, _passwordController.text);
                    },
                    child: const Text('Sign up'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
