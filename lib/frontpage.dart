import 'package:flutter/material.dart';
import 'home.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key, required Scaffold home});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BOARDERS RECIPE BSCS 3-2',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FrontPage(),
    );
  }
}

class FrontPage extends StatelessWidget {
  const FrontPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Boarder's Recipe"),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration:const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('img/bg.jpg'),
            fit: BoxFit.cover,alignment: Alignment.bottomCenter
          )
        ),
        child : Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Welcome',
              style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold,),
            ),
            const SizedBox(height: 8),
            const Text(
              'to',
              style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold,),
            ),
            const SizedBox(height: 8),
            const Text(
              'Boarders Recipe',
              style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold,),
            ), 
            const SizedBox(height: 16),
            const Text("\"Your Personal Cook Book\nfor Tasty Creation\"",textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16,color: Colors.white70,fontStyle: FontStyle.italic,),
            ), 
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RecipeApp()),
                );
              },
              child: const Text('START'),
            ),
          ],
        ),
      ),
    );
  }
}
