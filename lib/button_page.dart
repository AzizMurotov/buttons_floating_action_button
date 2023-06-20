import 'package:click_app/home_page.dart';
import 'package:click_app/second_page.dart';
import 'package:flutter/material.dart';
class ButtonPage extends StatefulWidget {
  static const String id = "button_page";
  const ButtonPage({Key? key}) : super(key: key);

  @override
  State<ButtonPage> createState() => _ButtonPageState();
}

class _ButtonPageState extends State<ButtonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "button page",
          style: TextStyle(color: Colors.amber),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey,
        leading: IconButton(onPressed: (){
          Navigator.pushReplacementNamed(context, SecondPage.id);
        }, icon: const Icon(Icons.arrow_back,color: Colors.amber,)),
      ),
      body: Center(
        child: Column(
          children: [
            const Image(
            fit: BoxFit.cover,
            image:AssetImage("assets/images/image2.jpg") ),
        Image.network("https://www.afisha.uz/uploads/media/2020/04/0947741.jpeg"),
          ],
        ),
      ),
    );
  }
}
