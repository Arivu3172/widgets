import 'package:flutter/material.dart';

class RecommendedFoodDetails extends StatefulWidget {
  const RecommendedFoodDetails({super.key});

  @override
  State<RecommendedFoodDetails> createState() =>
      _RecommendedFoodDetailsState();
}

class _RecommendedFoodDetailsState extends State<RecommendedFoodDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            title: Row(
              children: [
                Icon(Icons.clear),
                Spacer(),
                Icon(Icons.shopping_cart_checkout_outlined),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5, bottom: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  color: const Color.fromARGB(255, 238, 231, 128),
                ),
                child: Center(
                  child: Text(
                    "Chicken BBQ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                    ),
                  ),
                ),
              ),
            ),
            pinned: true,
            backgroundColor: Colors.yellow,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                "https://tse3.mm.bing.net/th?id=OIP.umiGt5GhLUvUZo-zylpyEAHaE8&pid=Api&P=0&h=180",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: ReadMoreText(
                text:
                    "To make delicious chicken BBQ at home, start by marinating the chicken pieces—such as drumsticks, thighs, or boneless breasts—with a mixture of salt, pepper, garlic powder, paprika, oil, and a splash of lemon juice or vinegar to tenderize the meat. Let it rest for at least 30 minutes or up to a few hours for deeper flavor. While the chicken marinates, you can prepare a simple homemade BBQ sauce using ketchup, brown sugar, vinegar, Worcestershire sauce, mustard, and chili powder, simmered until thick and tangy. Once ready, you can either grill the chicken over medium heat or bake it in the oven. If grilling, cook each side for 6–8 minutes, brushing with BBQ sauce during the last few minutes to prevent burning. If using an oven, bake at 200°C (400°F) for 30–35 minutes, brushing with sauce after 20 minutes and broiling at the end for a crispy finish. Let the chicken rest briefly before serving to lock in the juices. This method yields flavorful, juicy BBQ chicken with a smoky, caramelized glaze perfect for any occasion.",
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ReadMoreText Widget
class ReadMoreText extends StatefulWidget {
  final String text;
  final int trimLines;

  const ReadMoreText({Key? key, required this.text, this.trimLines = 5})
      : super(key: key);

  @override
  State<ReadMoreText> createState() => _ReadMoreTextState();
}

class _ReadMoreTextState extends State<ReadMoreText> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.text,
          maxLines: isExpanded ? null : widget.trimLines,
          overflow: isExpanded ? TextOverflow.visible : TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            height: 1.5,
          ),
        ),
        SizedBox(height: 8),
        GestureDetector(
          onTap: () => setState(() => isExpanded = !isExpanded),
          child: Text(
            isExpanded ? 'Read Less' : 'Read More',
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
