import 'package:child_news/values/app_colors.dart';
import 'package:child_news/widgets/home_screen_tab.dart';
import 'package:child_news/widgets/text_maker.dart';
import 'package:flutter/material.dart';

class NewsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final globalSizeHeight = MediaQuery.of(context).size.height;
    final globalSizeWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: AppColors.primaryText),
        backgroundColor: AppColors.primaryColor,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 18),
          child: Container(
            decoration:
                BoxDecoration(color: Color(0xFF3bb4c1), shape: BoxShape.circle),
            child: IconButton(
              icon: Icon(
                Icons.filter_list,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Text(
            'Грудное вскармливание',
            style: TextStyle(
                color: AppColors.primaryText,
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Image.asset(
              'assets/images/location_pin_place.png',
              height: 20,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.search,
              color: AppColors.primaryText,
            ),
            onPressed: () {},
          )
        ],
        toolbarHeight: 70,
      ),
      backgroundColor: AppColors.primaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Divider(thickness: 1),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.grey[300], width: 7.0),
                ),
              ),
              child: HomeScreenTab(
                firstTab: 'Новые',
                secondTab: 'Популярные',
                thirdTab: 'Подписки',
                functionForTabs: (tab) {},
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Color(0xFF3bb4c1),
                border: Border(
                  bottom: BorderSide(color: Colors.grey[300], width: 7.0),
                ),
              ),
              height: 130,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Icon(
                          Icons.arrow_forward,
                          size: 18,
                          color: Colors.white,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            'Тема дня',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ),
                        SizedBox(width: globalSizeWidth * 0.67),
                        Icon(
                          Icons.close,
                          size: 24,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            'А как Вы с любимым ласково называете друг друга?',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 10, 0, 0),
                  child: Row(
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://images.unsplash.com/photo-1557555187-23d685287bc3?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjV8fHdvbWFufGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60'),
                              fit: BoxFit.fill),
                        ),
                      ),
                      SizedBox(width: 12),
                      Text(
                        'Anna Ivanova',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextMaker(
                        padding: EdgeInsets.only(left: 14),
                        text: '1г 2м',
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.pink[300]),
                        fontSize: 10,
                        colour: Colors.white,
                        textDecoration: TextDecoration.none,
                        fontStyle: null,
                      ),
                      TextMaker(
                        padding: EdgeInsets.only(left: 6),
                        text: '2н',
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Color(0xFF3bb4c1)),
                        fontSize: 10,
                        colour: Colors.white,
                        textDecoration: TextDecoration.none,
                        fontStyle: null,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 10, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Погодки!',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 10, 0, 0),
                  child: Text(
                    'Давно выяснено, что при оценке дизайна и композиции '
                    'читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, '
                    'что тот обеспечивает более или...',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 16, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        '15 мая 2018',
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                      SizedBox(width: globalSizeWidth * 0.3),
                      Icon(
                        Icons.arrow_forward,
                        size: 18,
                        color: Colors.grey,
                      ),
                      SizedBox(width: 4),
                      Text(
                        'От рождения до года',
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Divider(thickness: 1),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 6, 16, 12),
                  child: Row(
                    children: [
                      Icon(
                        Icons.favorite_border,
                        size: 24,
                        color: Colors.grey,
                      ),
                      SizedBox(width: 4),
                      Text(
                        '24',
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                      SizedBox(width: 12),
                      Icon(
                        Icons.mode_comment_outlined,
                        size: 24,
                        color: Colors.grey,
                      ),
                      SizedBox(width: 4),
                      Text(
                        '14',
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                      SizedBox(width: 12),
                      Image.asset(
                        'assets/images/next.png',
                        height: 24,
                        color: Colors.grey,
                      ),
                      SizedBox(width: globalSizeWidth * 0.52),
                      Icon(
                        Icons.star_outline,
                        size: 24,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 10, 0, 8),
                  child: Row(
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://images.unsplash.com/photo-1557555187-23d685287bc3?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjV8fHdvbWFufGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60'),
                              fit: BoxFit.fill),
                        ),
                      ),
                      SizedBox(width: 12),
                      Text(
                        'Anna Ivanova',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextMaker(
                        padding: EdgeInsets.only(left: 14),
                        text: '1г 2м',
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.pink[300]),
                        fontSize: 10,
                        colour: Colors.white,
                        textDecoration: TextDecoration.none,
                        fontStyle: null,
                      ),
                      TextMaker(
                        padding: EdgeInsets.only(left: 6),
                        text: '2н',
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Color(0xFF3bb4c1)),
                        fontSize: 10,
                        colour: Colors.white,
                        textDecoration: TextDecoration.none,
                        fontStyle: null,
                      ),
                    ],
                  ),
                ),
                Container(height: 260,
                decoration: BoxDecoration(
                image: DecorationImage(
                image: AssetImage("assets/images/big_picture.jpg"),
                fit: BoxFit.fill,
                ),
                ),),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 10, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Погодки!',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 10, 0, 0),
                  child: Text(
                    'Давно выяснено, что при оценке дизайна и композиции '
                        'читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, '
                        'что тот обеспечивает более или...',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 16, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        '15 мая 2018',
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                      SizedBox(width: globalSizeWidth * 0.3),
                      Icon(
                        Icons.arrow_forward,
                        size: 18,
                        color: Colors.grey,
                      ),
                      SizedBox(width: 4),
                      Text(
                        'От рождения до года',
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Divider(thickness: 1),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 6, 16, 12),
                  child: Row(
                    children: [
                      Icon(
                        Icons.favorite_border,
                        size: 24,
                        color: Colors.grey,
                      ),
                      SizedBox(width: 4),
                      Text(
                        '24',
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                      SizedBox(width: 12),
                      Icon(
                        Icons.mode_comment_outlined,
                        size: 24,
                        color: Colors.grey,
                      ),
                      SizedBox(width: 4),
                      Text(
                        '14',
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                      SizedBox(width: 12),
                      Image.asset(
                        'assets/images/next.png',
                        height: 24,
                        color: Colors.grey,
                      ),
                      SizedBox(width: globalSizeWidth * 0.52),
                      Icon(
                        Icons.star_outline,
                        size: 24,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.grey[300], width: 7.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
