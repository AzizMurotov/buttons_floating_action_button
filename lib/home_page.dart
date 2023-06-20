import 'package:click_app/second_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black45,
        leading: const Icon(Icons.menu, color: Colors.amber,),
        title: const Text("click_app", style: TextStyle(color: Colors.amber),),
        actions: [
          IconButton(onPressed: () {
            Navigator.pushReplacementNamed(context, SecondPage.id);
          },
              icon: const Icon(Icons.arrow_forward,color: Colors.amber,)),
          const Icon(Icons.search,
            color: Colors.amber,),
          const SizedBox(width: 10,),
          const Icon(Icons.remove_red_eye,
            color: Colors.amber,),
          const SizedBox(width: 10,),
        ],
      ),
      body:Center(
        child: Column(
          children: [
            Image.asset("assets/images/image1.jpg"),
            const Image(
              height: 374,
              width: 412,
              fit: BoxFit.cover,
              image: NetworkImage("https://www.afisha.uz/uploads/media/2020/04/0536901_m.jpeg"),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black45,
        onPressed: () {},
        elevation: 10,
        child: const Icon(Icons.menu,
            color: Colors.amber),
      ),
    );
  }
}
