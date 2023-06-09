import 'package:chapter_6_practical/values/exports.dart';

class LabelsWidget extends StatefulWidget {
  const LabelsWidget({super.key, required this.onTap, this.index = -1});
  final Function() onTap;
  final int? index;

  @override
  State<LabelsWidget> createState() => _LabelsWidgetState();
}

class _LabelsWidgetState extends State<LabelsWidget> {
  late int? selectedIndex;
  late final ScrollController _scrollController;

  @override
  void initState() {
    selectedIndex = widget.index;
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppValues.labelItemHeight,
      padding: AppValues.labelItemPadding,
      child: ListView.builder(
        controller: _scrollController,
        itemCount: AppValues.labelItemItemsCount,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            if (ModalRoute.of(context)?.settings.name == "/") {
              widget.onTap();
              applyFilter(index);
            } else {
              setState(() {
                selectedIndex = index;
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FilterPage(index: selectedIndex!),
                  ),
                );
                // TODO(Udit Raj): Very costly, try something cheaper
              });
            }
            // TODO(Udit Raj): add functionality to have focus and ensureVisible when selected
          },
          child: Container(
            height: AppValues.labelItemItemHeight,
            decoration: BoxDecoration(
              color: (selectedIndex == index) ? Colors.black87 : Colors.white,
              border: Border.all(
                color: AppValues.labelItemBorderColor,
              ),
            ),
            padding: AppValues.labelItemItemPadding,
            margin: AppValues.labelItemItemMargin,
            child: Text(
              MyLists.labels[index],
              style: AppStyles.labelItemTextStyle(selectedIndex, index),
            ),
          ),
        ),
      ),
    );
  }

  void applyFilter(int index) => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => FilterPage(
            index: index,
          ),
        ),
      );
}
