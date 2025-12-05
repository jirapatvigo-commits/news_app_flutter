import 'package:flutter/material.dart';
import 'package:uniqlo/Model/uniqlo.dart';

void main() {
  runApp(const UniqloApp());
}

class UniqloApp extends StatelessWidget {
  const UniqloApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Uniqlo App',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),
      ),
      home: const MyHomePage(title: 'Uniqlo'),
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
      appBar: AppBar(title: Text(widget.title)),
      body: SafeArea(child: Container(
            child: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return buildUniqloCard(Uniqlo.samples[index]);
          },
          itemCount: Uniqlo.samples.length,
          ),
        ),
      ),
    );
  }

 Widget buildUniqloCard(Uniqlo uniqlo) {
  return Card(
    child: Column(
      children: <Widget>[
        Image.asset(
          uniqlo.imageUrl,
          width: 200,
          height: 200,
          fit: BoxFit.cover,
        ),
        Text(uniqlo.imgLabel),
      ],
    ),
  );
}
}