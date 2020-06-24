import 'package:flutter/material.dart';

void main(){
  runApp(
    MyApp()
  );
}

// สร้าง Class สำหรับแยก Widget แบบ StatelessWidget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home: MyHomePage(),
    );
  }
}

// สร้าง Class สำหรับแยก Widget แบบ StatefullWidget
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home),
        title: Text('Hello Flutter'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications), 
            onPressed: (){
              print('Your press notification');
            }
          )
        ],
      ),
      body: Center(
        child: Text('This is my content'),
      ),
    );
  }
}
