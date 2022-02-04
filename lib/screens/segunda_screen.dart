import 'package:fluent_ui/fluent_ui.dart';

class SegundaScreen extends StatelessWidget {
  const SegundaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      header: const PageHeader(
        title: Text('Segunda Screen'),
      ),
      content: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: const [
            SizedBox(height: 20),
            SizedBox(
              width: 250,
              child: TextBox(
                placeholder: 'Type your notes here',
              ),
            ),
            SizedBox(height: 20),
            const ContendD(),
          ],
        ),
      ),
    );
  }
}

class ContendD extends StatelessWidget {
  const ContendD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Button(
      child: const Text('Content Dialog'),
      onPressed: () {
        showDialog(
            context: context,
            builder: (context) {
              return ContentDialog(
                title: const Text('Este es el titulo'),
                content: const Text('Este es el contenido'),
                actions: [
                  Button(
                    child: const Text('OK'),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  Button(
                    child: const Text('Cancel'),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              );
            });
      },
    );
  }
}
