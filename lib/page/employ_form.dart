import 'package:flutter/material.dart';
import 'package:sampurnagroupmobile/page/details.dart';

class FormEmploy extends StatefulWidget {
  const FormEmploy({Key? key}) : super(key: key);

  @override
  State<FormEmploy> createState() => _FormEmployState();
  
}

class _FormEmployState extends State<FormEmploy> {

  _FormEmployState(){
    _selectedVal = _groupList[0];
  }

  //Variables
  final formKey = GlobalKey<FormState>();
  final controllerCity = TextEditingController();
  final _informasiKaryawanController = TextEditingController();
  final _informasiNIKController = TextEditingController();
  final _informasiAliasController = TextEditingController();


  final _groupList = ["PT. Alam Sampurna Makmur", "PT. Niaga Citra Abadi", "PT. Sampurna Makmur Sejahtera"];
  String? _selectedVal = " ";
  String? selectedCity;

  @override
  void dispose() {
    _informasiKaryawanController.dispose();
    _informasiNIKController.dispose();
    _informasiAliasController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 174, 0, 0),
        title: const Text("Informasi Karyawan"),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            MyTextField(
              myController: _informasiKaryawanController, 
              fieldName: "Nama Lengkap",
              myIcon: Icons.people_alt_outlined,
              prefixIconColor: const Color.fromARGB(255, 174, 0, 0),
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _informasiNIKController, 
              fieldName: "NIK",
              myIcon: Icons.people_alt_outlined,
              prefixIconColor: const Color.fromARGB(255, 174, 0, 0),
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _informasiAliasController, 
              fieldName: "Alias",
              myIcon: Icons.people_alt_outlined,
              prefixIconColor: const Color.fromARGB(255, 174, 0, 0),
            ),
            const SizedBox(height: 10.0),
            DropdownButtonFormField(
              value: _selectedVal,
              items: _groupList.map(
                (e) => DropdownMenuItem(child: Text(e), value: e,)
              ).toList(),
              onChanged: (val) {
                setState(() {
                  _selectedVal = val as String;
                });
              },
              icon: const Icon(
                Icons.arrow_drop_down_circle_outlined,
                color: const Color.fromARGB(255, 174, 0, 0),  
              ),
              dropdownColor: const Color.fromARGB(255, 255, 255, 255),
              decoration: const InputDecoration(
                labelText: "Grup Perusahaan",
                prefixIcon: Icon(
                  Icons.group_add_outlined,
                  color: Color.fromARGB(255, 174, 0, 0),
                ),
                border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color.fromARGB(255, 214, 137, 0)),
                ),
              ),
            ),
            const SizedBox(height: 10.0),
            //Submit Button
            myBtn(context),
          ],
        ),
      )
    );
  }
  
  OutlinedButton myBtn(BuildContext context) {
    return OutlinedButton(
        style: OutlinedButton.styleFrom(minimumSize: const Size(200, 50)),
        onPressed: () {
          Navigator.push(
            context, 
            MaterialPageRoute(
              builder: (context){
              return Details(informasiKaryawan: _informasiKaryawanController.text, informasiNIK: _informasiNIKController.text, informasiAlias: _informasiAliasController.text);
              },
            ),
          );
        },
        child: Text(
          "Submit Form",
          style: TextStyle(
            color: const Color.fromARGB(255, 174, 0, 0),
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      );
  }
}

//Custom Stateless Widget Class that helps re-usability
class MyTextField extends StatelessWidget {
  const MyTextField({
    Key? key,
    required this.fieldName,
    required this.myController,
    this.myIcon = Icons.people_alt_outlined,
    this.prefixIconColor = const Color.fromARGB(255, 187, 187, 187), 
  }) : super(key: key);

  final TextEditingController myController;
  final String fieldName;
  final IconData myIcon;
  final Color prefixIconColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: myController,
      decoration: InputDecoration(
        labelText: fieldName,
        prefixIcon: Icon(myIcon, color: prefixIconColor),
        border: const OutlineInputBorder(),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color.fromARGB(255, 214, 137, 0)),
      ),
      labelStyle: const TextStyle(color: Color.fromARGB(255, 174, 0, 0)),
    ));
  }

}