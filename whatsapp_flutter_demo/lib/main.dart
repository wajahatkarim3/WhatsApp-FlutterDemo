import 'package:flutter/material.dart';
import './pages/call_history.dart';
import './pages/camera_page.dart';
import './pages/status_page.dart';
import './pages/chats_page.dart';

void main()
{
  runApp(
    new MaterialApp(
      home: new WhatsAppUiClone(),
      title: 'WhatsApp',
      theme: new ThemeData(
        primaryColor: new Color(0xff075E54),
        accentColor: new Color(0xff25D366),
      ),
    )
  );
}

class WhatsAppUiClone extends StatefulWidget
{
  _WhatsAppUiClone createState() => new _WhatsAppUiClone();
}

class _WhatsAppUiClone extends State<WhatsAppUiClone> with SingleTickerProviderStateMixin
{
  TabController tabcontrol;

  @override
  void initState()
  {
    super.initState();
    tabcontrol = new TabController(
      vsync: this,
      length: 4,
    );
  }

  @override
  void dispose()
  {
    super.dispose();
    tabcontrol.dispose();
  }

  @override
  Widget build(BuildContext context)
  {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: new Text('WhatsApp'),
        elevation: 0.7,
        bottom: new TabBar(
          controller: tabcontrol,
          indicatorColor: Colors.white,
          tabs: <Tab>[
            new Tab(icon: new Icon(Icons.camera_alt)),
            new Tab(text: 'CHATS',),
            new Tab(text: 'STATUS',),
            new Tab(text: 'CALLS',)
          ],
        ),
      ),
      body: new TabBarView(
        controller: tabcontrol,
        children: <Widget>[
          new CameraPage(),
          new ChatsPage(),
          new CallHistory(),
          new CallHistory()
        ],
      ),
    );
  }
}
