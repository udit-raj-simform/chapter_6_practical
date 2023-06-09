import 'package:chapter_6_practical/values/exports.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({super.key, required this.index});
  final int index;

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  late int selectedIndex;

  @override
  void initState() {
    selectedIndex = widget.index;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const NewsPageHeader(),
              Container(
                padding: AppValues.filterPageHeaderPadding,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      MyStrings.categoryText,
                      style: AppStyles.filterPageHeaderStyle,
                    ),
                  ],
                ),
              ),
              LabelsWidget(
                onTap: () {
                  // TODO(Udit Raj): update list when change index on same page
                },
                index: selectedIndex,
              ),
              ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: MyLists.labels.length,
                itemBuilder: (context, index) => UnfinishedArticlesItem(
                  index: index,
                  condition: condition,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool condition(int index) =>
      (MyLists.labels.elementAt(selectedIndex) == MyMaps.news[index]!["tags"]);
}
