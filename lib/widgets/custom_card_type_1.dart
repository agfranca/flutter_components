import 'package:flutter/material.dart';
import 'package:components/theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
      children: [
        const ListTile(
          leading: Icon(
            Icons.photo_album_outlined,
            color: AppTheme.primary,
          ),
          title: Text('Sou um título A'),
          subtitle: Text(
              'Eiusmod do labore dolore laboris ex proident irure ullamco velit ad enim id.'),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(onPressed: () {}, child: const Text('CANCEL')),
              TextButton(onPressed: () {}, child: const Text('OK')),
            ],
          ),
        )
      ],
    ));
  }
}
