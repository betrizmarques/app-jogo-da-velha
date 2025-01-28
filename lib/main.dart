import 'package:flutter/material.dart';
import 'package:myapp/componentes/jogo_da_velha.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final String title = "Jogo da Velha";
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(title: title),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Container(
                //alignment: Alignment.center,
                //color: Colors.amber,
                //child: Text('Layout Superior'),
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Container(
                      //alignment: Alignment.center,
                      //  color: Colors.red,
                      //child: Text('Primeira Coluna'), */
                    ),
                  ),
                  Expanded(
  flex: 1,
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Expanded(
        child: Container(),
      ),
      Expanded(
        flex: 1,
        child: AspectRatio(
          aspectRatio: 0.7, // Define a proporção largura:altura como 1:1
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(7),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 10,
                  offset: Offset(0, 5),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: JogoDaVelha(),
            ),
          ),
        ),
      ),
      Expanded(
        child: Container(),
      ),
    ],
  ),
),
                  Expanded(
                    child: Container(
                      /*   alignment: Alignment.center,
                      color: Colors.red,
                      child:  Text('Terceira Coluna'), */
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                //alignment: Alignment.center,
                /*   color: Colors.blue, */
                // child: Text('Layout Inferior'),
              ),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
