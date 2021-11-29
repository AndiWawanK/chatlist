import 'package:chatty/theme.dart';
import 'package:flutter/material.dart';
import 'package:chatty/widgets/chat_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: blueColor,
        body: Center(
          child: Column(
            children: [
              const SizedBox(height: 60),
              Image.asset('assets/images/profile_pic.png',
                  height: 100, width: 100),
              const SizedBox(height: 20),
              Text('Sabrina Carpenter',
                  style: TextStyle(fontSize: 20, color: whiteColor)),
              Text('Travel Freelancer',
                  style: TextStyle(
                    color: lightBlueColor,
                    fontSize: 16,
                  )),
              const SizedBox(height: 40),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.675,
                padding: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(40))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Friends', style: titleTextStyle,),
                    ChatTile(
                      avatar: 'assets/images/hackathon.png',
                      name: 'Andi Firwansyah',
                      lastMessage: 'Hei bro apakah kabs?',
                      timestamp: '13:44 PM'
                    ),
                    ChatTile(
                      avatar: 'assets/images/hackhotn2.png',
                      name: 'Anonym',
                      lastMessage: 'Hei bro',
                      timestamp: '13:20 PM'
                    ),
                    const SizedBox(height: 20,),
                    Text('Groups', style: titleTextStyle),
                    ChatTile(
                      avatar: 'assets/images/avatar1.png',
                      name: 'Gibah Kuy',
                      lastMessage: 'Astaga si anu loh',
                      timestamp: 'Now'
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
