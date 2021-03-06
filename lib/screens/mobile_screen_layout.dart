import 'package:flutter/material.dart';
import 'package:whatsdown/consts/colors.dart';
import 'package:whatsdown/widgets/contacts_list.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text("WhatsDown", style: TextStyle(
              color: Colors.grey,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),),
            backgroundColor: appBarColor,
            elevation: 0,
            actions: [
              IconButton(onPressed: (){}, icon: Icon(Icons.search, color: Colors.grey,),),
              IconButton(onPressed: (){}, icon: Icon(Icons.more_vert, color: Colors.grey,),),
            ],
            bottom: TabBar(
              indicatorColor: tabColor,
                indicatorWeight: 4,
                labelColor: tabColor,
                unselectedLabelColor: Colors.grey,
                labelStyle: TextStyle(
                    fontWeight: FontWeight.bold
                ),
                tabs: [
              Tab(child:Text("CHATS")),
              Tab(child:Text("STATUS")),
              Tab(child: Text("CALLS")),
            ]),
          ),
          body: ContactsList(),
          floatingActionButton: FloatingActionButton(
            onPressed: (){},
            backgroundColor: tabColor,
            child: Icon(Icons.comment, color: Colors.white,),
            
          ),
        ));
  }
}
