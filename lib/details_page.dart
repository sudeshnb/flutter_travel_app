import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uidesign08/core/color.dart';
import 'package:uidesign08/data/data.dart';

class DetailsPage extends StatelessWidget {
  final Item item;
  const DetailsPage({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: height / 2.2,
            child: Image.asset(
              item.image,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 50.0,
            left: 20.0,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                height: 40.0,
                width: 40.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: white,
                ),
                child: Icon(Icons.arrow_back),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: height / 2.4),
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            height: height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              ),
              color: white,
            ),
            child: ListView(
              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.only(top: 20.0),
              children: [
                Text(
                  item.titel,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5.0),
                Text(
                  item.location,
                  style: TextStyle(
                    color: grey,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 20.0),
                Row(
                  children: [
                    for (int i = 0; i < item.category.length; i++)
                      Container(
                        height: 25.0,
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 5.0),
                        margin: EdgeInsets.only(right: 10.0),
                        color: grey.withOpacity(0.2),
                        child: Text(item.category[i]),
                      ),
                  ],
                ),
                SizedBox(height: 20.0),
                Text(
                  item.description,
                  style: TextStyle(
                    color: grey,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Divider(
                  thickness: 1,
                  height: 40.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: 1),
                    tagButton(
                      text: 'Rating',
                      value: item.rating,
                      image: 'star.svg',
                    ),
                    SizedBox(width: 10),
                    tagButton(
                      text: 'Itineray',
                      value: item.days,
                      image: 'calendar.svg',
                    ),
                    SizedBox(width: 10),
                    tagButton(
                      text: 'Weather',
                      value: item.weather,
                      image: 'sun.svg',
                    ),
                    SizedBox(width: 1),
                  ],
                ),
                Divider(
                  thickness: 1,
                  height: 40.0,
                ),
                Text(
                  'ITINERARY',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  item.itinerary,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: grey,
                  ),
                ),
                SizedBox(height: 50.0),
              ],
            ),
          ),
          Positioned(
            top: height / 2.55,
            right: 20.0,
            child: GestureDetector(
              onTap: () {},
              child: Container(
                height: 40.0,
                width: 40.0,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 20.0,
                      offset: Offset(0, 10),
                      color: Colors.black.withOpacity(0.15),
                    ),
                  ],
                  color: white,
                  borderRadius: BorderRadius.circular(40.0),
                ),
                child: Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 60.0,
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 20.0,
                offset: Offset(0, 5),
                color: Colors.black.withOpacity(0.15),
              ),
            ],
            color: white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.price,
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 20.0,
                      color: green,
                    ),
                  ),
                  Text(
                    'Price for 2 people',
                  ),
                ],
              ),
              GestureDetector(
                child: Container(
                  height: 40.0,
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  decoration: BoxDecoration(
                    color: blueColor,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Center(
                    child: Text(
                      'Book a Tour',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16.0,
                        color: white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget tagButton({
    required String image,
    required String text,
    required String value,
  }) {
    return Column(
      children: [
        CircleAvatar(
          child: SvgPicture.asset(
            'assets/icons/$image',
            color: blueColor,
            height: 20.0,
          ),
          backgroundColor: blueColor.withOpacity(0.2),
        ),
        Text(
          text,
          style: TextStyle(
            color: blueColor.withOpacity(0.6),
            fontWeight: FontWeight.w400,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            fontWeight: FontWeight.w800,
          ),
        ),
      ],
    );
  }
}
