import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Guia Telefônico Offline',
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

  void _navigateToDetailsPage(String region) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailsPage(region: region),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF207676),
      appBar: AppBar(
        title: const Text(
          'Lista Telefônica',
          style: TextStyle(
            fontSize: 40,
          ),
        ),
      ),
      body: Center(
        child: Container(
          height: 695, // Defina a altura máxima da lista
          width: 550, // Defina a largura máxima da lista
          decoration: BoxDecoration(
            color: const Color.fromARGB(
                255, 44, 163, 163), // Cor do fundo da caixa
            border: Border.all(
              color: const Color.fromARGB(255, 44, 163, 163),
            ),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(35.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Padding(
                    padding:
                        EdgeInsets.all(30.0), // Espaçamento ao redor do título
                    child: Text(
                      'Regiões',
                      style: TextStyle(
                        fontSize: 50, // Tamanho da fonte do título
                        color: Colors.white, // Cor da fonte do título
                      ),
                    ),
                  ),
                  Column(
                    children: entries.map((entry) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical:
                                9.0), // Espaçamento vertical entre os botões
                        child: SizedBox(
                          width: 450, // Largura fixa dos botões
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(
                                  0xFF207676), // Cor de fundo do botão
                              padding: const EdgeInsets.all(
                                  20.0), // Espaçamento interno
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    40.0), // Bordas arredondadas
                              ),
                            ),
                            onPressed: () => _navigateToDetailsPage(entry),
                            child: Text(
                              entry,
                              style: const TextStyle(
                                color: Color.fromARGB(255, 125, 245, 245),
                                fontSize:
                                    40, // Ajuste o tamanho da fonte conforme necessário
                              ),
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

//PAGINAS DOS TELEFONES DAS REGIÕES

class DetailsPage extends StatelessWidget {
  final String region;

  const DetailsPage({super.key, required this.region});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF207676),
      appBar: AppBar(
        title: Text(region),
        centerTitle: true, // Isso vai centralizar o título
        titleTextStyle: const TextStyle(
          fontSize: 45,
          color: Colors.white, // Define a cor do texto do título
        ),
      ),
      body: Center(
        child: Container(
          height: 695, // Defina a altura máxima da lista
          width: 550, // Defina a largura máxima da lista
          decoration: BoxDecoration(
            color: const Color.fromARGB(
                255, 44, 163, 163), // Cor do fundo da caixa
            border: Border.all(
              color: const Color.fromARGB(255, 44, 163, 163),
            ),
          ),
        ),
      ),
    );
  }
}
