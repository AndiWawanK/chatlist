import 'package:flutter/material.dart';
import 'package:chatty/theme.dart';

class ChatTile extends StatelessWidget {

  final String avatar;
  final String name;
  final String lastMessage;
  final String timestamp;

  ChatTile({required this.avatar, required this.name, required this.lastMessage, required this.timestamp});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16),
      child: Row(
      children: [
        Image.asset(
          avatar,
          width: 55,
          height: 55,
        ),
        const SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(name, style: titleTextStyle),
            Text(
              lastMessage,
              style: subtitleTextStyle,
            ),
          ],
        ),
        const Spacer(),
        Text(timestamp, style: subtitleTextStyle)
      ],
    ),
    );
  }
}
