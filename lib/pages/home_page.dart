import 'package:flutter/material.dart';
import 'package:gestion/widgets/item_card_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text('Store'),
          actions: const [Icon(Icons.logout)],
        ),
        backgroundColor: Colors.grey,
        body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 2,
          ),
          children: const [
            ItemCardView(),
            ItemCardView(),
          ],
        ),
      ),
    );
  }
}
