import 'package:chapter_6_practical/values/exports.dart';

mixin AppStyles {
  static const homeHeaderStyle = TextStyle(
    color: Colors.black,
    fontFamily: 'Clambake October Six',
    fontSize: 24.0,
    fontStyle: FontStyle.italic,
    fontWeight: FontWeight.bold,
  );
  static const searchBarHintStyle = TextStyle(
    color: Colors.grey,
  );

  static const subHeaderRowTitleStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 16.0,
  );
  static const subHeaderRowSubtitleStyle = TextStyle(
    color: Colors.black38,
  );

  static const mainArticleTagStyle = TextStyle(
    fontSize: 12.0,
  );
  static const mainArticleTimeStyle = TextStyle(
    color: Colors.black38,
    fontSize: 10.0,
  );
  static const mainArticleTitleStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 19.0,
    fontFamily: 'Stigsa',
  );

  static TextStyle labelItemTextStyle(int? selectedIndex, int index) =>
      TextStyle(
        fontWeight: FontWeight.bold,
        color: (selectedIndex == index) ? Colors.white : Colors.black87,
      );

  static const unfinishedArticlesTitleTextStyle = TextStyle(
    fontFamily: 'Stigsa',
    fontWeight: FontWeight.bold,
    fontSize: 16.0,
  );
  static const unfinishedArticlesTimeTextStyle = TextStyle(
    fontSize: 10.0,
  );

  static TextStyle unfinishedArticlesDescTextStyle(int index) =>
      const TextStyle(
        fontWeight: FontWeight.normal,
        color: Colors.black38,
        fontSize: 13.0,
      );

  static const newsPageTitleTextStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 18.0,
    fontFamily: 'Stigsa',
  );

  static const newsPageWriterTextStyle = TextStyle(
    fontSize: 14.0,
  );

  static const newsPageTimeTextStyle = TextStyle(
    color: Colors.black38,
    fontSize: 12.0,
  );

  static const filterPageHeaderStyle = TextStyle(
    fontFamily: 'Stigsa',
    fontWeight: FontWeight.bold,
    fontSize: 25.0,
  );
}
