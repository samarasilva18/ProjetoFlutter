import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
  home: Scaffold(
    body: ListaTransferencia(),
    appBar: AppBar(
      title: Text('transferencias'),
    ),
    floatingActionButton: FloatingActionButton(
      child: Icon(Icons.add),
    onPressed: () {},
    ),
    ),
  ),
);

class Transferencia {
  final double valor;
  final int numeroConta;

  Transferencia(this.valor, this.numeroConta);
}

class ItemTransferencia extends StatelessWidget {
  final Transferencia _transferencia;
  
  ItemTransferencia(this._transferencia);

  @override
  Widget build(BuildContext context) {  
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(_transferencia.valor.toString()),
        subtitle: Text(_transferencia.numeroConta.toString()),
      ),
    );
  }
}

class ListaTransferencia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ItemTransferencia(Transferencia(100, 1234)),
      ItemTransferencia(Transferencia(200, 1111)),
      ItemTransferencia(Transferencia(1000, 6843-8)),
    ],
    );
  }
}