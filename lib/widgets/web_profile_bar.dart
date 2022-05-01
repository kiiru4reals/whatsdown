import 'package:flutter/material.dart';
import 'package:whatsdown/consts/colors.dart';

class WebProfileBar extends StatelessWidget {
  const WebProfileBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery
          .of(context)
          .size
          .height * .077,
      width: MediaQuery
          .of(context)
          .size
          .width * .4,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border(right: BorderSide(
          color: dividerColor,
        ),),
        color: webAppBarColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CircleAvatar(
            backgroundImage: NetworkImage(
                'https://images.unsplash.com/photo-1519659528534-7fd733a832a0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=726&q=80'),
            radius: 20,
          ),
          Row(
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.comment,
                color: Colors.grey,),
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.more_vert,
                color: Colors.grey,)
              ),
            ],
          ),
        ],
      ),
    );
  }
}
