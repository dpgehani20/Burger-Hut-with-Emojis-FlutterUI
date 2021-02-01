import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class FoodTab extends StatefulWidget {
  @override
  _FoodTabState createState() => _FoodTabState();
}

class _FoodTabState extends State<FoodTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          _listItem('Delicious hot dog', 4.0, '10', 'assets/emoji/hotdog.png'),
          _listItem('Cheese pizza', 5.0, '12', 'assets/emoji/pizza.png')
        ],
      ),
    );
  }

  _listItem(String foodName, rating, String price, String imgPath){
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 210.0,
            child: Row(
              children: [
                Container(
                  height: 75.0,
                  width: 75.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7.0),
                    color: Color(0xffffe3df)
                  ),
                  child: Center(
                    child: Image.asset(imgPath, height: 50.0, width: 50.0),
                  ),
                ),
                SizedBox(width: 20.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      foodName,
                      style: GoogleFonts.notoSans(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400
                      ),
                    ),
                    SmoothStarRating(
                      allowHalfRating: false,
                      onRated: (v) {},
                      starCount: rating.toInt(),
                      rating: rating,
                      color: Color(0xffffd143),
                      borderColor: Color(0xffffd143),
                      size: 15.0,
                      spacing: 0.0,
                    ),

                    Row(
                      children: [
                        Text('\$' + price,
                        style: GoogleFonts.lato(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                          textStyle: TextStyle(
                            color: Color(0xfff68d7f),
                          ),
                        ),
                        ),
                        SizedBox(width: 3.0),
                        Text('\$' + '18',
                          style: GoogleFonts.lato(
                            fontSize: 12.0,
                            decoration: TextDecoration.lineThrough,
                            fontWeight: FontWeight.w600,
                            textStyle: TextStyle(
                              color: Colors.grey.withOpacity(0.4),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),

          FloatingActionButton(
            heroTag: foodName,
            mini: true,
            onPressed: () {},
            child: Center(
              child: Icon(Icons.add, color: Colors.white),
            ),
            backgroundColor: Color(0xfffe7d6a),
          ),
        ],
      ),
    );
  }
}
