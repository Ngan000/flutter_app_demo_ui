import 'package:flutter/material.dart';

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

        primarySwatch: Colors.blue,
      ),
      home: const DemoBuildContext(),

    );
  }
}

class DemoBuildContext extends StatelessWidget {
  const DemoBuildContext({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo BuildContext"),
      ),
      body: OngBa(
        child: ChaMe(
          child:Column(
            children: <Widget>[
            ConTrai(),
              ConGai(),
        ],
      ),),),
    );
  }
}

class OngBa extends StatelessWidget {
  //OngBa({Key? key}) : super(key: key);

  late Widget child;

  OngBa(this.child);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
    );
  }
}

class ChaMe extends StatelessWidget {
  ChaMe({Key? key}) : super(key: key);

  late Widget child;
  ChaMe(this.child);

  String layTenConTrai(){
    return "Hung";
  }

  String layTenConGai(){
    return "Hoa";
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
    );
  }
}

class ConTrai extends StatelessWidget {
  const ConTrai({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ChaMe chaMe = context.findAncestorWidgetOfExactType(ChaMe);
    return Container(
      child: Text(chaMe.layTenConTrai()),
    );
  }
}

class ConGai extends StatelessWidget {
  const ConGai({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ChaMe chaMe = context.findAncestorWidgetOfExactType(ChaMe);
    return Container(
      child: Text(chaMe.layTenConGai()),
    );
  }
}




