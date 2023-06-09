import 'package:chapter_6_practical/values/exports.dart';

class ButtonWithText extends StatelessWidget {
  const ButtonWithText({
    super.key,
    required this.title,
    this.color = Colors.black87,
  });
  final String title;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pop(context),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: AppValues.backButtonIconWidth,
            child: Icon(
              AppValues.backButtonIconAsset,
              color: color,
              size: AppValues.backButtonIconSize,
            ),
          ),
          SizedBox(
            width: AppValues.backButtonTextBoxWidth,
            child: Text(
              title,
              style: TextStyle(
                color: color,
                fontSize: AppValues.backButtonTextWFontSize,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
