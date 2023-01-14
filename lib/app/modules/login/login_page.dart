import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0XFF0092B9),
              Color(0XFF0167B2),
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/timer.png',
                width: screenSize.height * .3,
                height: screenSize.width * .5,
              ),
              SizedBox(
                height: screenSize.height * 0.10,
              ),
              SizedBox(
                width: screenSize.width * .8,
                height: 49,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[200],
                  ),
                  child: Image.asset('assets/images/google.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
