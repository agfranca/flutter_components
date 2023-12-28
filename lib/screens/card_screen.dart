import 'package:flutter/material.dart';
import 'package:components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card Widget'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCardType1(),
            SizedBox(height: 10),
            CustomCardType2(
              name: 'Suissa o meu Lugar',
              imageUrl: 'https://wallpaperaccess.com/full/1094090.jpg',
            ),
            SizedBox(height: 10),
            CustomCardType2(
              imageUrl:
                  'https://jakubpolomski.com/wp-content/gallery/switzerland/matterhorn-switzerland-landscape-120700ALP2085.jpg',
            ),
            SizedBox(height: 10),
            CustomCardType2(
              name: 'Um passeio pelo lago',
              imageUrl:
                  'https://trulyhandpicked.com/wp-content/uploads/2016/02/switzerland-landscape-14553834504kgn8.jpg',
            ),
          ],
        ));
  }
}
