import 'package:chapter_6_practical/values/exports.dart';

class Store extends StatelessWidget {
  const Store({super.key, required this.tabIndex});

  final int tabIndex;

  @override
  Widget build(BuildContext context) {
    List<Widget> tabScreens = const <Widget>[AndroidScreen(), IOSScreen()];
    return tabScreens[tabIndex];
  }
}
