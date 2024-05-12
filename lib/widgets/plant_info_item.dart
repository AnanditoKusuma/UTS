import 'package:flutter/material.dart';

class PlantInfoItem extends StatelessWidget {
  final IconData icon;
  final String property, value;
  const PlantInfoItem({
    super.key,
    required this.icon,
    required this.property,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 45,
          color: Colors.white,
        ),
        const SizedBox(height: 5),
        Text(
          property,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          value,
          style: TextStyle(
            fontSize: 10,
            color: Colors.grey.shade200,
          ),
        )
      ],
    );
  }
}
