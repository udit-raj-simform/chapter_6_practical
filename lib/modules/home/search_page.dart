import 'package:chapter_6_practical/values/exports.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key, required this.oldSearchValue});
  final String oldSearchValue;

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  String? searchValue;
  late TextEditingController _textEditingController;

  final bool _showSuffix = true;

  @override
  void initState() {
    searchValue = widget.oldSearchValue;
    _textEditingController = TextEditingController();
    _textEditingController.text = searchValue!;
    super.initState();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TitledAppBar(),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: MyConstants.marginSym,
              decoration: AppValues.searchBarDecoration,
              child: TextField(
                controller: _textEditingController,
                autofocus: true,
                decoration: InputDecoration(
                  prefixIcon: AppValues.searchBarPrefixIcon,
                  suffixIcon: _showSuffix
                      ? AppValues.searchBarSuffixIcon(context)
                      : null,
                  focusedBorder: InputBorder.none,
                  focusedErrorBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  hintText: MyStrings.searchHintText,
                  hintStyle: AppStyles.searchBarHintStyle,
                ),
                onChanged: (String value) {
                  if (value.isEmpty) {
                    Navigator.pop(context);
                  } else {
                    setState(() {
                      searchValue = value;
                    });
                  }
                },
              ),
            ),
            Flexible(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: MyMaps.news.length,
                itemBuilder: (context, index) {
                  return UnfinishedArticlesItem(
                    index: index,
                    condition: condition,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  bool condition(int index) {
    var temp = MyMaps.news[index]!;
    if (temp["title"]
            .toString()
            .toLowerCase()
            .contains(searchValue.toString()) ||
        temp["desc"]
            .toString()
            .toLowerCase()
            .contains(searchValue.toString()) ||
        temp["tags"]
            .toString()
            .toLowerCase()
            .contains(searchValue.toString()) ||
        temp["writer"]
            .toString()
            .toLowerCase()
            .contains(searchValue.toString())) {
      return true;
    } else {
      return false;
    }
  }
}
