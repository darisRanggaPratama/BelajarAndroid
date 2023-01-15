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
      // Muncul label demo: true. Hilangkan: false
      debugShowCheckedModeBanner: true,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
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
          title: const Text('Belajar Flutter Pemula'),
          backgroundColor: Colors.red,
          elevation: 10,
          leading: const Icon(Icons.settings_applications),
          actions: [
            InkWell(
              onTap: () {},
              child: const Icon(Icons.login),
            ),
            const SizedBox(
              width: 8,
            ),
            const Icon(Icons.battery_alert),
            const SizedBox(
              width: 16,
            )
          ],
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          Column(children: [
            Container(
                margin: const EdgeInsets.all(16),
                height: 100,
                width: 200,
                decoration: BoxDecoration(
                    color: Colors.purple,
                    border: Border.all(color: Colors.orange, width: 5),
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                        image: NetworkImage(
                            'https://i.etsystatic.com/38142327/r/il/c684a1/4248869268/il_fullxfull.4248869268_t0d2.jpg'))),
                child: const Padding(
                  padding: EdgeInsets.all(20),
                  child: Text('Ninja'),
                )),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              ElevatedButton(
                  onPressed: () {
                    debugPrint('Clicked');
                  },
                  child: const Text('Click')),
              const ElevatedButton(onPressed: null, child: Text('Click')),
              TextButton(onPressed: () {}, child: const Text('Text Button'))
            ]),
            Row(children: [
              const Flexible(
                  flex: 1,
                  child: CircleAvatar(
                      radius: 100,
                      backgroundColor: Colors.brown,
                      child: CircleAvatar(
                          radius: 95,
                          backgroundImage:
                              AssetImage('assets/images/ninja-cat.png')))),
              const Flexible(
                  flex: 1,
                  child: CircleAvatar(
                      radius: 100,
                      backgroundColor: Colors.brown,
                      child: CircleAvatar(
                          radius: 95,
                          backgroundImage:
                              AssetImage('assets/images/ninja-cat.png')))),
              Expanded(child: Image.asset('assets/icons/ninja.png'))
            ])
          ]),
          Expanded(child: Image.asset('assets/icons/ninja.png'))
        ]));
  }
}
// Bahri. Menit 48