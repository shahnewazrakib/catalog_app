import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Center(
                child: SizedBox(
      width: MediaQuery.of(context).size.width * 0.85,
      child: Column(children: [
        const SizedBox(
          height: 25,
        ),
        Center(
          child: Image.asset(
            'assets/images/login.png',
            width: 300,
          ),
        ),
        const SizedBox(
          width: double.infinity,
          height: 50,
          child: Text(
            'Sign Up',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ),
        Column(
          children: [
            TextFormField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                labelText: 'Full name',
                border: UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(
                    color: Colors.grey,
                    width: 2.0,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'Email address',
                border: UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(
                    color: Colors.grey,
                    width: 2.0,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(
                    color: Colors.grey,
                    width: 2.0,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            AnimatedContainer(
              duration: const Duration(seconds: 1),
              height: 50,
              margin: const EdgeInsets.symmetric(vertical: 15),
              width: double.infinity,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(10)),
              child: const Text(
                "Register",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/login');
              },
              child: const Text(
                "Already a user? Login here",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: Color(0xFF616161)),
              ),
            )
          ],
        )
      ]),
    ))));
  }
}
