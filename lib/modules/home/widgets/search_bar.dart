import 'package:chapter_6_practical/modules/home/search_page.dart';
import 'package:chapter_6_practical/values/exports.dart';

class SearchBarWidget extends StatefulWidget {
  const SearchBarWidget(
      {super.key, required this.editingController, required this.focusNode})
      ;
  final TextEditingController editingController;
  final FocusNode focusNode;

  @override
  State<SearchBarWidget> createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: MyConstants.marginSym,
      decoration: AppValues.searchBarDecoration,
      child: TextField(
        controller: widget.editingController,
        focusNode: widget.focusNode,
        textInputAction: TextInputAction.search,
        decoration: const InputDecoration(
          prefixIcon: AppValues.searchBarPrefixIcon,
          focusedBorder: InputBorder.none,
          focusedErrorBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          hintText: MyStrings.searchHintText,
          hintStyle: AppStyles.searchBarHintStyle,
        ),
        onChanged: (String value) {
          if (value != "") {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SearchPage(
                  oldSearchValue: value,
                ),
              ),
            );
            widget.editingController.text = "";
          }
        },
      ),
    );
  }
}
