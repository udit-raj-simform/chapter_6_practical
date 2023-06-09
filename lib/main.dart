import 'package:chapter_6_practical/values/exports.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((value) {
        runApp(const MyApp());
        MyLists.convert();
      });
}
