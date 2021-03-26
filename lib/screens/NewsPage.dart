import 'package:child_news/values/app_colors.dart';
import 'package:child_news/widgets/dialog_question.dart';
import 'package:child_news/widgets/home_screen_tab.dart';
import 'package:child_news/widgets/news_section.dart';
import 'package:flutter/material.dart';

class NewsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
            DialogQuestion(
              globalSizeWidth: globalSizeWidth,
              themeOfTheDay: 'Тема дня',
              textOfTheDay: 'А как Вы с любимым ласково называете друг друга?',
            ),
            NewsSection(
              globalSizeWidth: globalSizeWidth,
              authorName: 'Anna Ivanova',
              urlForAvatar:
                  'https://images.unsplash.com/photo-1557555187-23d685287bc3?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjV8fHdvbWFufGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
              newsText: 'Давно выяснено, что при оценке дизайна и композиции '
                  'читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, '
                  'что тот обеспечивает более или...',
              pathForBigPicture: null,
            ),
            NewsSection(
              globalSizeWidth: globalSizeWidth,
              authorName: 'Anna Ivanova',
              urlForAvatar:
                  'https://images.unsplash.com/photo-1557555187-23d685287bc3?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjV8fHdvbWFufGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
              newsText: 'Давно выяснено, что при оценке дизайна и композиции '
                  'читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, '
                  'что тот обеспечивает более или...',
              pathForBigPicture: 'assets/images/big_picture.jpg',
            ),
          ],
        ),
      ),
    );
  }
}
