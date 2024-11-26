import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  ChatScreen({super.key});

  final List<User> items = [
    User(
      msg: 'Hey! How are you!',
      time: '09:30',
      img:
          'https://media.licdn.com/dms/image/v2/D4D03AQEiSvxtgEulEg/profile-displayphoto-shrink_800_800/profile-displayphoto-shrink_800_800/0/1707332455470?e=1738195200&v=beta&t=QXd4uPW4ekignrHhMc0yhfpypkQay_ouNPfdCZQDaAo',
      name: 'Mohamed',
    ),
    User(
      msg: 'Where are you?',
      time: '22:45',
      img: 'https://th.bing.com/th/id/OIP.UYagQDMo7CCbBLXOPB5etAHaHa?rs=1&pid=ImgDetMain',
      name: 'Ahmed',
    ),
    User(
      msg: 'القاضيه ممكن؟',
      time: '85:45',
      img: 'https://th.bing.com/th/id/R.742bfc0597d7d0e4520cddd321cd9299?rik=aLH8mvKQAUajbQ&pid=ImgRaw&r=0',
      name: 'Afsha',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: const Text(
          'Chat UI',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              size: 30,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              radius: 16,
              backgroundImage: NetworkImage(items[index].img),
            ),
            title: Text(
              items[index].name,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(items[index].msg),
            trailing: Text(items[index].time),
          );
        },
        separatorBuilder: (context, index) {
          return Container(
            height: 1,
            width: double.infinity,
            color: Colors.grey,
            margin: const EdgeInsets.symmetric(horizontal: 12),
          );
        },
        itemCount: 3,
      ),
    );
  }
}

class User {
  final String name;
  final String msg;
  final String time;
  final String img;

  User({
    required this.msg,
    required this.time,
    required this.img,
    required this.name,
  });
}
