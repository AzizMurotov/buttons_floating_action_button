import 'package:flutter/material.dart';
import 'package:click_app/button_page.dart';
import 'package:click_app/home_page.dart';
import 'package:click_app/second_page.dart';

class SecondPage extends StatefulWidget {
  static const String id = "second_page";

  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "second page",
          style: TextStyle(color: Colors.amber),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey,
        leading: IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, HomePage.id);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.amber,
            )),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, ButtonPage.id);
              },
              icon: const Icon(
                Icons.arrow_forward,
                color: Colors.amber,
              ))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  print("assalomu aleykum");
                },
                child: const Text(
                  "murojat",
                  style: TextStyle(
                      color: Colors.amber, backgroundColor: Colors.grey,
                      fontSize: 60),
                )),
            OutlinedButton(onPressed: () {
              print("outline button bosildi");
            },
              style: OutlinedButton.styleFrom(
                  side: BorderSide(width: 1, color: Colors.amber,)),
              child: const Text(
                "outline button",
                style: TextStyle(color: Colors.amber),
              ),),
            ElevatedButton(onPressed: () {
              print("elevation button bosildi");
            },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.grey),
                ), child: const Text("elevation",
              style: TextStyle(color: Colors.amber),),
            ),
          ],
        ),
      ),
    );
  }
}
