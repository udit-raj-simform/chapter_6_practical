import 'package:chapter_6_practical/values/exports.dart';

class UnfinishedArticlesItem extends StatelessWidget {
  const UnfinishedArticlesItem(
      {super.key, required this.index, required this.condition});
  final int index;
  final bool Function(int) condition;

  @override
  Widget build(BuildContext context) {
    if (condition(index) == true) {
      return articleItem(context);
    } else {
      return const SizedBox.shrink();
    }
  }

  Widget articleItem(BuildContext context) => GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => NewsPage(
                articleData: MyLists.listOfArticle[index],
              ),
            ),
          );
        },
        child: Container(
          margin: AppValues.unfinishedArticlesItemMargin,
          child: Row(
            children: [
              SizedBox(
                height: AppValues.unfinishedArticlesImageHeight,
                width: AppValues.unfinishedArticlesImageWidth,
                child: Image.asset(
                  AppValues.unfinishedArticlesImageAsset(index),
                  height: AppValues.unfinishedArticlesImageHeight,
                  width: AppValues.unfinishedArticlesImageWidth,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                width: AppValues.unfinishedArticlesImageGapFromText,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      padding: AppValues.unfinishedArticlesTextPadding,
                      child: Text(
                        AppValues.unfinishedArticlesTitleText(index),
                        style: AppStyles.unfinishedArticlesTitleTextStyle,
                        maxLines: AppValues.unfinishedArticlesTitleTextMaxLines,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(
                      height: AppValues.unfinishedArticlesTitleGapFromTime,
                    ),
                    Text(
                      AppValues.unfinishedArticlesTimeText(index),
                      style: AppStyles.unfinishedArticlesTimeTextStyle,
                    ),
                    const SizedBox(
                      height: AppValues.unfinishedArticlesTimeGapFromSubTitle,
                    ),
                    Text(
                      AppValues.unfinishedArticlesDescText(index),
                      maxLines:
                          AppValues.unfinishedArticlesSubTitleTextMaxLines,
                      overflow: TextOverflow.ellipsis,
                      style: AppStyles.unfinishedArticlesDescTextStyle(index),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}
