import 'package:autocomplete_textfield/autocomplete_textfield.dart';
import 'package:flutter/material.dart';

class MyHomePage1 extends StatefulWidget {
  const MyHomePage1({super.key});

  @override
  State<StatefulWidget> createState() => _MyHomePageState1();
}

class _MyHomePageState1 extends State<MyHomePage1> {
  List<Widget> pages = [AutoComplete()];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
    );
  }
}

class AutoComplete extends StatefulWidget {
  @override
  _AutoCompleteState createState() => _AutoCompleteState();
}

class _AutoCompleteState extends State<AutoComplete> {
  List<String> added = [];
  String currentText = "";
  GlobalKey<AutoCompleteTextFieldState<String>> key = GlobalKey();

  _AutoCompleteState() {
    textField = SimpleAutoCompleteTextField(
      key: key,
      decoration: const InputDecoration(errorText: "Beans"),
      controller: TextEditingController(text: "Starting Text"),
      suggestions: suggestions,
      textChanged: (text) => currentText = text,
      clearOnSubmit: true,
      textSubmitted: (text) => setState(() {
        if (text != "") {
          added.add(text);
        }
      }),
    );
  }

  List<String> suggestions = [
    "Apple",
    "Armidillo",
    "Actual",
    "Actuary",
    "America",
    "Argentina",
    "Australia",
    "Antarctica",
    "Blueberry",
    "Cheese",
    "Danish",
    "Eclair",
    "Fudge",
    "Granola",
    "Hazelnut",
    "Ice Cream",
    "Jely",
    "Kiwi Fruit",
    "Lamb",
    "Macadamia",
    "Nachos",
    "Oatmeal",
    "Palm Oil",
    "Quail",
    "Rabbit",
    "Salad",
    "T-Bone Steak",
    "Urid Dal",
    "Vanilla",
    "Waffles",
    "Yam",
    "Zest"
  ];

  SimpleAutoCompleteTextField? textField;
  bool showWhichErrorText = false;

  @override
  Widget build(BuildContext context) {
    Column body = Column(children: [
      ListTile(
          title: textField,
          trailing: IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {
                textField!.triggerSubmitted();
                showWhichErrorText = !showWhichErrorText;
                textField!.updateDecoration(
                    decoration: InputDecoration(
                        errorText: showWhichErrorText ? "Beans" : "Tomatoes"));
              })),
    ]);

    body.children.addAll(added.map((item) {
      return ListTile(title: Text(item));
    }));

    return Scaffold(
      appBar:
          AppBar(title: const Text('AutoComplete TextField Demo Simple'), actions: [
        IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () => showDialog(
                builder: (_) {
                  String text = "";

                  return AlertDialog(
                      title: const Text("Change Suggestions"),
                      content: TextField(onChanged: (text) => text = text),
                      actions: [
                        TextButton(
                            onPressed: () {
                              if (text != "") {
                                suggestions.add(text);
                                textField!.updateSuggestions(suggestions);
                              }
                              Navigator.pop(context);
                            },
                            child: const Text("Add")),
                      ]);
                },
                context: context))
      ]),
      body: body,
    );
  }
}