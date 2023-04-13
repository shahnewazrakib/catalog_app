import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isAnimate = false;
  final _formKey = GlobalKey<FormState>();

  moveToNext(BuildContext context) async {
    if(_formKey.currentState!.validate()){
      setState(() {
        isAnimate = true;
      });
      await Future.delayed(const Duration(seconds: 2));
      Navigator.pushNamed(context, '/');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Center(
                child: SizedBox(
      width: MediaQuery.of(context).size.width * 0.85,
      child: Column(children: [
        const SizedBox(
          height: 80,
        ),
        Center(
          child: Image.asset(
            'assets/images/register.png',
            width: 300,
          ),
        ),
        const SizedBox(
          width: double.infinity,
          height: 50,
          child: Text(
            'Sign In',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ),
        Form(
            key: _formKey,
            child: Column(
              children: [
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
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter your email address";
                    }
                    return null;
                  },
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
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter your password";
                    } else if (value.length < 8) {
                      return "Password must be 8 character long";
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () => moveToNext(context),
                  child: AnimatedContainer(
                    duration: const Duration(seconds: 2),
                    height: 50,
                    width: isAnimate ? 50 : 300,
                    margin: const EdgeInsets.symmetric(vertical: 15),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius:
                            BorderRadius.circular(isAnimate ? 50 : 10)),
                    child: isAnimate
                        ? const Icon(
                            Icons.done,
                            color: Colors.white,
                          )
                        : const Text(
                            "Login",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Colors.white),
                          ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/');
                  },
                  child: const Text(
                    "Don't have an account? Register here",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Color(0xFF616161)),
                  ),
                )
              ],
            ))
      ]),
    ))));
  }
}
