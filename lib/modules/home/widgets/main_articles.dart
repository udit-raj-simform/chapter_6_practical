import 'package:chapter_6_practical/values/exports.dart';

class MainArticlesWidget extends StatelessWidget {
  const MainArticlesWidget({
    super.key,
    required this.goToNewsPage,
    required this.articleData,
  });

  final Function goToNewsPage;
  final List<NewsArticle> articleData;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: AppValues.mainArticlePadding,
      height: AppValues.mainArticleHeight,
      child: ListView.builder(
        itemCount: articleData.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () => goToNewsPage(context, index),
          child: AnimatedContainer(
            duration: AppValues.mainArticleAnimationDuration,
            width: AppValues.mainArticleItemWidth,
            margin: AppValues.mainArticleItemMargin(index),
            decoration: AppValues.mainArticleItemDecoration,
            child: Material(
              elevation: AppValues.mainArticleItemElevation,
              child: Column(
                children: [
                  SizedBox(
                    height: AppValues.mainArticleItemImageHeight,
                    width: AppValues.mainArticleItemImageWidth,
                    child: Hero(
                      tag: articleData[index].id,
                      child: Image.asset(
                        articleData[index].image,
                        fit: AppValues.mainArticleItemImageFit,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                        color: AppValues.mainArticleItemTextBackgroundColor,
                        child: Column(
                          children: [
                            Container(
                              margin: AppValues.mainArticleItemTextMargin,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    articleData[index].tags.toString(),
                                    style: AppStyles.mainArticleTagStyle,
                                  ),
                                  Text(
                                    articleData[index].time.toString(),
                                    style: AppStyles.mainArticleTimeStyle,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding:
                                  AppValues.mainArticleItemTitleTextPadding,
                              child: Text(
                                articleData[index].title.toString(),
                                style: AppStyles.mainArticleTitleStyle,
                                maxLines:
                                    AppValues.mainArticleItemTitleTextMaxLines(
                                        index),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        )),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
