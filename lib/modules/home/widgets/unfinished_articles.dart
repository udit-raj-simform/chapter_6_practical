import 'package:chapter_6_practical/values/exports.dart';

class UnfinishedArticlesWidget extends StatelessWidget {
  const UnfinishedArticlesWidget({super.key, required this.showMore})
      ;
  final bool showMore;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: AppValues.unfinishedArticlesItemCount(showMore),
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => MyMaps.news[index]!["unfinished"]
          ? UnfinishedArticlesItem(index: index, condition: condition,)
          : const SizedBox(),
    );
  }
  
  bool condition(int index) => true;
}
