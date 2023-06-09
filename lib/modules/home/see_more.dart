import 'package:chapter_6_practical/values/exports.dart';

class SeeMorePage extends StatelessWidget {
  const SeeMorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const NewsPageHeader(),
            Flexible(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: MyMaps.news.length,
                itemBuilder: (context, index) => UnfinishedArticlesItem(
                  index: index,
                  condition: condition,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  bool condition(int index) => true;
}
