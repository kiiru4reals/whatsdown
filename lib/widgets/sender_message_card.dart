import 'package:flutter/material.dart';
import 'package:whatsdown/consts/colors.dart';

class SenderMessage extends StatelessWidget {
  final String message;
  final String date;
  const SenderMessage({Key? key, required this.message, required this.date}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width-45,
        ),
        child: Card(
          elevation: 1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          color: senderMessageColor,
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Stack(
              children: [
                Padding (padding: const EdgeInsets.only(top:5,left:10,bottom:20, right:30),
                  child: Text(message, style: TextStyle(
                      fontSize: 16
                  ),),
                ),
                Positioned(
                    bottom: 2,
                    right: 10,

                    child: Row(
                      children: [
                        Text(date, style: TextStyle(
                          fontSize: 13,
                          color: Colors.white60,
                        ),),
                        const SizedBox(width: 5,),
                        const Icon(Icons.done_all, size: 20, color: Colors.blue,)
                      ],
                    ))

              ]
          ),

        ),
      ),
    );
  }
}
