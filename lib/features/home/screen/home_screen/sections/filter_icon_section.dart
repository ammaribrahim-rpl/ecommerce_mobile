part of '../home_screen.dart';

class FilterIconSection extends StatelessWidget {
  const FilterIconSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 182,
          child: ListView(
            clipBehavior: Clip.none,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: [
              FoodItem(
                item: ItemFoodModel(
                  imagepath: MainAssets.food_1,
                  name: "Quinoa fruit salad",
                  price: "Rp 10.000",
                  bgColor: MainColors.VioletColor[200],
                ),
              ),
              FoodItem(
                item: ItemFoodModel(
                  imagepath: MainAssets.food_2,
                  name: "Tropical fruit salad",
                  price: "Rp 10.000",
                  bgColor: MainColors.VioletColor[400],
                ),
              ),
              FoodItem(
                item: ItemFoodModel(
                  imagepath: MainAssets.food_3,
                  name: "Tropical fruit salad",
                  price: "Rp 10.000",
                  bgColor: MainColors.VioletColor[200],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
