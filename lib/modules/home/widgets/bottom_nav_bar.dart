import 'package:chapter_6_practical/values/exports.dart';

class BottomNavBarWidget extends StatefulWidget {
  const BottomNavBarWidget({super.key, required this.bottomNavIndex, this.onTap});
  final int bottomNavIndex;
  final void Function(int)? onTap;

  @override
  State<BottomNavBarWidget> createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: widget.bottomNavIndex,
      onTap: widget.onTap,
      items: MyLists.bottomNavIcons(widget.bottomNavIndex),
    );
  }
}
