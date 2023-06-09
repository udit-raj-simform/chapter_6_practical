import 'package:chapter_6_practical/values/exports.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  int _bottomNavIndex = 0;
  int _tabIndex = 0;

  final List<Widget> pages = <Widget>[
    const Home(),
    const Store(
      tabIndex: 0,
    ),
    const FavoritesPage(),
    const Scaffold(),
  ];

  void _provideTabScreen() {
    pages[1] = Store(tabIndex: _tabIndex);
  }

  List<Widget> tabs = const <Tab>[Tab(text: "Android"), Tab(text: "iOS")];

  late final TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(
        length: tabs.length, vsync: this, initialIndex: _tabIndex);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBarWidget(
        bottomNavIndex: _bottomNavIndex,
        onTap: (index) => setState(() => _bottomNavIndex = index),
      ),
      appBar: AppBar(
        title: const Text(
          MyStrings.appTitle,
          style: AppStyles.homeHeaderStyle,
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
        ),
        bottom: (_bottomNavIndex == 1)
            ? TabBar(
                indicatorColor: Colors.black87,
                dividerColor: Colors.black87,
                labelColor: Colors.black87,
                labelStyle: const TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Stigsa',
                ),
                unselectedLabelColor: Colors.black38,
                unselectedLabelStyle: const TextStyle(fontSize: 16.0),
                tabs: tabs,
                controller: _tabController,
                onTap: (index) => setState(() {
                  _tabIndex = index;
                  _provideTabScreen();
                }),
              )
            : const PreferredSize(
                preferredSize: Size.fromHeight(0.0),
                child: SizedBox(),
              ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.looks_two),
        onPressed: () {
          setState(() {
            _bottomNavIndex = 1;
            _tabIndex = 1;
            _provideTabScreen();
            _tabController.animateTo(1);
          });
        },
      ),
      body: pages[_bottomNavIndex],
    );
  }
}
