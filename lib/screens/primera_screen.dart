import 'package:fluent_ui/fluent_ui.dart';

class PrimeraScreen extends StatefulWidget {
  const PrimeraScreen({Key? key}) : super(key: key);

  @override
  State<PrimeraScreen> createState() => _PrimeraScreenState();
}

class _PrimeraScreenState extends State<PrimeraScreen> {
  bool _checked = false;
  bool _checked2 = false;
  double _slider = 0;
  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
        header: const PageHeader(
          title: Text('Primera Screen'),
        ),
        content: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
              const SizedBox(height: 15),
              Checkbox(
                  content: const Text('Check Box'),
                  checked: _checked,
                  onChanged: (v) {
                    setState(() {
                      _checked = v!;
                    });
                  }),
              const SizedBox(height: 15),
              ToggleSwitch(
                  content: const Text('Toggle Box'),
                  checked: _checked2,
                  onChanged: (v) {
                    setState(() {
                      _checked2 = v;
                    });
                  }),
              const SizedBox(height: 15),
              SizedBox(
                width: 200,
                child: Slider(
                  label: '${_slider.toInt()}',
                  max: 100,
                  value: _slider,
                  onChanged: (v) {
                    setState(() {
                      _slider = v;
                    });
                  },
                ),
              ),
              const SizedBox(height: 15),
              const ProgressBar(),
              const SizedBox(height: 15),
              const ProgressRing(),
              const SizedBox(height: 15),
            ],
          ),
        ));
  }
}
