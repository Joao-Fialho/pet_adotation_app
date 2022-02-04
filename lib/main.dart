import 'package:flutter/material.dart';
import 'package:pet_adotation_app/dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: size.height * 0.105,
          backgroundColor: Colors.white,
          leading: const Icon(
            Icons.menu,
            size: 33,
            color: Colors.grey,
          ),
          centerTitle: true,
          title: Column(
            children: [
              const Text(
                'Location',
                style: TextStyle(color: Colors.grey),
              ),
              Text(
                'Cameron St., Boston',
                style: TextStyle(color: Colors.grey[800]),
              ),
            ],
          ),
          actions: [
            CircleAvatar(
              backgroundImage:
                  Image.asset('assets/image/mulher_empoderada.jpg').image,
            ),
            Container(
              width: 18,
            ),
          ],
        ),
        body: const Dashboard());
  }
}
