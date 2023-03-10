import 'package:flutter/material.dart';
import 'package:listinha/src/shared/widgets/user_image_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 28,
              right: 16,
              left: 16,
              bottom: 16,
            ),
            child: Text(
              'Opções',
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          NavigationDrawerDestination(
            icon: const Icon(Icons.sync),
            label: Row(
              children: const [
                Text('Sincronizar'),
                Text('12/12/2012 às 22:11'),
              ],
            ),
          ),
          const NavigationDrawerDestination(
            icon: Icon(Icons.settings),
            label: Text('Configurações'),
          )
        ],
      ),
      appBar: AppBar(
        title: const Text('Listinha'),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 8),
            child: UserImageButton(),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: SegmentedButton<int>(
                segments: const [
                  ButtonSegment(value: 0, label: Text('Todos')),
                  ButtonSegment(value: 1, label: Text('Pendentes')),
                  ButtonSegment(value: 2, label: Text('Concluídas')),
                  ButtonSegment(value: 3, label: Text('Desativadas')),
                ],
                selected: const {0},
                onSelectionChanged: (values) {},
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: const Icon(Icons.edit),
        label: const Text('Nova Lista'),
        onPressed: () {},
      ),
    );
  }
}
