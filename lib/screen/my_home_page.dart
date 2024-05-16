import 'package:flutter/material.dart';
import 'package:flutter_camp1/screen/my_second_page.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
        child: Text("Data1 data1 data2"),
      ),
      appBar: AppBar(
        title: const Text("My Home page"),
      ),
      body: Center(
        child: Column(
          children: [
            const Text(
              "Hello World 2",
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                //Navigator.push(context, route)
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const MySecondPage(),
                  ),
                );
              },
              child: const Text("ไปหน้าสอง"),
            ),
          ],
        ),
      ),
    );
  }
}
