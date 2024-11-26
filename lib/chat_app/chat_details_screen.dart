import 'package:flutter/material.dart';

class ChatDetailsScreen extends StatelessWidget {
  const ChatDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        backgroundColor: Colors.blue[800],
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        title: const Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                  'https://th.bing.com/th/id/OIP.UYagQDMo7CCbBLXOPB5etAHaHa?rs=1&pid=ImgDetMain'),
            ),
            SizedBox(width: 8),
            Text(
              'Mohamed Sayed',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 5.0,
                        horizontal: 10.0,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: const BorderRadiusDirectional.only(
                          bottomEnd: Radius.circular(15),
                          topStart: Radius.circular(15),
                          topEnd: Radius.circular(15),
                        ),
                      ),
                      child: const Text(
                        'Hey! How are you',
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 5.0,
                        horizontal: 10.0,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(0.2),
                        borderRadius: const BorderRadiusDirectional.only(
                          bottomStart: Radius.circular(15),
                          topStart: Radius.circular(15),
                          topEnd: Radius.circular(15),
                        ),
                      ),
                      child: const Text(
                        'Hey! How are you',
                      ),
                    ),
                  ),
                  // Reusable Component
                  buildMsg(isSender: false, text: 'Reusable 1'),
                  buildMsg(isSender: true, text: 'Reusable 2'),
                ],
              ),
            ),
            Container(
              height: 50,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue[800]!,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: TextFormField(
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Type your msg...'),
                      ),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {},
                    color: Colors.blue[800],
                    height: 50,
                    child: const Icon(
                      Icons.send,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMsg({
    required bool isSender,
    required String text,
  }) {
    return Align(
      alignment: isSender
          ? AlignmentDirectional.centerEnd
          : AlignmentDirectional.centerStart,
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 5.0,
          horizontal: 10.0,
        ),
        decoration: BoxDecoration(
          color: isSender ? Colors.blue.withOpacity(0.2) : Colors.grey[300],
          borderRadius: BorderRadiusDirectional.only(
            topStart: const Radius.circular(10.0),
            topEnd: const Radius.circular(10.0),
            bottomStart: isSender
                ? const Radius.circular(10.0)
                : const Radius.circular(0),
            bottomEnd: isSender
                ? const Radius.circular(0)
                : const Radius.circular(10.0),
          ),
        ),
        child: Text(
          text,
        ),
      ),
    );
  }
}
