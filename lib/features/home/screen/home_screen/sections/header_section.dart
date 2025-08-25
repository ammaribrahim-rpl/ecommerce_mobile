part of '../home_screen.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key, required this.name});

  final String? name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(IconDart.filtericon, size: 14),
            Column(
              children: [
                Icon(IconDart.cart, color: MainColors.primaryColor[600]),
                Text("My basket", style: TextStyle(fontSize: 10)),
              ],
            ),
          ],
        ),
        SizedBox(height: 30),
        Row(
          children: [
            Text(
              "Hello $name, What fruit salad combo\ndo you want today?",
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ],
    );
  }
}
