import 'package:flutter/material.dart';

void main() {
  runApp(SplashScreen());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 위젯의 UI 구현
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "2주차 목표 : 카카오 로그인을 구현해봅시다.",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 100.0,
                  ),
                  Image.asset('assets/Rabbit.png',
                      width: 200, height: 200, fit: BoxFit.fitHeight),
                  SizedBox(
                    height: 100.0,
                  ),
                  // CircularProgressIndicator(
                  //   valueColor: AlwaysStoppedAnimation(Colors.blue),
                  // ),
                ],
              ),
            ]),
          ),
        ),
      ), // scaffold
    );
  }
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
