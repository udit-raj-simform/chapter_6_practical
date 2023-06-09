import 'package:chapter_6_practical/values/exports.dart';

mixin AppValues {

  static int counter = 0;

  static const mainArticlePadding =
      EdgeInsets.only(top: 5.0, left: 15.0, right: 8.0, bottom: 15.0);
  static final mainArticleHeight = MyConstants.height * 0.40;
  static final mainArticleItemCount = MyMaps.news.length;
  static const mainArticleAnimationDuration = Duration(milliseconds: 300);
  static final mainArticleItemWidth = MyConstants.width * 0.7;

  static const searchBarPrefixIcon = Icon(
    Icons.search_sharp,
    color: Colors.grey,
  );

  static Widget searchBarSuffixIcon(BuildContext context) => GestureDetector(
        onTap: () => Navigator.pop(context),
        child: SizedBox(
          height: 15.0,
          width: 15.0,
          child: Center(
            child: Image.asset(
              "assets/icons/close.png",
              color: Colors.black38,
              height: 15.0,
              width: 15.0,
              fit: BoxFit.cover,
            ),
          ),
        ),
      );
  static const searchBarDecoration = BoxDecoration(
    color: Colors.white,
    boxShadow: <BoxShadow>[
      BoxShadow(
        color: Colors.black12,
        spreadRadius: 5.0,
        blurRadius: 10.0,
        offset: Offset(0.0, 4.0),
      ),
    ],
  );

  static const bottomNavBarItemHeight = 18.0;
  static const bottomNavBarItemWidth = 18.0;

  static Color? bottomNavBarItemColor(int index, int selectedIndex) =>
      (selectedIndex == index) ? Colors.black87 : Colors.black38;

  static EdgeInsets mainArticleItemMargin(int index) => EdgeInsets.only(
      top: 15.0,
      right: 15.0,
      bottom: (MyMaps.news[index]!["title"]!.length >= 50) ? 15.0 : 35.0);
  static const mainArticleItemDecoration = BoxDecoration(
    boxShadow: <BoxShadow>[
      BoxShadow(
        color: Colors.black26,
        spreadRadius: 1.0,
        blurRadius: 8.0,
        offset: Offset(2.0, 4.0),
      ),
    ],
  );
  static const mainArticleItemElevation = 5.0;

  static final mainArticleItemImageWidth = MyConstants.width * 0.7;
  static final mainArticleItemImageHeight = MyConstants.height * 0.225;

  static const mainArticleItemImageFit = BoxFit.fill;

  static const mainArticleItemTextBackgroundColor = Colors.white;
  static const mainArticleItemTextMargin = EdgeInsets.symmetric(
    vertical: 10.0,
    horizontal: 15.0,
  );
  static const mainArticleItemTitleTextPadding = EdgeInsets.only(
    left: 15.0,
    right: 15.0,
    top: 8.0,
    bottom: 8.0,
  );

  static const backButtonIconWidth = 25.0;
  static const backButtonIconAsset = Icons.arrow_back_ios;
  static const backButtonIconSize = 16.0;
  static const backButtonTextWFontSize = 16.0;
  static const backButtonTextBoxWidth = 45.0;

  static int mainArticleItemTitleTextMaxLines(int index) =>
      (MyMaps.news[index]!["title"]!.length >= 50) ? 3 : 2;

  static const labelItemHeight = 90.0; // MyConstants.height * 0.135
  static const labelItemPadding = EdgeInsets.only(left: 7.5);
  static final labelItemItemsCount = MyLists.labels.length;
  static final labelItemItemHeight = MyConstants.height * 0.09;
  static const labelItemBorderColor = Colors.black12;
  static const labelItemItemPadding = EdgeInsets.all(20.0);
  static const labelItemItemMargin = EdgeInsets.symmetric(
    vertical: 15.0,
    horizontal: 7.5,
  );

  static int unfinishedArticlesItemCount(bool showMore) =>
      showMore ? MyMaps.news.length : 4;
  static const unfinishedArticlesItemMargin = MyConstants.marginSym;

  static String unfinishedArticlesImageAsset(int index) =>
      MyMaps.news[index]!["image"];
  static final unfinishedArticlesImageHeight = MyConstants.height * 0.12;
  static final unfinishedArticlesImageWidth = MyConstants.width * 0.35;
  static const unfinishedArticlesImageGapFromText = 15.0;
  static const unfinishedArticlesTextPadding = EdgeInsets.only(top: 5.0);

  static String unfinishedArticlesTitleText(int index) =>
      MyMaps.news[index]!["title"];
  static const unfinishedArticlesTitleTextMaxLines = 2;
  static const unfinishedArticlesTitleGapFromTime = 3.0;
  static const unfinishedArticlesTimeGapFromSubTitle = 5.0;
  static const unfinishedArticlesSubTitleTextMaxLines = 2;

  static String unfinishedArticlesTimeText(int index) =>
      MyMaps.news[index]!["time"];

  static String unfinishedArticlesDescText(int index) =>
      MyMaps.news[index]!["desc"];

  static const newsPageHeaderPadding =
      EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0);

  static String newsPageImageAsset(int index) => MyMaps.news[index]!["image"];
  static final newsPageImageWidth = MyConstants.width;
  static final newsPageImageHeight = MyConstants.height * 0.33;
  static const newsPageImageFit = BoxFit.cover;

  static const newsPageTitlePadding = EdgeInsets.symmetric(
    horizontal: 15.0,
    vertical: 10.0,
  );

  static String newsPageTitleText(int index) => MyMaps.news[index]!["title"];
  static const newsPageTitleMaxLines = 3;
  static const newsPageSubTitleMargin = EdgeInsets.symmetric(
    vertical: 10.0,
    horizontal: 15.0,
  );

  static Widget favoriteIcon({required NewsArticle articleData}) =>
      (articleData.favorite == true)
          ? Image.asset(
              "assets/icons/star_filled.png",
              height: 24.0,
              width: 24.0,
            )
          : Image.asset(
              "assets/icons/star_outlined.png",
              height: 24.0,
              width: 24.0,
            );

  static const newsPageDescriptionLargePadding = EdgeInsets.symmetric(
    horizontal: 15.0,
    vertical: 10.0,
  );

  static String newsPageDescriptionLargeText(int index) =>
      MyMaps.news[index]!["desc-l"];

  static const filterPageHeaderPadding = EdgeInsets.all(15.0);
}
