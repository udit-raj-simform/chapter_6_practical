import 'package:chapter_6_practical/values/exports.dart';

class NewsPageHeader extends StatelessWidget {
  const NewsPageHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppValues.newsPageHeaderPadding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          ButtonWithText(
            title: MyStrings.backButtonText,
          ),
          Icon(Icons.share_rounded),
        ],
      ),
    );
  }
}
