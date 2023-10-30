import 'package:flutter/material.dart';
import 'package:widgets_app/menu/menu_item.dart';
import 'package:widgets_app/presentation/screens/buttons/buttons_screend.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widgets App'),
      ),
      body: const _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    const listItem = appMenuItems;

    return ListView.builder(
      itemCount: listItem.length,
      itemBuilder: (context, index) {
        return _CustomListTitle(listItem: listItem[index]);
      },
      );
  }
}

class _CustomListTitle extends StatelessWidget {
  const _CustomListTitle({
    required this.listItem,
  });

  final MenuItem listItem;

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return ListTile(
      leading: Icon(listItem.icon, color: colors.primary,),
      trailing: Icon(Icons.arrow_forward_ios_outlined, color: colors.primary,),
      title: Text(listItem.title),
      subtitle: Text(listItem.subTilte),
      onTap: (){
        //TODO: Navegar a otras pantallas
        // Navigator.of(context).push(
        //   MaterialPageRoute(
        //     builder: (context) => const ButtonsScreend(),
        //     )
        // );
        Navigator.pushNamed(context, listItem.link);
      },
    );
  }
}