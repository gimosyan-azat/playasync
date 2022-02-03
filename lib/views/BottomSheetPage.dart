import 'package:flutter/material.dart';

class BottomSheetPage extends StatefulWidget {
  const BottomSheetPage({Key? key}) : super(key: key);

  @override
  State<BottomSheetPage> createState() => _BottomSheetPageState();
}

class _BottomSheetPageState extends State<BottomSheetPage> {
  String selectedItem = 'none';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            child: const Text('Choose a song'),
            onPressed: () => _onButtonPressed(),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            selectedItem,
            style: const TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }

  void _onButtonPressed() {
    showModalBottomSheet(
        context: context,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10))),
        builder: (context) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                leading: const Icon(Icons.play_arrow),
                title: const Text('Rock Beliver'),
                subtitle: const Text('Scorpions'),
                onTap: () => _selectItem('Scorpions - Rock Beliver'),
              ),
              ListTile(
                leading: const Icon(Icons.play_arrow),
                title: const Text('Зима в сердце'),
                subtitle: const Text('Моя Мишель'),
                onTap: () => _selectItem('Моя Мишель - Зима в сердце'),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          );
        });
  }

  _selectItem(String songName) {
    Navigator.pop(context);
    setState(() {
      selectedItem = songName;
    });
  }
}
