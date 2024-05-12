import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:plants_shop/constants.dart';
import 'package:plants_shop/models/plant.dart';
import 'package:plants_shop/screens/plant_details_screen.dart';

class PlantCard extends StatelessWidget {
  const PlantCard({
    super.key,
    required this.plant,
  });

  final Plant plant;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PlantDetailsScreen(
              plant: plant,
            ),
          )),
      child: Container(
        decoration: BoxDecoration(
          color: kcontentColor,
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(plant.image),
            const SizedBox(height: 5),
            Text(
              plant.name,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
            plant.category != null
                ? Text(
                    plant.category!,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  )
                : const SizedBox(height: 30),
            Row(
              children: [
                Text(
                  "\$${plant.price}",
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                Container(
                  width: 30,
                  height: 30,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black,
                  ),
                  child: const Icon(
                    Iconsax.heart5,
                    color: Colors.white,
                    size: 18,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
