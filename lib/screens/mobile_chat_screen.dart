import 'package:flutter/material.dart';
import 'package:whatsdown/consts/colors.dart';
import 'package:whatsdown/models/info.dart';
import 'package:whatsdown/widgets/chat_list.dart';

class MobileChatScreen extends StatelessWidget {
  const MobileChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(info[0]['name'].toString()),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.video_call, color: Colors.white,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.call, color: Colors.white,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert, color: Colors.white,))
        ],
      ),
      body: Column(
        children: [
          // Chat list
          Expanded(child: ChatList()),
          // Text input
          TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: mobileChatBoxColor,
              prefixIcon: Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Icon(Icons.emoji_emotions, color: Colors.grey,),

                ],
              ),
              ),
              suffixIcon: Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.camera_alt, color: Colors.grey,),
                    Icon(Icons.attach_file, color: Colors.grey,),
                    Icon(Icons.mic_outlined, color: Colors.grey,),
                  ],
                ),
              ),
              hintText: "Type a message",
              border: OutlineInputBorder(
                  borderRadius:  BorderRadius.circular(20),
                  borderSide: const BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
              ),
              contentPadding: EdgeInsets.all(10),

            ),
          )
        ],
      ),
      
    );
  }
}
