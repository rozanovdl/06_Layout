import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var listData = List.generate(50, (index) => index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child:
            LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        double _width = constraints.constrainWidth();
        return _width > 500
            ? ListView.builder(
                itemBuilder: (context, index) => SizedBox(
                  height: 100.0,
                  child: Card(
                    margin: const EdgeInsets.all(10.0),
                    color: Colors.blue,
                    child: Center(
                      child: Text('$index'),
                    ),
                  ),
                ),
                itemCount: listData.length,
              )
            : SizedBox(
                height: 100.0,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => SizedBox(
                    width: 100,
                    height: 100.0,
                    child: Card(
                      color: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text('$index'),
                      ),
                    ),
                  ),
                  itemCount: listData.length,
                ));
      },
    )
        ));
  }
}
