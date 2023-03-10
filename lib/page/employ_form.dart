import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:intl/intl.dart';
import 'package:sampurnagroupmobile/constants.dart';
// import 'package:sampurnagroupmobile/page/autocomplete_field.dart';
import 'package:sampurnagroupmobile/page/details.dart';
// import 'package:sampurnagroupmobile/image_profile/widget/profile_widget.dart';

import 'package:image_picker/image_picker.dart';
import 'package:flutter/services.dart';
import 'dart:io';

enum Fruit { apple, banana }

class FormEmploy extends StatefulWidget {
  const FormEmploy({Key? key}) : super(key: key);

  @override
  State<FormEmploy> createState() => _FormEmployState();
  
}

class _FormEmployState extends State<FormEmploy> {

  File? image;

  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);

      if(image == null) return;

      final imageTemp = File(image.path);

      setState(() => this.image = imageTemp);
    } on PlatformException catch(e) {
      print('Failed to pick image: $e');
    }
  }

  Future pickImageC() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);

      if(image == null) return;

      final imageTemp = File(image.path);

      setState(() => this.image = imageTemp);
    } on PlatformException catch(e) {
      print('Failed to pick image: $e');
    }
  }


  _FormEmployState(){
    
    _selectedVal = _groupList[0];
  }

  //Variables
  final _informasiKaryawanController = TextEditingController();
  final _informasiNIKController = TextEditingController();
  final _informasiAliasController = TextEditingController();
  // InformasiTypeEnum? _informasiTypeEnum;

  final _groupList = ["PT. Alam Sampurna Makmur", "PT. Niaga Citra Abadi", "PT. Sampurna Makmur Sejahtera"];
  String? _selectedVal = " ";
  Fruit? _fruit = Fruit.apple;
  // String? selectedCity;

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
          const SizedBox(height: 30,),
          image != null ? Image.file(image!): const Text('No image selected', textAlign: TextAlign.center,),
          const SizedBox(height: 50,),
            OutlinedButton(
                style: ButtonStyle(
                  side: MaterialStateProperty.all(BorderSide(
                    color: const Color.fromARGB(255, 214, 137, 0),
                    width: 1.0,
                    style: BorderStyle.solid)),
                ),
                child: const Text(
                    "Gallery",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 174, 0, 0), fontWeight: FontWeight.bold
                  )
                ),
                onPressed: () {
                  pickImage();
                },
            ),
            const SizedBox(height: 20,),
            OutlinedButton(
              style: ButtonStyle(
                  side: MaterialStateProperty.all(BorderSide(
                    color: const Color.fromARGB(255, 214, 137, 0),
                    width: 1.0,
                    style: BorderStyle.solid)),
                ),
                child: const Text(
                    "Camera",
                    style: TextStyle(
                        color: const Color.fromARGB(255, 174, 0, 0), fontWeight: FontWeight.bold
                    )
                ),
                onPressed: () {
                  pickImageC();
                }
            ),
            const SizedBox(height: 20,),
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
                (e) => DropdownMenuItem(value: e,child: Text(e),)
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
              labelStyle: TextStyle(color: Colors.black),
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
                  CheckboxListTile(
                    title: const Text('Menikah'),
                    value: timeDilation !=0.5,
                    onChanged: (bool? value) {
                      setState(() {
                        timeDilation = value! ? 1.0 : 0.5;
                      });
                    },
                    activeColor: Constants.primaryColor,
                    secondary: const Icon(
                        Icons.family_restroom_outlined,
                        color: Color.fromARGB(255, 174, 0, 0),
                      ),
                      checkColor: Colors.white,
                  ),
                  const SizedBox(height: 5.0),
                  RadioListTile<Fruit>(
                    title: const Text('Aktif'),
                    value: Fruit.apple,
                    groupValue: _fruit,
                    onChanged: (Fruit? value) {
                      setState(() {
                        _fruit = value;
                      });
                    },
                    activeColor: Constants.primaryColor,
                  ),
                  // RadioListTile<Fruit>(
                  //   title: const Text('Tidak'),
                  //   value: Fruit.banana,
                  //   groupValue: _fruit,
                  //   onChanged: (Fruit? value) {
                  //     setState(() {
                  //       _fruit = value;
                  //     });
                  //   },
                  //   activeColor: Constants.primaryColor,
                  // ),
                  const SizedBox(height: 5.0),
                  Autocomplete(
                    optionsBuilder: (
                      TextEditingValue textEditingValue) {
                        if (textEditingValue.text == '') {
                          return ['PT. Alam Sampurna Makmur', 'PT. Niaga Citra Abadi', 'PT. Sampurna Makmur Sejahtera'];
                        }
                        return ['PT. Alam Sampurna Makmur', 'PT. Niaga Citra Abadi', 'PT. Sampurna Makmur Sejahtera']
                            .where((String option) {
                          return option
                              .toString()
                              .contains(textEditingValue.text.toLowerCase());
                        });
                      },
                      onSelected: (option) {
                        print(option);
                      },
                  ),
                  const SizedBox(height: 10.0),
                  // Row(
                  //   children: [
                  //     MyRadioButton(
                  //       title: InformasiTypeEnum.Aktif.name, 
                  //       value: InformasiTypeEnum.Aktif, 
                  //       informasiTypeEnum: _informasiTypeEnum, 
                  //       onChanged: (val){
                  //         setState(() {
                  //           _informasiTypeEnum = val;
                  //         });
                  //       }),
                  //     const SizedBox(width: 5.0,),
                  //     Expanded(
                  //       child: RadioListTile<InformasiTypeEnum>(
                  //         contentPadding: const EdgeInsets.all(0.0),
                  //           shape: RoundedRectangleBorder(
                  //           borderRadius: BorderRadius.circular(5.0),
                  //         ),
                  //         value: InformasiTypeEnum.Tidak, 
                  //         groupValue: _informasiTypeEnum, 
                  //         title: Text(InformasiTypeEnum.Tidak.name),
                  //         onChanged: (InformasiTypeEnum? val){
                  //           setState(() {
                  //             _informasiTypeEnum = val;
                  //           });
                  //         },
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  const SizedBox(height: 10.0),
                  MyDateTime(),
                  const SizedBox(height: 10.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Enter your username',
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  //Submit Button
                  myBtn(context),
                ],
              ),  
  ));
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
        child: const Text(
          "Submit Form",
          style: TextStyle(
            color: Color.fromARGB(255, 174, 0, 0),
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
      labelStyle: const TextStyle(color: Colors.black),
    ));
  }
}

//Custom Date Time Picker
class MyDateTime extends StatefulWidget {
  MyDateTime({Key? key}) : super(key: key);

  @override
  _MyDateTimeState createState() => _MyDateTimeState();
}

class _MyDateTimeState extends State<MyDateTime> {
  // GlobalKey<FormState> _oFormKey = GlobalKey<FormState>();
  late TextEditingController _controller1;

  //String _initialValue = '';
  String _valueChanged1 = '';
  String _valueToValidate1 = '';
  String _valueSaved1 = '';

  @override
  void initState() {
    super.initState();
    Intl.defaultLocale = 'pt_BR';
    //_initialValue = DateTime.now().toString();
    _controller1 = TextEditingController(text: DateTime.now().toString());

    String isHour = TimeOfDay.now().hour.toString().padLeft(2, '0');
    String isMinute = TimeOfDay.now().minute.toString().padLeft(2, '0');

    _getValue();
  }

  Future<void> _getValue() async {
    await Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        //_initialValue = '2000-10-22 14:30';
        _controller1.text = '2000-09-20 14:30';
      });
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return DateTimePicker(
      type: DateTimePickerType.dateTimeSeparate,
      dateMask: 'd MMM, yyyy',
      controller: _controller1,
      //initialValue: _initialValue,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
      icon: const Icon(Icons.event, color: Color.fromARGB(255, 174, 0, 0)),
      dateLabelText: 'Tanggal',
      timeLabelText: "Waktu",
      locale: const Locale('en', 'US'),
      //use24HourFormat: false,
      //locale: Locale('pt', 'BR'),
      selectableDayPredicate: (date) {
        if (date.weekday == 6 || date.weekday == 7) {
          return false;
        }
        return true;
      },
      onChanged: (val) => setState(() => _valueChanged1 = val),
      validator: (val) {
        setState(() => _valueToValidate1 = val ?? '');
        return null;
      },
      onSaved: (val) => setState(() => _valueSaved1 = val ?? ''),
    );
  }
}