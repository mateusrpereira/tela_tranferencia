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
      home:Scaffold(
        appBar: AppBar(
          title: const Text('Transferências'),
        ),
        body: ListView(
          children: const [
            Transferencia(456, 45000000.0),
            Transferencia(1234, 8001.0),
            Transferencia(1111, 999998.0),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
class Transferencia extends StatelessWidget {
  final double valor;
  final int conta;

  const Transferencia(this.conta, this.valor, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.monetization_on),
        title: Text(valor.toStringAsFixed(1)),
        subtitle: Text(conta.toString()),
      ),
    );
  }
}



