import 'package:desktop_app/screens/primera_screen.dart';
import 'package:desktop_app/screens/segunda_screen.dart';
import 'package:fluent_ui/fluent_ui.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int _currentIdex = 0;
  @override
  Widget build(BuildContext context) {
    return NavigationView(
      appBar: const NavigationAppBar(
        leading: Center(
          child: FlutterLogo(size: 25),
        ),
      ),
      pane: NavigationPane(
        header: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: DefaultTextStyle(
            style: FluentTheme.of(context).typography.title!,
            child: const Text('Flutter Desktop'),
          ),
        ),
        items: [
          PaneItem(
            icon: const Icon(FluentIcons.a_t_p_logo),
            title: const Text('Screen 1'),
          ),
          PaneItem(
            icon: const Icon(FluentIcons.text_box),
            title: const Text('Screen 2'),
          ),
        ],
        selected: _currentIdex,
        displayMode: PaneDisplayMode.auto,
        onChanged: (i) {
          setState(() {
            _currentIdex = i;
          });
        },
      ),
      content: NavigationBody(
        index: _currentIdex,
        children: const [
          PrimeraScreen(),
          SegundaScreen(),
        ],
      ),
    );
  }
}
