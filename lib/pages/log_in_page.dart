import 'package:flutter/material.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
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
              const TextField(
                key: Key('email'),
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: ('test@test.com'),
                  //enabled: _isLoading == false,
                ),
              ),
              const TextField(
                key: Key('password'),
                decoration: InputDecoration(
                  labelText: 'password',
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Sign In'),
                    style: ElevatedButton.styleFrom(
                      onPrimary: Colors.white,
                    ),
                  ),
                  SizedBox(width: 20.0),
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
