import 'package:chatty/pages/home_page.dart';
import 'package:chatty/theme.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: blueColor,
        body: Center(
          child: Column(
            children: [
              const SizedBox(height: 60),
              Image.asset(
                'assets/images/logo.png',
                width: 150,
                height: 150,
              ),
              Text('Welcome Again', style: loginTitleStyle),
              Text('Please enter a registered credential',
                  style: loginSubTitleStyle),
              const SizedBox(
                height: 40,
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius:
                          const BorderRadius.vertical(top: Radius.circular(25))),
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
                  child: Column(
                    children: [
                      TextFormField(
                        style: const TextStyle(fontSize: 16),
                        decoration: InputDecoration(
                          hintText: 'youremail@example.com',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18)),
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        style: const TextStyle(fontSize: 16),
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: '******',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18.0)),
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                        ),
                      ),
                      const SizedBox(height: 15),
                      SizedBox(
                          width: double.infinity,
                          height: 48,
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                              },
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                ),
                              ),
                              child: const Text(
                                'SigIn',
                                style: TextStyle(fontSize: 16),
                              )))
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
