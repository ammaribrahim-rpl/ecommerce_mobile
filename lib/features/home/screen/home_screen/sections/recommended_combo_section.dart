part of '../home_screen.dart';

class RecommendedComboSection extends StatelessWidget {
  const RecommendedComboSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Recommended Combo",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 14),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FoodItem(
              item: ItemFoodModel(
                imagepath: MainAssets.food1,
                name: "Pearl Milk Tea",
                price: "Rp 25.000",
                bgColor: MainColors.VioletColor[200],
              ),
            ),
            FoodItem(
              item: ItemFoodModel(
                imagepath: MainAssets.food3,
                name: "Berry mango combo",
                price: "Rp 8.000",
                bgColor: MainColors.VioletColor[400],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
