import 'package:flutter/material.dart';

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
        primaryColor: const Color(0xFF41DBDB),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF41DBDB),
        ),
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
  final List<String> entries = <String>[
    'Norte',
    'Nordeste',
    'Centro-Oeste',
    'Sudeste',
    'Sul',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF207676),
        appBar: AppBar(
          title: const Text(
            'Lista Telefônica',
            style: TextStyle(
              fontSize: 33,
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 289,
                width: 200,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: entries.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: SizedBox(
                          width: 300,
                          child: Text(
                            entries[index],
                            style: const TextStyle(
                                color: Colors.white, fontSize: 27),
                            maxLines: 1,
                          )),
                    );
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
