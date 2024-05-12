class Plant {
  final String name, image;
  final String? category;
  final double price;
  Plant({
    required this.name,
    required this.image,
    required this.price,
    this.category,
  });
}

List<Plant> plants = [
  Plant(
    name: "Snake Plants",
    price: 12.99,
    image: "assets/images/snake-plants.png",
  ),
  Plant(
    name: "Lucky Jade Plant",
    price: 12.99,
    image: "assets/images/lucky-jade-plants.png",
  ),
  Plant(
    name: "Small Plants",
    category: "Super greens",
    price: 12.99,
    image: "assets/images/small-plants.png",
  ),
  Plant(
    name: "Peperomia Plant",
    category: "Super greens",
    price: 12.99,
    image: "assets/images/peperomia-plant.png",
  ),
  Plant(
    name: "Mini Plant",
    price: 12.99,
    image: "assets/images/mini-plant.png",
  ),
];
