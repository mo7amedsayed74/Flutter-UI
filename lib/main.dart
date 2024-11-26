import 'package:different_flutter_ui/chat_app/chat_details_screen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChatDetailsScreen(),
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

final List<User> items = [
  User(
    msg: 'Hey! How are you!',
    time: '09:30',
    img:'https://media.licdn.com/dms/image/v2/D4D03AQEiSvxtgEulEg/profile-displayphoto-shrink_800_800/profile-displayphoto-shrink_800_800/0/1707332455470?e=1738195200&v=beta&t=QXd4uPW4ekignrHhMc0yhfpypkQay_ouNPfdCZQDaAo',
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


