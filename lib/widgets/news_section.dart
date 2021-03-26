import 'package:flutter/material.dart';
import 'package:child_news/widgets/text_maker.dart';

class NewsSection extends StatelessWidget {
  final double globalSizeWidth;
  final String urlForAvatar;
  final String authorName;
  final String pathForBigPicture;
  final String newsText;

  const NewsSection({
    this.globalSizeWidth,
    this.urlForAvatar,
    this.authorName,
    this.pathForBigPicture,
    this.newsText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey[300], width: 7.0),
        ),
      ),
      child: Column(
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
                        image: NetworkImage(urlForAvatar), fit: BoxFit.fill),
                  ),
                ),
                SizedBox(width: 12),
                Text(
                  authorName,
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
          bigPictureBuilder(pathForBigPicture),
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
              newsText,
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
          iconsRowBuilder(),
        ],
      ),
    );
  }

  Padding iconsRowBuilder() {
    return Padding(
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
    );
  }

  Widget bigPictureBuilder(String urlForPicture) {
    return urlForPicture == null
        ? Container()
        : Container(
            height: 260,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(urlForPicture),
                fit: BoxFit.fill,
              ),
            ),
          );
  }
}
