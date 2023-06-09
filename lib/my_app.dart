
import 'package:chapter_6_practical/values/exports.dart';

final NavigationMiddleware _navigationMiddleware = NavigationMiddleware();


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: MyStrings.appTitle,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light(),
      themeMode: ThemeMode.light,
      home: const HomeScreen(),
      routes: {
        "/see_more": (context) => const SeeMorePage()
      },
      navigatorObservers: [_navigationMiddleware],
      navigatorKey: NavigationUtils.navigatorKey,
    );
  }
}
