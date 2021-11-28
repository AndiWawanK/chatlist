import 'package:chatty/theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: blueColor,
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 60),
              Image.asset('assets/images/profile_pic.png',
                  height: 100, width: 100),
              SizedBox(height: 20),
              Text('Sabrina Carpenter',
                  style: TextStyle(fontSize: 20, color: whiteColor)),
              Text('Travel Freelancer',
                  style: TextStyle(
                    color: lightBlueColor,
                    fontSize: 16,
                  )),
              SizedBox(height: 40),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(40))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Friends', style: titleTextStyle,),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        Image.asset('assets/images/hackathon.png', width: 55, height: 55,),
                        SizedBox(width: 16,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Andi Firwansyah', style: titleTextStyle),
                            Text('Murtad dari React Native . . .', style: subtitleTextStyle,),
                          ],
                        ),
                        Spacer(),
                        Text('Now', style: subtitleTextStyle)
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
