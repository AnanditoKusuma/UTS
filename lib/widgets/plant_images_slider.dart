import 'package:flutter/material.dart';
import 'package:plants_shop/constants.dart';
import 'package:plants_shop/models/plant.dart';

class PlantImagesSlider extends StatelessWidget {
  final Plant plant;
  final int currentPhoto;
  final Function(int value) onChange;
  const PlantImagesSlider({
    super.key,
    required this.plant,
    required this.currentPhoto,
    required this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 350,
          child: PageView.builder(
            scrollDirection: Axis.vertical,
            itemCount: 3,
            onPageChanged: onChange,
            itemBuilder: (context, index) => Image.asset(plant.image),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 40,
          child: Column(
            children: List.generate(
              3,
              (index) => AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                margin: const EdgeInsets.only(bottom: 5),
                width: 6,
                height: index == currentPhoto ? 15 : 6,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: index == currentPhoto ? kprimaryColor : Colors.grey,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
