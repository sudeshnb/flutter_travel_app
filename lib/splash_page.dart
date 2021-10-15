import 'package:flutter/material.dart';
import 'package:uidesign08/data/data.dart';
import 'package:uidesign08/home_page.dart';
import 'package:uidesign08/progress_view.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  PageController controller = PageController();
  int selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (builder) => HomePage()));
            },
            child: Text('SKIP'),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(bottom: 50.0, top: 20.0),
        child: Column(
          children: [
            Expanded(
              child: NotificationListener<OverscrollIndicatorNotification>(
                onNotification: (notify) {
                  notify.disallowGlow();
                  return false;
                },
                child: PageView.builder(
                    onPageChanged: (index) {
                      setState(() => selectIndex = index);
                    },
                    itemCount: pages.length,
                    itemBuilder: (itemBuilder, index) {
                      return Container(
                        child: Column(
                          children: [
                            Container(
                              height: 350,
                              width: double.infinity,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      height: 350,
                                      width: 250,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                          image: DecorationImage(
                                            image: AssetImage(
                                              pages[index].image,
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.black.withOpacity(0.1),
                                              blurRadius: 20,
                                              offset: Offset(0, 10),
                                            ),
                                          ]),
                                    ),
                                  ),
                                  Positioned(
                                    left: 0,
                                    child: Container(
                                      width: 50,
                                      height: 350,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                            pages[index == 0
                                                    ? pages.length - 1
                                                    : index - 1]
                                                .image,
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Colors.black.withOpacity(0.1),
                                            blurRadius: 20,
                                            offset: Offset(0, 10),
                                          ),
                                        ],
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(20),
                                          bottomRight: Radius.circular(20),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    right: 0,
                                    child: Container(
                                      width: 50,
                                      height: 350,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                            pages[index == pages.length - 1
                                                    ? 0
                                                    : index + 1]
                                                .image,
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Colors.black.withOpacity(0.1),
                                            blurRadius: 20,
                                            offset: Offset(0, 10),
                                          ),
                                        ],
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20),
                                          bottomLeft: Radius.circular(20),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 35),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20.0),
                              child: Text(
                                pages[index].title,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            SizedBox(height: 15),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20.0),
                              child: Text(
                                pages[index].subTitle,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  height: 1.5,
                                ),
                              ),
                            ),
                            SizedBox(height: 60),
                          ],
                        ),
                      );
                    }),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      for (int i = 0; i < pages.length; i++)
                        Container(
                          height: 5,
                          width: i == selectIndex ? 35 : 5,
                          margin: EdgeInsets.only(right: 8.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.0),
                            color: i == selectIndex
                                ? Colors.blue
                                : Colors.grey.shade300,
                          ),
                        )
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      if (selectIndex == 4) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => HomePage()));
                      }
                    },
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.white,
                      child: ProgressView(
                        value: selectIndex / 100,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
