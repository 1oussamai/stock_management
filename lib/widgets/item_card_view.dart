import 'package:flutter/material.dart';

class ItemCardView extends StatelessWidget {
  const ItemCardView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: 170,
        width: 170,
        decoration: BoxDecoration(
            color: Colors.green.withOpacity(0.3),
            borderRadius: BorderRadius.circular(18)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 2),
            Image.asset(
              "assets/icons/box.png",
              height: 90,
              width: 90,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'PRODUCTS',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
