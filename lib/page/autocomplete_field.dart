import 'package:flutter/material.dart';
import 'package:simple_autocomplete_formfield/simple_autocomplete_formfield.dart';

final people = <Person>[Person('Alice', '123 Main'), Person('Bob', '456 Main')];
final letters = 'abcdefghijklmnopqrstuvwxyz'.split('');

class _autocomplete_textfieldState extends State<autocomplete_textfield> {
  String? selectedLetter;
  Person? selectedPerson;

  final formKey = GlobalKey<FormState>();

  bool autovalidate = false;

  @override
  Widget build(BuildContext context) => Scaffold(
      // appBar: AppBar(title: Text('')),
      body: Builder(
        builder: (context) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: formKey,
            autovalidateMode: autovalidate ? AutovalidateMode.always : AutovalidateMode.disabled,
            child: ListView(children: <Widget>[
              // const SizedBox(height: 16.0),
              // Text('Selected person: "$selectedPerson"'),
              // Text('Selected letter: "$selectedLetter"'),
              // const SizedBox(height: 16.0),
              SimpleAutocompleteFormField<Person>(
                decoration: const InputDecoration(labelText: 'Person', border: OutlineInputBorder()),
                suggestionsHeight: 80.0,
                itemBuilder: (context, person) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Text(person!.name, style: const TextStyle(fontWeight: FontWeight.bold)),
                    Text(person.address)
                  ]),
                ),
                onSearch: (search) async => people
                    .where((person) =>
                        person.name.toLowerCase().contains(search.toLowerCase()) ||
                        person.address.toLowerCase().contains(search.toLowerCase()))
                    .toList(),
                itemFromString: (string) {
                  final matches = people.where((person) => person.name.toLowerCase() == string.toLowerCase());
                  return matches.isEmpty ? null : matches.first;
                },
                onChanged: (value) => setState(() => selectedPerson = value),
                onSaved: (value) => setState(() => selectedPerson = value),
                validator: (person) => person == null ? 'Invalid person.' : null,
              ),
              const SizedBox(height: 16.0),
              SimpleAutocompleteFormField<String>(
                decoration: const InputDecoration(labelText: 'Letter', border: OutlineInputBorder()),
              //   // suggestionsHeight: 200.0,
                maxSuggestions: 10,
                itemBuilder: (context, item) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(item!),
                ),
                onSearch: (String search) async => search.isEmpty
                    ? letters
                    : letters.where((letter) => search.toLowerCase().contains(letter)).toList(),
                itemFromString: (string) =>
                    letters.singleWhere((letter) => letter == string.toLowerCase(), orElse: () => ''),
                onChanged: (value) => setState(() => selectedLetter = value),
                onSaved: (value) => setState(() => selectedLetter = value),
                validator: (letter) => letter == null ? 'Invalid letter.' : null,
              ),
              const SizedBox(height: 16.0),
              // ElevatedButton(
              //     child: const Text('Submit'),
              //     onPressed: () {
              //       if (formKey.currentState?.validate() ?? false) {
              //         formKey.currentState!.save();
              //         ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Fields valid!')));
              //       } else {
              //         ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Fix errors to continue.')));
              //         setState(() => autovalidate = true);
              //       }
              //     }),
              const SizedBox(height: 16.0),
              
            ]),
          ),
        ),
      ));
}

class Person {
  Person(this.name, this.address);
  final String name, address;
  @override
  String toString() => name;
}

// void main() => runApp(MyApp());
// const title = 'simple_autocomplete_formfield example';

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       title: title,
//       home: MyHomePage(),
//     );
//   }
// }

class autocomplete_textfield extends StatefulWidget {
  const autocomplete_textfield({super.key});

  @override
  _autocomplete_textfieldState createState() => _autocomplete_textfieldState();
}