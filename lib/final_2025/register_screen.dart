import 'package:different_flutter_ui/final_2025/sum_screen.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
      ),
      body: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 20,
          children: [
            Image.network(
              'https://img.freepik.com/free-photo/wide-angle-shot-single-tree-growing-clouded-sky-during-sunset-surrounded-by-grass_181624-22807.jpg',
             height: 150,
              width: 150,
            ),
            TextFormField(
              controller: emailController,
              decoration: const InputDecoration(
                hintText: 'example@gmail.com',
                prefixIcon: Icon(Icons.email),
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'cannot be empty';
                }
                return null;
              },
            ),
            TextFormField(
              controller: passwordController,
              decoration: const InputDecoration(
                hintText: 'create new password',
                prefixIcon: Icon(Icons.password),
                suffixIcon: Icon(Icons.remove_red_eye),
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'cannot be empty';
                }
                return null;
              },
            ),
            ElevatedButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  insertData({
                    'email': emailController.text,
                    'password': passwordController.text,
                  });
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SumScreen(),
                    ),
                  );
                  // Navigator.pushNamed(context, '/sumScreen');
                }
              },
              child: const Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}

Future<void> insertData(Map<String, dynamic> myData) async {
  // // Get a reference to the database.
  // final db = await database;
  //
  // await db.insert(
  //   'myDatabaseName',
  //   myData,
  // );
}
