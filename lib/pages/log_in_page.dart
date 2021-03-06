import 'package:ahmed_shop/controllers/auth_controller.dart';
import 'package:ahmed_shop/main.dart';
import 'package:ahmed_shop/pages/register_page.dart';
import 'package:flutter/material.dart';

class LogInPage extends StatefulWidget {
  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _paswordController = TextEditingController();

  final bool _isLoading = false;

  loginUp() async {
    final res = await AuthController()
        .loginUser(_emailController.text, _paswordController.text);
    if (res != 'Success') {
      return AlertDialog(title: Text('Error Occured'));
    } else {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => MyHomePage(title: _emailController.text),
        ),
      );
    }
  }

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
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: ('test@test.com'),
                  filled: true,
                  //enabled: _isLoading == false,
                ),
              ),
              TextField(
                controller: _paswordController,
                key: Key('password'),
                decoration: InputDecoration(
                  labelText: 'password',
                  filled: true,
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      loginUp;
                    },
                    child: Text('Sign In'),
                    style: ElevatedButton.styleFrom(
                      onPrimary: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 20.0),
                  ElevatedButton(
                    onPressed: () {},
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
