import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uidesign08/core/color.dart';
import 'package:uidesign08/data/data.dart';
import 'package:uidesign08/details_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectMenu = 0;
  int selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leadingWidth: 65.0,
        leading: Padding(
          padding: EdgeInsets.only(
            left: 20.0,
            top: 5.0,
            bottom: 5.0,
          ),
          child: Container(
            height: 40.0,
            width: 40.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: grey),
            ),
            child: Image.asset('assets/icons/dote.png'),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(
              right: 20.0,
              top: 5.0,
              bottom: 5.0,
            ),
            child: Container(
              height: 40.0,
              width: 45.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 20.0,
                    offset: Offset(0, 5),
                  ),
                ],
                image: DecorationImage(
                  image: AssetImage('assets/10.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.0),
            Text(
              'Life is a journey',
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              'Make the best of it.',
              style: TextStyle(
                fontSize: 22.0,
              ),
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Container(
                height: 50.0,
                padding: EdgeInsets.only(right: 5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(
                    color: grey.withOpacity(0.5),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 300.0,
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          hintText: 'Try\"Belgrade, Serbia\"',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: blueColor,
                      child: Image.asset(
                        'assets/icons/tune.png',
                        color: white,
                        scale: 2.3,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15.0),
            Container(
              height: 40.0,
              child: ListView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: [
                  for (int i = 0; i < menu.length; i++)
                    GestureDetector(
                      onTap: () {
                        setState(() => selectMenu = i);
                      },
                      child: Container(
                        margin: EdgeInsets.only(right: 15.0),
                        child: Column(
                          children: [
                            Text(
                              menu[i].name,
                              style: TextStyle(
                                color: selectMenu == i ? blueColor : grey,
                              ),
                            ),
                            CircleAvatar(
                              radius: 2,
                              backgroundColor: selectMenu == i
                                  ? blueColor
                                  : Colors.transparent,
                            )
                          ],
                        ),
                      ),
                    ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: items.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (itemBuilder, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (builder) => DetailsPage(
                              item: items[index],
                            ),
                          ),
                        );
                      },
                      child: Container(
                        height: 350.0,
                        width: 220.0,
                        margin: EdgeInsets.only(right: 20.0, bottom: 20.0),
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 10.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                items[index].image,
                              ),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                blurRadius: 10.0,
                                offset: Offset(0, 5),
                              ),
                            ]),
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.topRight,
                              child: Icon(
                                Icons.favorite_border_outlined,
                                color: white,
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    items[index].titel,
                                    style: TextStyle(
                                      color: white,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        items[index].location,
                                        style: TextStyle(
                                          color: white,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.orange,
                                        size: 15.0,
                                      ),
                                      Text(
                                        items[index].rating,
                                        style: TextStyle(
                                          color: white,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            SizedBox(height: 10.0),
            Container(
              height: 100.0,
              child: ListView.builder(
                  itemCount: categories.length,
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (itemBuilder, index) {
                    return Container(
                      margin: EdgeInsets.only(right: 20.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 30.0,
                            backgroundColor: blueColor,
                            backgroundImage:
                                AssetImage(categories[index].image),
                          ),
                          SizedBox(height: 5.0),
                          Text(categories[index].name),
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 60,
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              for (int k = 0; k < navData.length; k++)
                GestureDetector(
                  onTap: () {
                    setState(() => selectIndex = k);
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        navData[k].image,
                        height: 25.0,
                        color: selectIndex == k ? blueColor : grey,
                      ),
                      SizedBox(height: 5.0),
                      CircleAvatar(
                        radius: 3.0,
                        backgroundColor:
                            selectIndex == k ? blueColor : Colors.transparent,
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
