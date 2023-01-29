import 'package:flutter/material.dart';
import 'package:myunpam/dashboard.dart';

void main() {
  runApp(const SplashScreen());
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(builder: (context) {
        return Scaffold(
            backgroundColor: Color(0xFF4D5496),
            body: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/logo_unpam.png'),
                        SizedBox(width: 10),
                        Column(
                          children: [
                            Text("UNIVERSITAS",
                                style: TextStyle(
                                    color: Color(0xFFFFF500), fontSize: 24)),
                            Text("PAMULANG",
                                style: TextStyle(
                                    color: Color(0xFFFFF500),
                                    fontSize: 26,
                                    fontWeight: FontWeight.w700)),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 71,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 60, right: 60),
                      child: Column(
                        children: [
                          Container(
                            child: TextField(
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(6)),
                                  hintText: 'Username'),
                            ),
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(6)),
                                // contentPadding: EdgeInsets.symmetric(vertical: 10),
                                hintText: 'Password'),
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          SizedBox(
                            width: 270,
                            height: 50,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFFFFF500),
                                  foregroundColor: Color(0xFF4D5496)),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            DashboardScreen()));
                              },
                              child: Text('LOGIN'),
                            ),
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Forgot Password ?',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          SizedBox(
                            height: 71,
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'New Student?',
                                  style: TextStyle(color: Colors.white),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Register Now!',
                                    style: TextStyle(color: Color(0xFFFFF500)),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ));
      }),
    );
  }
}
