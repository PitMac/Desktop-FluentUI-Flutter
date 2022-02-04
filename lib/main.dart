import 'package:desktop_app/screens/navigation_screen.dart';
import 'package:fluent_ui/fluent_ui.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FluentApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      // theme: ThemeData.dark(),
      home: NavigationScreen(),
    );
  }
}
