import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreend extends StatelessWidget {

  static const String name = 'buttons_screen';

  const ButtonsScreend({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons Screeend'),
      ),
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back_ios_new_outlined),
        onPressed: (){
          context.pop();
        },
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
        child: Wrap(
          alignment: WrapAlignment.center,
          spacing: 10,
          children: [
            ElevatedButton(onPressed: (){}, child: const Text('Elevated')),
            const ElevatedButton(onPressed: null, child: Text('Elevated Disabled')),
            ElevatedButton.icon(onPressed: (){}, icon: const Icon(Icons.abc_outlined), label: const Text('Elevated Icon')),
            FilledButton(onPressed: (){}, child: const Text('Filled')),
            const FilledButton(onPressed: null, child: Text('Filled Disabled')),
            FilledButton.icon(onPressed: (){}, icon: const Icon(Icons.ac_unit), label: const Text('Filled Icon'),),
            OutlinedButton(onPressed: (){}, child: const Text('Outlined Buttons')),
            const OutlinedButton(onPressed: null, child: Text('Outlined Disabled')),
            OutlinedButton.icon(onPressed: (){}, icon: const Icon(Icons.ac_unit_outlined), label: const Text('Outline Icon')),
            TextButton(onPressed: (){}, child: const Text('Text Buttons')),
            const TextButton(onPressed: null, child: Text('Text Buttons Disabled')),
            TextButton.icon(onPressed: (){}, icon: const Icon(Icons.ac_unit_sharp), label: const Text('Text Butons Icons')),
            IconButton(onPressed: (){}, icon: const Icon(Icons.abc_outlined)),
            IconButton(onPressed: (){}, icon: const Icon(Icons.abc_outlined), style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(colors.primary),
              iconColor: const MaterialStatePropertyAll(Colors.white),
              )
            ),
            const CustomButtons(),
          ],
        ),
      ),
    );
  }
}

class CustomButtons extends StatelessWidget {
  const CustomButtons({super.key});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: (){},
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('Hola mundo', style: TextStyle(color: Colors.white ),),
          ),
        ),
      ),
    );
  }
}