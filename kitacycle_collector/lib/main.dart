import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kitacycle_collector/dashboard.dart';
import 'package:kitacycle_collector/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen, // Set the primary color
        // primaryColor: Color.fromRGBO(119, 185, 94, 1), // Set the primary color
        scaffoldBackgroundColor: Colors.white,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: Center(
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
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
