import 'package:flutter/material.dart';
import 'package:whatsdown/consts/colors.dart';

class WebSearchBar extends StatelessWidget {
  const WebSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*.097,
      width: MediaQuery.of(context).size.width*.4,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: dividerColor),

        )
      ),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: searchBarColor,
          prefixIcon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Icon(Icons.search, size: 20,),
          ),/*const Padding(padding: EdgeInsets.symmetric(horizontal: 20)
            ,),*/
          hintStyle: const TextStyle(fontSize: 14),
          hintText: 'Search chats',
          border: OutlineInputBorder(
            borderRadius:  BorderRadius.circular(20),
            borderSide: const BorderSide(
              width: 0,
              style: BorderStyle.none,
            )
          ),
          contentPadding: const EdgeInsets.all(10),
        ),
      ),

    );
  }
}
