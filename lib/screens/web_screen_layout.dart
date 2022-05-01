import 'package:flutter/material.dart';
import 'package:whatsdown/consts/colors.dart';
import 'package:whatsdown/widgets/chat_list.dart';
import 'package:whatsdown/widgets/contacts_list.dart';
import 'package:whatsdown/widgets/web_chat_app_bar.dart';
import 'package:whatsdown/widgets/web_profile_bar.dart';
import 'package:whatsdown/widgets/web_search_bar.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                // Web profile bar
                WebProfileBar(),
                // Web search bar
                WebSearchBar(),
                // Contact list
                ContactsList(),
              ],
            ),
          ),
        ),
        // Web screen
        Container(
          width: MediaQuery.of(context).size.width * .60,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/backgroundImage.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              // Chat app bar
              WebChatAppBar(),
              // Chat list
              Expanded(child: ChatList()),
              // Text message input box
              Container(
                height: MediaQuery.of(context).size.height * .07,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: dividerColor,
                    ),
                  ),
                  color: chatBarMessage,
                ),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.emoji_emotions_outlined,
                          color: Colors.grey,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.attach_file,
                          color: Colors.grey,
                        )),
                    Expanded(
                        child: Padding(
                      padding: EdgeInsets.only(left: 10, right: 15),
                      child: TextField(
                        decoration: InputDecoration(
                          fillColor: searchBarColor,
                          filled: true,
                          hintText: "Type message",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                width: 0,
                                style: BorderStyle.none,
                              )),
                          contentPadding: EdgeInsets.only(left: 20),
                        ),
                      ),
                    )),
                    IconButton(onPressed: (){}, icon: Icon(Icons.mic, color: Colors.grey,))
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    ));
  }
}
