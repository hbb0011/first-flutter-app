//the lib folder is the main folder where the main code is executed 
//the android folder contains what is needed to turn the code into an android app
//the web folder contains what is needed to to run the code in a web browser
//the yaml file contains the dependencies and information about the app
import 'package:flutter/material.dart';

void main() { //once i launch the app whatever function is in the main should be executed
  runApp(const MyApp()); //the runapp takes the main widget and sends it to the very top to display it on the secreen
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp( //materialapp is the main widget that wraps other widgets and provides their design and structure
      title: 'Flutter first app',
      theme: ThemeData(
        
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'HELLO'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      //setstate is a method updates the state of the variable that changes while the app is running calling the build method 
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
   
    return Scaffold( //scaffold is the layout and structure of the app(the body)
      appBar: AppBar(
        
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        
        title: Text(widget.title),
      ),
      body: Center(
        
        child: Column(
          
          mainAxisAlignment: .center,
          children: [
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
