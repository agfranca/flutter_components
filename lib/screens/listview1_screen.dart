import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  //Lista de jogos para o segundo Exemplo de Listview
  final options = const [
    'Megaman',
    'Metal Gear',
    'Super Smash',
    'Final Fantasy'
  ];

  const Listview1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Listview Tipo 1'),
        ),
        body: ListView(
          children: [
            //Exemplo1 de Listview
            // ListTile(
            //   leading: Icon(Icons.add_a_photo_outlined),
            //   title: Text('Ola Mundo'),
            // )

            //Exemplo2 de Listview
            ...options
                .map((game) => ListTile(
                      title: Text(game),
                      trailing: const Icon(Icons.arrow_forward_ios_outlined),
                    ))
                .toList()
          ],
        ));
  }
}
