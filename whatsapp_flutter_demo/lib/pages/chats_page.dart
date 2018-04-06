import 'package:flutter/material.dart';
import './models/ChatModel.dart';

class ChatsPage extends StatefulWidget
{

  @override
  _ChatsPageState createState() => new _ChatsPageState();

}

class _ChatsPageState extends State<ChatsPage>
{
  List<ChatModel> chatsList = new List();

  void addNewString()
  {
    setState(() {
      chatsList.add(new ChatModel("Person Name", "https://raw.githubusercontent.com/Ashwinvalento/cartoon-avatar/master/lib/images/male/45.png", "last message goes here"));
    });
  }

  @override
  Widget build(BuildContext context)
  {
    return new Scaffold(
      body: new ListView(
        children:
        chatsList.map((ChatModel chat) {
          return new ChatListItem(chat);
        }).toList(),
      ),

      floatingActionButton: new FloatingActionButton(
		  	backgroundColor: new Color(0xff25d366),
			onPressed: addNewString,
			tooltip: 'New Chat',
			child: new Icon(Icons.message),
      ),
    );
  }
}
