import 'package:flutter/material.dart';

class ItemCardView extends StatelessWidget {
  const ItemCardView({
    super.key,
    required this.name,
    required this.icon, this.onTap,
  });
  final String name;
  final String icon;
 final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 170,
          width: 170,
          decoration: BoxDecoration(
              color: Colors.green.withOpacity(0.3),
              borderRadius: BorderRadius.circular(18)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 2),
              Image.asset(
                icon,
                height: 90,
                width: 90,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                name,
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
