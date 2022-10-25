import 'package:flutter/material.dart';
import 'package:lokalne_notifikacije/servis_notifikacija.dart';

void main() {
  runApp(const MyApp());
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

class _MyHomePageState extends State<MyHomePage> {
ServisNotifikacija servisNotifikacija = ServisNotifikacija();

  @override
  void initState() {
    super.initState();
    servisNotifikacija.inicijalizirajNotifikacije();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Center(
        child: ElevatedButton(onPressed: (){
          servisNotifikacija.posaljiNotifikaciju(
              "Ovo je naslov notifikacije", "Ovo je tijelo notifikacije"
          );

        },
        child: Text('Kreiraj lokalnu notifikaciju'),),
    )
    );
  }
}
