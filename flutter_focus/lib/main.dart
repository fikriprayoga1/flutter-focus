import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return FocusScope(
      child: RawKeyboardListener(
        focusNode: FocusNode(),
        // ignore: avoid_print
        onKey: (value) => print('flutter_debug : Called'),
        child: Scaffold(
          appBar: AppBar(
            title: Text(widget.title),
          ),
          body: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100),
              child: Column(
                children: const [
                  TextField(autofocus: true),
                  TextField(autofocus: true),
                ],
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (dialogContext) {
                  return Center(
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.red,
                      child: const Material(
                        color: Colors.transparent,
                        child: TextField(
                          autofocus: true,
                        ),
                      ),
                    ),
                  );
                },
              );
            },
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
