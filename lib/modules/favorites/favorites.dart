import 'package:chapter_6_practical/values/exports.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
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

  bool condition(int index) => MyLists.listOfArticle[index].favorite == true;

  void goToNewsPage(BuildContext context, int index) => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => NewsPage(
            articleData: MyLists.listOfArticle[index],
          ),
        ),
      );
}
