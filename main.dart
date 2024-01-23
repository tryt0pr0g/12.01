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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Page(),
    );
  }
}

final List<int> entries = <int>[1, 2, 3, 4, 5];
final List<int> colorCodes = <int>[600, 500, 400, 300, 100];

class Page extends StatelessWidget {
  const Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 500,
          width: 200,
          child: Center(
            child: Container(
              child: Center(
                child: ListView.builder(
                    padding: const EdgeInsets.all(8),
                    itemCount: entries.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 50,
                          color: Colors.amber[colorCodes[index]],
                          child: Column(
                            children: [
                              Center(child: Text('Строка ${entries[index]}')),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                    height: 20,
                                    width: 20,
                                    child: Text('${entries[index]}')),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
