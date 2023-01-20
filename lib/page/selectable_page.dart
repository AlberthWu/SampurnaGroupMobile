// ignore_for_file: library_private_types_in_public_api

import 'package:sampurnagroupmobile/models/country.dart';
import 'package:sampurnagroupmobile/screens/root_page.dart';
import 'package:sampurnagroupmobile/utils.dart';
import 'package:sampurnagroupmobile/widget/flag_widget.dart';
import 'package:sampurnagroupmobile/widget/scrollable_widget.dart';

import 'package:flutter/material.dart';

class SelectablePage extends StatefulWidget {
  const SelectablePage({super.key});

  @override
  _SelectablePageState createState() => _SelectablePageState();
}

class _SelectablePageState extends State<SelectablePage> {
  List<Country> countries = [];
  List<Country> selectedCountries = [];

  @override
  void initState() {
    super.initState();

    init();
  }

  Future init() async {
    final countries = await Utils.loadCountries();

    setState(() => this.countries = countries);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.white,
      elevation: 0.0,
      centerTitle: true,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: Color.fromARGB(255, 41, 48, 110)),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const RootPage())
          );
        },
      ),
      title: const Text('Order',
          style: TextStyle(
              fontFamily: 'Nexa',
              fontSize: 20.0,
              color: Color.fromARGB(255, 41, 48, 110))),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.search_outlined, color: Color.fromARGB(255, 41, 48, 110)),
          onPressed: () {},
        ),
      ],
    ),
        body: countries.isEmpty
            ? const Center(child: CircularProgressIndicator())
            : Column(
                children: [
                  Expanded(child: ScrollableWidget(child: buildDataTable())),
                  buildSubmit(),
                ],
              ),
      );

  Widget buildDataTable() {
    final columns = ['Flag', 'Name', 'Native Name'];

    return DataTable(
      onSelectAll: (isSelectedAll) {
        setState(() => selectedCountries = isSelectedAll! ? countries : []);

        Utils.showSnackBar(context, 'All Selected: $isSelectedAll');
      },
      columns: getColumns(columns),
      rows: getRows(countries),
    );
  }

  List<DataColumn> getColumns(List<String> columns) => columns
      .map((String column) => DataColumn(
            label: Text(column),
          ))
      .toList();

  List<DataRow> getRows(List<Country> countries) => countries
      .map((Country country) => DataRow(
            selected: selectedCountries.contains(country),
            onSelectChanged: (isSelected) => setState(() {
              final isAdding = isSelected != null && isSelected;

              isAdding
                  ? selectedCountries.add(country)
                  : selectedCountries.remove(country);
            }),
            cells: [
              DataCell(FlagWidget(code: country.code)),
              DataCell(SizedBox(
                width: 100,
                child: Text(country.name),
              )),
              DataCell(SizedBox(
                width: 100,
                child: Text(country.nativeName),
              )),
            ],
          ))
      .toList();

  Widget buildSubmit() => Container(
        width: double.infinity,
        padding: const EdgeInsets.all(12),
        color: Colors.white,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: const StadiumBorder(),
            minimumSize: const Size.fromHeight(40),
          ),
          child: Text('Select ${selectedCountries.length} Countries'),
          onPressed: () {
            final names =
                selectedCountries.map((country) => country.name).join(', ');

            Utils.showSnackBar(context, 'Selected countries: $names');
          },
        ),
      );
}
