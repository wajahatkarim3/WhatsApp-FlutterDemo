import 'package:flutter/material.dart';

class ChatListItem extends StatelessWidget
{
	final ChatModel chatModel;

	ChatListItem(this.chatModel);

	@override
	Widget build(BuildContext context)
	{
		return new Container(
			child: new Padding(
				padding: new EdgeInsets.all(10.0),
				child: new Row(children: [
					// Avatar Image
					new Padding(
						padding: new EdgeInsets.all(3.0),
						child: new CircleAvatar(
							radius: 25.0,
							backgroundColor: Colors.blue,
							backgroundImage: new NetworkImage(chatModel.avatar)
						)
					),
					// Name & Last Message
					new Padding(
						padding: new EdgeInsets.only(left: 10.0),
						child: new Column(
							crossAxisAlignment: CrossAxisAlignment.start,
							children: [
								new Row(
									mainAxisSize: MainAxisSize.min,
									children: <Widget>[
										// Name
										new Text(
											chatModel.name,
											style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
											textAlign: TextAlign.start
										),
										// Time
										new Text(
											"09:34 AM",
											style: new TextStyle(fontSize: 12.0),
											textAlign: TextAlign.end
										)
									]
								),
								// Last Message
								new Text(
									chatModel.lastMessage,
									style: new TextStyle(fontSize: 14.0)
								)
							]
						),
					),

				])
			),
			decoration: new BoxDecoration(
				border: new Border(
					bottom: new BorderSide(color: Theme.of(context).dividerColor)
				)
			)
		);
	}
}

class ChatModel
{
	String name;
	String avatar;
	String lastMessage;

	ChatModel(this.name, this.avatar, this.lastMessage);
}
