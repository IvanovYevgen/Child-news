import 'package:flutter/material.dart';

class DialogQuestion extends StatelessWidget {
  final double globalSizeWidth;
  final String themeOfTheDay;
  final String textOfTheDay;

  const DialogQuestion({
    this.globalSizeWidth,
    this.themeOfTheDay,
    this.textOfTheDay,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
                    themeOfTheDay,
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
                    textOfTheDay,
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
    );
  }
}
