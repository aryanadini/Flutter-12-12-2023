import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Chat {
  late String name;
  late String msg;
  late String img;
  late String date;
  Chat(
      {required this.name,
      required this.msg,
      required this.img,
      required this.date});
}

class Whatsapp2 extends StatefulWidget {
  const Whatsapp2({super.key});

  @override
  State<Whatsapp2> createState() => _Whatsapp2State();
}

class _Whatsapp2State extends State<Whatsapp2> {
  List<Chat> chatlist = [
    Chat(
        name: "arya",
        msg: "hai",
        img:
            "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8f/Kochi_Skyline.jpg/209px-Kochi_Skyline.jpg",
        date: "12/12"),
    Chat(
        name: "amnu",
        msg: "hlo",
        img:
            "https://upload.wikimedia.org/wikipedia/commons/thumb/5/57/BACKWATERS_OF_KUTTANAD.jpg/420px-BACKWATERS_OF_KUTTANAD.jpg",
        date: "13/5/22")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("bio"),
        leading: Icon(Icons.menu),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.camera_alt_outlined,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.white,
              )),
          PopupMenuButton<dynamic>(
            itemBuilder: (context) => [
              PopupMenuItem(value: 1, child: Text('new grp')),
              PopupMenuItem(value: 2, child: Text('starred msg'))
            ],
            onSelected: (value) {
              switch (value) {
                case 1:
                  print('get the app');
                  break;
                case 2:
                  print('about');
                  break;
              }
            },
            offset: Offset(0, 100),
            color: Colors.grey,
            elevation: 2,
          )
        ],
      ),
      body: ListView.builder(
          itemCount: chatlist.length,
          itemBuilder: (Buildcontext, int index) {
            Chat c = chatlist[index];
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage("${c.img}"),
              ),
              title: Text("${c.name}"),
              subtitle: Text("${c.msg}"),
              trailing: Text("${c.date}"),
            );
          }),
    );
  }
}
