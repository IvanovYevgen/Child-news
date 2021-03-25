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
        leading:   Padding(
          padding: const EdgeInsets.only(left: 18),
          child: Container(
            decoration: BoxDecoration(
                color: Color(0xFF3bb4c1),
                shape: BoxShape.circle
            ),
            child:
            IconButton(
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
            style: TextStyle(color: AppColors.primaryText, fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Image.asset('assets/images/location_pin_place.png',
            height: 20, color: Colors.black,),
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
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Divider(thickness: 1),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
                    color: Colors.grey[300],
                    width: 7.0
                ),
            ),
          ),
          child: HomeScreenTab(
            firstTab: 'Новые',
            secondTab: 'Популярные',
            thirdTab: 'Подписки',
            functionForTabs: (tab) {},
          ),
        ),
        Container( decoration: BoxDecoration(color: Color(0xFF3bb4c1),
          border: Border(
            bottom: BorderSide(
                color: Colors.grey[300],
                width: 7.0
            ),
          ),
        ),
            height: 130,
          child: Column(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(children: [
                            Icon(
                              Icons.arrow_forward,
                              size: 18,color: Colors.white,
                            ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text('Тема дня', style: TextStyle(color: Colors.white, fontSize: 12),),
                  ),
                            SizedBox(width: globalSizeWidth*0.67),
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
                      child: Text('А как Вы с любимым ласково называете друг друга?',
                       style: TextStyle(color: Colors.white, fontSize: 20,fontWeight:  FontWeight.bold),),
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
              padding: const EdgeInsets.fromLTRB(16,10,0,0),
              child: Row(
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage('https://googleflutter.com/sample_image.jpg'),
                          fit: BoxFit.fill
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Text('Анна Иванова', style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),),
                  TextMaker(
                    padding: EdgeInsets.only(left: 14),
                    text: '1г 2м',
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12), color: Colors.pink[300]
                    ),
                    fontSize: 10,
                    colour: Colors.white,
                    textDecoration: TextDecoration.none,
                    fontStyle: null,
                  ),
                  TextMaker(
                    padding: EdgeInsets.only(left: 14),
                    text: '2н',
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12), color: Color(0xFF3bb4c1)
                    ),
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
              child: Row(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Погодки!', style: TextStyle(color: Colors.black, fontSize: 26,fontWeight:  FontWeight.bold),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 10, 0, 0),
              child: Text('Давно выяснено, что при оценке дизайна и композиции '
                  'читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, '
                  'что тот обеспечивает более или...', style: TextStyle(color: Colors.black, fontSize: 16),),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 0, 0),
              child: Row(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('15 мая 2018 года', style: TextStyle(color: Colors.grey, fontSize: 12),),
                  SizedBox(width: globalSizeWidth*0.3),
                  Icon(
                    Icons.arrow_forward,
                    size: 18,color: Colors.grey,
                  ),
                  SizedBox(width: 4),
                  Text('от рождения до года', style: TextStyle(color: Colors.grey, fontSize: 12),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Divider(thickness: 1),
            ),
          ],
        ),
      ],
      ),
    );
  }
}
