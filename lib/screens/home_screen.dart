import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:iconsax/iconsax.dart';
import 'package:plants_shop/constants.dart';
import 'package:plants_shop/models/plant.dart';
import 'package:plants_shop/widgets/plant_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kbackgroundColor,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(CupertinoIcons.chevron_back),
        ),
        centerTitle: true,
        title: Text(
          "Search Products",
          style: TextStyle(
            color: Colors.grey.shade800,
            fontSize: 16,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Image.asset("assets/images/avatar.png"),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: kcontentColor,
                        hintText: "Search here...",
                        hintStyle: const TextStyle(fontSize: 14),
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 40,
                          vertical: 15,
                        ),
                        prefixIcon: const Icon(CupertinoIcons.search),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        color: kcontentColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: const EdgeInsets.symmetric(
                        vertical: 15,
                      ),
                      child: const Icon(Iconsax.setting_4),
                    ),
                  ),
                ],
              ),
            ),
            MasonryGridView(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              primary: false,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisSpacing: 30,
              mainAxisSpacing: 30,
              gridDelegate:
                  const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              children: [
                const Text(
                  "Found 10 Results",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                  ),
                ),
                for (var plant in plants) PlantCard(plant: plant),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
