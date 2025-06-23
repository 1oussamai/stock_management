import 'package:flutter/material.dart';
import 'package:gestion/constans.dart';
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
          title: const Text('Store'),
          actions: const [Icon(Icons.logout)],
        ),
        backgroundColor: Colors.grey,
        body: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 2,
          ),
          children: const [
            ItemCardView(
              name: 'PRODUCTS',
              icon: boxImage,
            ),
            ItemCardView(
              name: "CUSTEMRS",
              icon: custemrsImage,
            ),
          ],
        ),
      ),
    );
  }
}
