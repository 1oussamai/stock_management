import 'package:flutter/material.dart';
import 'package:gestion/constans.dart';
import 'package:gestion/widgets/costum_search_bar.dart';

class CustemrsView extends StatelessWidget {
  const CustemrsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 20),
              CostumSearchBar(
                hintText: 'Search for costumrs',
              ),
              SizedBox(height: 20),
              CostumersCard(),
            ],
          ),
        ),
      ),
    );
  }
}

class CostumersCard extends StatelessWidget {
  const CostumersCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white60,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(width: 0, color: Colors.grey),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 8, top: 8, bottom: 8),
        child: Row(
          children: [
            CircleAvatar(
              maxRadius: 30,
              child: Image.asset(boxImage),
            ),
            const SizedBox(width: 30),
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "OUSSAMA aissa",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "066032882",
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 20,
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.edit,
                  color: Colors.blue,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.delete,
                  color: Colors.red,
                ))
          ],
        ),
      ),
    );
  }
}
