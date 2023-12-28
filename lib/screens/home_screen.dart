import 'package:components/router/app_routes.dart';
import 'package:components/theme/app_theme.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
        appBar: AppBar(
          title: const Text('Componentes em Flutter'),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  leading:
                      Icon(menuOptions[index].icon, color: AppTheme.primary),
                  title: Text(menuOptions[index].name),
                  onTap: () {
                    //Uma mAneira de Fazer a NAvegação
                    //final route = MaterialPageRoute(
                    //    builder: (context) => const Listview1Screen());
                    //Navigator.push(context, route);

                    //Melhor maneira de navegar em Rotas
                    Navigator.pushNamed(context, menuOptions[index].route);
                  },
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: menuOptions.length));
  }
}
