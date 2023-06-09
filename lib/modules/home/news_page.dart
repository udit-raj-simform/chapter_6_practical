import 'package:chapter_6_practical/values/exports.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({
    super.key,
    required this.articleData,
  });
  final NewsArticle articleData;

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const NewsPageHeader(),
              Hero(
                tag: widget.articleData.id,
                child: Image.asset(
                  widget.articleData.image,
                  width: AppValues.newsPageImageWidth,
                  height: AppValues.newsPageImageHeight,
                  fit: AppValues.newsPageImageFit,
                ),
              ),
              Container(
                padding: AppValues.newsPageTitlePadding,
                child: Text(
                  widget.articleData.title,
                  style: AppStyles.newsPageTitleTextStyle,
                  maxLines: AppValues.newsPageTitleMaxLines,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Container(
                margin: AppValues.newsPageSubTitleMargin,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      widget.articleData.writer,
                      style: AppStyles.newsPageWriterTextStyle,
                    ),
                    Text(
                      widget.articleData.time,
                      style: AppStyles.newsPageTimeTextStyle,
                    ),
                    GestureDetector(
                      onTap: () => toggleFavorite(),
                      child: AppValues.favoriteIcon(
                          articleData: widget.articleData),
                    ),
                  ],
                ),
              ),
              Container(
                padding: AppValues.newsPageDescriptionLargePadding,
                child: Text(
                  widget.articleData.descL,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void toggleFavorite() => setState(
      () => widget.articleData.favorite = !widget.articleData.favorite);
}
