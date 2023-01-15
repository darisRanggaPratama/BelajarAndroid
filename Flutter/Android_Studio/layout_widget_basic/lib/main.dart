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
      title: 'Flutter Demo Awal',
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
          title: const Text('Belajar Dasar Flutter'),
          backgroundColor: Colors.transparent,
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
        body: SingleChildScrollView(
            child: Column(children: [
              Container(
                margin: const EdgeInsets.all(16),
                padding: const EdgeInsets.all(12),
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    color: Colors.orange,
                    border: Border.all(color: Colors.red, width: 5),
                    borderRadius: BorderRadius.circular(100),
                    image: const DecorationImage(
                        image: AssetImage('assets/images/cat-gun.png'))
                ),
                child: const Text('Cat Army'),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                ElevatedButton(
                    onPressed: () {
                      debugPrint('Clicked');
                    },
                    child: const Text('Click')),
                const ElevatedButton(onPressed: null, child: Text('Click')),
                TextButton(onPressed: () {}, child: const Text('Text Button'))
              ]),
              SizedBox(
                  height: 200,
                  child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        const CircleAvatar(
                            radius: 100,
                            backgroundColor: Colors.blue,
                            child: CircleAvatar(
                              radius: 95,
                              backgroundImage: NetworkImage(
                                  'https://ih1.redbubble.net/image.3226983054.8312/bg,f8f8f8-flat,750x,075,f-pad,750x1000,f8f8f8.jpg'),
                            )),
                        const CircleAvatar(
                            radius: 100,
                            backgroundColor: Colors.blue,
                            child: CircleAvatar(
                              radius: 95,
                              backgroundImage: NetworkImage(
                                  'https://ih1.redbubble.net/image.3226983054.8312/bg,f8f8f8-flat,750x,075,f-pad,750x1000,f8f8f8.jpg'),
                            )),
                        Image.asset('assets/icons/cat_ninja.png')
                      ]
                  )
              )
            ])
        )
    );
  }
}
// Bahri. Menit 48
