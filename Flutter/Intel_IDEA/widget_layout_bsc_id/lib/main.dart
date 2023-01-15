import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo Dasar',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Basic Flutter'),
          backgroundColor: Colors.blue,
          elevation: 10,
          leading: const Icon(Icons.settings),
          actions: [
            InkWell(
              onTap: () {},
              child: const Icon(Icons.logout),
            ),
            const SizedBox(
              width: 8,
            ),
            const Icon(Icons.person),
            const SizedBox(
              width: 8,
            )
          ],
        ),
        body: ListView(children: [
          Container(
            margin: const EdgeInsets.all(16),
            height: 200,
            width: 200,
            decoration: BoxDecoration(
                color: Colors.red,
                border: Border.all(color: Colors.blue, width: 5),
                borderRadius: BorderRadius.circular(100),
                image: const DecorationImage(
                    image: AssetImage('assets/images/ninja-girl.png'))),
            child: const Padding(
              padding: EdgeInsets.all(20),
              child: Text('Ninja Girl'),
            ),
          ), Row(children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                  'https://ih1.redbubble.net/image.3702497069.1929/poster,504x498,f8f8f8-pad,600x600,f8f8f8.jpg'),
            ),
            const CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                  'https://ih1.redbubble.net/image.3702497069.1929/poster,504x498,f8f8f8-pad,600x600,f8f8f8.jpg'),
            ),
            Expanded(child: Image.asset('assets/icons/ninja.png'))
          ])
        ])
    );
  }
}
// Bahri. Menit 48
