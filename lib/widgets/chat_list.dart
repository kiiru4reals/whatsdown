import 'package:flutter/material.dart';
import 'package:whatsdown/models/info.dart';
import 'package:whatsdown/widgets/my_message_card.dart';
import 'package:whatsdown/widgets/sender_message_card.dart';

class ChatList extends StatelessWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: messages.length,
        itemBuilder: (context, index) {
          if (messages[index]['isMe'] == true) {
            // Message card goes here
            return MyMessage(message: messages[index]['text'].toString(), date: messages[index]['time'].toString());
          }
          // Sender message
          return SenderMessage(message: messages[index]['text'].toString(), date: messages[index]['time'].toString());
        });
  }
}