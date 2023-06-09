import 'package:chapter_6_practical/values/exports.dart';

class SubHeaderRow extends StatelessWidget {
  const SubHeaderRow({
    super.key,
    required this.title,
    this.subtitle = MyStrings.textMore,
    this.onTap,
  });
  final String title;
  final String subtitle;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: MyConstants.marginSym,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: AppStyles.subHeaderRowTitleStyle,
          ),
          GestureDetector(
            onTap: onTap,
            child: Text(
              subtitle,
              style: AppStyles.subHeaderRowSubtitleStyle,
            ),
          ),
        ],
      ),
    );
  }
}
