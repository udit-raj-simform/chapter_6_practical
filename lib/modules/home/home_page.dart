import 'package:chapter_6_practical/values/exports.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _showMore = false;
  late final TextEditingController editingController;
  late final FocusNode focusNode;

  @override
  void initState() {
    editingController = TextEditingController();
    focusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    focusNode.dispose();
    editingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: FocusManager.instance.primaryFocus?.unfocus,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 10.0,
              ),
              SearchBarWidget(
                editingController: editingController,
                focusNode: focusNode,
              ),
              LabelsWidget(
                onTap: removeFocusFromSearchBar,
              ),
              SubHeaderRow(
                title: MyStrings.subHeaderRowTitle,
                onTap: gotoSeeMoreView,
              ),
              MainArticlesWidget(
                goToNewsPage: goToNewsPage,
                articleData: MyLists.listOfArticle,
              ),
              SubHeaderRow(
                title: MyStrings.unfinishedText,
                subtitle: _showMore ? MyStrings.textLess : MyStrings.textMore,
                onTap: () => setState(() => _showMore = !_showMore),
              ),
              const SizedBox(
                height: 10.0,
              ),
              UnfinishedArticlesWidget(
                showMore: _showMore,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void removeFocusFromSearchBar() {
    focusNode.unfocus();
    editingController.clear();
  }

  void gotoSeeMoreView() {
    removeFocusFromSearchBar();
    Navigator.pushNamed(context, "/see_more");
  }

  void goToNewsPage(BuildContext context, int index) {
    removeFocusFromSearchBar();
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => NewsPage(
          articleData: MyLists.listOfArticle[index],
        ),
      ),
    );
  }
}
