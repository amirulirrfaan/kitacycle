import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kitacycle_collector/dashboard.dart';
import 'package:kitacycle_collector/register.dart';

class Login extends StatefulWidget {
  const Login({super.key, required this.title});

  final String title;

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 80,
              ),
              Image.asset('assets/login_image.png'),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Login',
                    textAlign: TextAlign.right,
                    style: GoogleFonts.poppins(
                        fontSize: 40, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              SizedBox(
                height: 70,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 5.0),
              SizedBox(
                height: 70,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(
                        Icons.remove_red_eye_outlined,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: SizedBox(
                  height: 50,
                  width: 300,
                  child: ElevatedButton(
                    child: const Text(
                      'Login',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Dashboard(
                                  title: '',
                                )),
                      );
                    },
                  ),
                ),
              ),
              InkWell(
                child: const Text('Forgot Password ?',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                    )),
                onTap: () {},
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Do you have account?',
                  ),
                  InkWell(
                    child: const Text(
                      ' Create New',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RegisterPage()),
                      );
                    },
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
