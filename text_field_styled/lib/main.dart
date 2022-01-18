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
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String value = "";
  @override
  TextEditingController controller = TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text field styled'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                child: TextField(
                  controller: controller,
                  onChanged: (text) {
                    value = text;
                  },
                  obscureText: false,
                  decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.search,
                      color: Colors.purple,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.purple, width: 2.0),
                    ),
                    focusedBorder: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(15.0),
                        borderSide:
                            BorderSide(color: Colors.purple, width: 2.0)),
                    border: OutlineInputBorder(),
                    labelText: 'Search',
                    labelStyle: TextStyle(
                        color: Colors.purple),
                    hintText: 'Введите значение',
                    helperText: 'Поле для поиска заметок»',
                    contentPadding: EdgeInsets.all(8),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
