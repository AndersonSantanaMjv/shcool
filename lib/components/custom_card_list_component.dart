import 'package:flutter/material.dart';
import 'package:shcool/components/spacer_component.dart';

class CustomCardListItem extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String title;

  const CustomCardListItem({
    super.key,
    required this.icon,
    required this.iconColor,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Row(
          children: [
            Icon(
              icon,
              color: iconColor,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(title),
            ),
            const SpacerComponent(
              isFull: true,
            ),
            const Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
