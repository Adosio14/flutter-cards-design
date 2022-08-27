import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Probando Cards"),
      ),
      body: Theme(
        data: Theme.of(context).copyWith(
            dividerColor: Colors
                .transparent), //seteando en transparente los divider creados por ListTile()
        child: SafeArea(
            child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://cdn.wallpapersafari.com/24/77/Vs6nPe.png"),
                        fit: BoxFit.fill),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                        bottomLeft: Radius.circular(100),
                        topRight: Radius.circular(100)),
                  ),
                  child: ExpansionTile(
                    trailing: Icon(Icons.add),
                    collapsedIconColor: Colors.transparent,
                    iconColor: Colors.transparent,
                    title: Text(
                      'Card con ExpansionTile',
                      style: TextStyle(color: Colors.white),
                    ),
                    children: <Widget>[
                      Text("Usando BoxFit.Fill",
                          style: TextStyle(color: Colors.black)),
                      SizedBox(
                        height: 60,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://wallpaper.dog/large/10904470.jpg"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(100),
                        bottomRight: Radius.circular(100),
                        bottomLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                  ),
                  child: ExpansionTile(
                    trailing: Icon(Icons.add),
                    collapsedIconColor: Colors.transparent,
                    iconColor: Colors.transparent,
                    title: Padding(
                      padding: const EdgeInsets.only(left: 24),
                      child: Text('Card con ExpansionTile'),
                    ),
                    children: <Widget>[
                      Text("Usando BoxFit.Cover"),
                      SizedBox(
                        height: 60,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        )),
      ),
    );
  }
}
