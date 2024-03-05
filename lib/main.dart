import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'Card.dart';
import 'navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Fit Fuel'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        actions: [
          const Text("Hello"),
          IconButton(icon: SvgPicture.asset(
        'assets/images/vector0.svg',
        semanticsLabel: 'vector0'
      ), onPressed: () {  },)
        ],
      ),
      body:  const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Depth1frame0Widget(),
            Depth3frame0Widget(textunder:"Yoga for Beginners", text: '15min | Intermediate', imageUrl: 'assets/images/yogaPose.png', key: Key("1"),)
          ]
        ),
      ),
    );
  }
}
