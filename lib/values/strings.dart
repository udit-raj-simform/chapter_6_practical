import 'package:chapter_6_practical/values/exports.dart';

class MyStrings {
  MyStrings._();

  static const String appTitle = "Best Folk Medicine";
  static const String searchHintText = "Search";

  static const String subHeaderRowTitle = "Main Articles";
  static const String backButtonText = "Back";

  static String mainArticleItemImageAsset(int index) =>
      MyMaps.news[index]!["image"];

  static String mainArticleTagText(int index) => MyMaps.news[index]!["tags"];

  static String mainArticleTimeText(int index) => MyMaps.news[index]!["time"];

  static String mainArticleTitleText(int index) => MyMaps.news[index]!["title"];

  static const String unfinishedText = "You have not finished reading";

  static const String textLess = "See less";

  static const String textMore = "See more";

  static String newPageWriterText(int index) =>
      "Written by ${MyMaps.news[index]!["writer"]}";

  static String newPageTimeText(int index) => MyMaps.news[index]!["time"];

  static const String categoryText = "Categories";

  static const dataUrl = "https://jsonplaceholder.typicode.com/users";
}
